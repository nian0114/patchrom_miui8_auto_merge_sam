.class Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$6;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->addQrCodePreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;)V
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->showQrCodeGenerated()V

    .line 641
    const/4 v0, 0x1

    return v0
.end method
