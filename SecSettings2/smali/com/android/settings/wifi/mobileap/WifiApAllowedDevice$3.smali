.class Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDevice$3;
.super Ljava/lang/Object;
.source "WifiApAllowedDevice.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDevice;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDevice;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDevice;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDevice$3;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDevice$3;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDevice;

    invoke-virtual {v0, v1, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDevice;->update(Ljava/lang/String;Ljava/lang/String;)Z

    .line 85
    return-void
.end method
