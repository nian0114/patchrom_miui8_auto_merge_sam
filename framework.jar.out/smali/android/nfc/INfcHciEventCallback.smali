.class public interface abstract Landroid/nfc/INfcHciEventCallback;
.super Ljava/lang/Object;
.source "INfcHciEventCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcHciEventCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onHciEvtTrasactionDetected(Landroid/content/Intent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
