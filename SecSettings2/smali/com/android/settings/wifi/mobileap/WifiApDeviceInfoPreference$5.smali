.class Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference$5;
.super Ljava/lang/Object;
.source "WifiApDeviceInfoPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference$5;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference$5;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;

    # invokes: Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->changeAllowPolicy()V
    invoke-static {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->access$700(Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;)V

    .line 175
    return-void
.end method
