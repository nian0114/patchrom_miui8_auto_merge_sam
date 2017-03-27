.class Lcom/android/settings/wifi/mobileap/WifiApQrCode$4;
.super Ljava/lang/Object;
.source "WifiApQrCode.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/mobileap/WifiApQrCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApQrCode;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApQrCode;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApQrCode$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 171
    const-string v0, "WifiApQrCode"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApQrCode$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {p2}, Lcom/samsung/android/app/qragent/service/IQRService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/qragent/service/IQRService;

    move-result-object v1

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApQrCode;->mBinder:Lcom/samsung/android/app/qragent/service/IQRService;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApQrCode;->access$102(Lcom/android/settings/wifi/mobileap/WifiApQrCode;Lcom/samsung/android/app/qragent/service/IQRService;)Lcom/samsung/android/app/qragent/service/IQRService;

    .line 173
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApQrCode$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApQrCode;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApQrCode;->mQrBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApQrCode;->access$200(Lcom/android/settings/wifi/mobileap/WifiApQrCode;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApQrCode$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApQrCode;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApQrCode;->mQrCode:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApQrCode;->access$300(Lcom/android/settings/wifi/mobileap/WifiApQrCode;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApQrCode$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApQrCode;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApQrCode$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApQrCode;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApQrCode$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApQrCode;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApQrCode;->mQrCode:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApQrCode;->access$300(Lcom/android/settings/wifi/mobileap/WifiApQrCode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApQrCode;->generateQrCode(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApQrCode;->mQrBmp:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApQrCode;->access$202(Lcom/android/settings/wifi/mobileap/WifiApQrCode;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 175
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApQrCode$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApQrCode;->imageTime:J
    invoke-static {v0, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApQrCode;->access$402(Lcom/android/settings/wifi/mobileap/WifiApQrCode;J)J

    .line 176
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApQrCode$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApQrCode;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApQrCode$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApQrCode;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApQrCode;->enabled:Z
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApQrCode;->access$500(Lcom/android/settings/wifi/mobileap/WifiApQrCode;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApQrCode;->updateView(Z)V

    .line 178
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 182
    const-string v0, "WifiApQrCode"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApQrCode$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApQrCode;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApQrCode;->mBinder:Lcom/samsung/android/app/qragent/service/IQRService;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApQrCode;->access$102(Lcom/android/settings/wifi/mobileap/WifiApQrCode;Lcom/samsung/android/app/qragent/service/IQRService;)Lcom/samsung/android/app/qragent/service/IQRService;

    .line 184
    return-void
.end method
