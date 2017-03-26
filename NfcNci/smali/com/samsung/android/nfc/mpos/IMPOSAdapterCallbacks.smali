.class public interface abstract Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;
.super Ljava/lang/Object;
.source "IMPOSAdapterCallbacks.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks$Stub;
    }
.end annotation


# virtual methods
.method public abstract onErrorNotified(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onHciEvtTrasactionDetected(Landroid/content/Intent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
