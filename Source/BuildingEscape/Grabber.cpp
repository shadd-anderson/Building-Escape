// Fill out your copyright notice in the Description page of Project Settings.

#include "BuildingEscape.h"
#include "Grabber.h"

#define OUT

// Sets default values for this component's properties
UGrabber::UGrabber()
{
	// Set this component to be initialized when the game starts, and to be ticked every frame.  You can turn these features
	// off to improve performance if you don't need them.
	PrimaryComponentTick.bCanEverTick = true;

	// ...
}


// Called when the game starts
void UGrabber::BeginPlay()
{
	Super::BeginPlay();
    FindPhysicsHandleComponent();
    SetupInputComponent();
}

void UGrabber::SetupInputComponent() {
    InputComponent = GetOwner()->FindComponentByClass<UInputComponent>();
    if(InputComponent) {
        InputComponent->BindAction("Grab", IE_Pressed, this, &UGrabber::Grab);
        InputComponent->BindAction("Grab", IE_Released, this, &UGrabber::Release);
    } else {
        UE_LOG(LogTemp, Error, TEXT("No InputComponent found on %s"), *(GetOwner()->GetName()))
    }
}

void UGrabber::FindPhysicsHandleComponent() {
    PhysicsHandle = GetOwner()->FindComponentByClass<UPhysicsHandleComponent>();
    if(PhysicsHandle == nullptr) {
        FString Name = GetOwner()->GetName();
        UE_LOG(LogTemp, Error, TEXT("No PhysicsHandleComponent found on %s"), *Name)
    }
}


// Called every frame
void UGrabber::TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction)
{
	Super::TickComponent(DeltaTime, TickType, ThisTickFunction);
    FVector LineTraceEnd = GetReachLineEnd();
    if(PhysicsHandle->GrabbedComponent) {
        PhysicsHandle->SetTargetLocation(LineTraceEnd);
    }
}

FVector UGrabber::GetReachLineEnd() const {
    FVector PlayerViewPointLocation;
    FRotator PlayerViewPointRotation;
    GetWorld()->GetFirstPlayerController()->GetPlayerViewPoint(OUT PlayerViewPointLocation, OUT PlayerViewPointRotation);
    return PlayerViewPointLocation + (PlayerViewPointRotation.Vector() * Reach);
}

void UGrabber::Grab() {
    UE_LOG(LogTemp, Warning, TEXT("Grab pressed"))

    FHitResult Hit = GetFirstPhysicsBodyInReach();
    auto ComponentToGrab = Hit.GetComponent();
    auto ActorHit = Hit.GetActor();

    if(ActorHit) {
        PhysicsHandle->GrabComponentAtLocationWithRotation(
                ComponentToGrab,
                NAME_None,
                ComponentToGrab->GetOwner()->GetActorLocation(),
                ComponentToGrab->GetOwner()->GetActorRotation());
    }
}

void UGrabber::Release() {
    UE_LOG(LogTemp, Warning, TEXT("Grab released"))
    PhysicsHandle->ReleaseComponent();
}

FHitResult UGrabber::GetFirstPhysicsBodyInReach() const {
    FVector PlayerViewPointLocation = GetReachLineStart();
    FVector LineTraceEnd = GetReachLineEnd();

    FCollisionQueryParams TraceParameters(FName(TEXT("")), false, GetOwner());

    FHitResult Hit;
    GetWorld()->LineTraceSingleByObjectType(
            OUT Hit,
            PlayerViewPointLocation,
            LineTraceEnd,
            FCollisionObjectQueryParams(ECollisionChannel::ECC_PhysicsBody),
            TraceParameters
    );

    AActor* ActorHit = Hit.GetActor();
    if (ActorHit) {
        UE_LOG(LogTemp, Warning, TEXT("Hit %s"), *(ActorHit->GetName()));
    }

    return Hit;
}

FVector UGrabber::GetReachLineStart() const {
    FVector PlayerViewPointLocation;
    FRotator PlayerViewPointRotation;
    GetWorld()->GetFirstPlayerController()->GetPlayerViewPoint(OUT PlayerViewPointLocation, OUT
                                                               PlayerViewPointRotation);
    return PlayerViewPointLocation;
}