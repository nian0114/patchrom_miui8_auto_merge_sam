.class public interface abstract Lcom/samsung/android/nfc/mpos/MPOSAdapter$Callbacks;
.super Ljava/lang/Object;
.source "MPOSAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/nfc/mpos/MPOSAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract onErrorNotified(I)V
.end method

.method public abstract onHciEvtTrasactionDetected(Landroid/content/Intent;)V
.end method
