.class public interface abstract Lcom/android/nfc/DeviceHost$SecureElementListener;
.super Ljava/lang/Object;
.source "DeviceHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/DeviceHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SecureElementListener"
.end annotation


# virtual methods
.method public abstract onAidRoutingTableFull()V
.end method

.method public abstract onCardEmulationAidSelected([B[BI)V
.end method

.method public abstract onCardEmulationAidSelected4Google([B)V
.end method

.method public abstract onCardEmulationDeselected()V
.end method

.method public abstract onConnectivityEvent(I)V
.end method

.method public abstract onRemoteFieldActivated()V
.end method

.method public abstract onRemoteFieldDeactivated()V
.end method

.method public abstract onSeApduReceived([B)V
.end method

.method public abstract onSeEmvCardRemoval()V
.end method

.method public abstract onSeListenActivated()V
.end method

.method public abstract onSeListenDeactivated()V
.end method

.method public abstract onSeMifareAccess([B)V
.end method
