.class Lcom/android/settings_ex/wifi/WifiConfigController$IpAddressTextWatcher$1;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiConfigController$IpAddressTextWatcher;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/wifi/WifiConfigController$IpAddressTextWatcher;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiConfigController$IpAddressTextWatcher;)V
    .locals 0

    .prologue
    .line 3444
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiConfigController$IpAddressTextWatcher$1;->this$1:Lcom/android/settings_ex/wifi/WifiConfigController$IpAddressTextWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3446
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiConfigController$IpAddressTextWatcher$1;->this$1:Lcom/android/settings_ex/wifi/WifiConfigController$IpAddressTextWatcher;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiConfigController$IpAddressTextWatcher;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 3447
    return-void
.end method
