.class public interface abstract Lcom/android/settings_exlib/bluetooth/Utils$ErrorListener;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/bluetooth/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ErrorListener"
.end annotation


# virtual methods
.method public abstract onShowError(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract onShowError(Landroid/content/Context;Ljava/lang/String;I)V
.end method

.method public abstract showConnectingError(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract showPANConnectingError(Landroid/content/Context;Ljava/lang/String;)V
.end method
