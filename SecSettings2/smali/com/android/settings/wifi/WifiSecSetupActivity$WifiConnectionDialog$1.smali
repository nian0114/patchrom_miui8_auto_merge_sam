.class final Lcom/android/settings_ex/wifi/WifiSecSetupActivity$WifiConnectionDialog$1;
.super Ljava/lang/Object;
.source "WifiSecSetupActivity.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiSecSetupActivity$WifiConnectionDialog;->forget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 1251
    const-string v0, "WifiSecSetupActivity"

    const-string v1, "mForgetListener - onFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 1248
    const-string v0, "WifiSecSetupActivity"

    const-string v1, "mForgetListener - onSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    return-void
.end method
