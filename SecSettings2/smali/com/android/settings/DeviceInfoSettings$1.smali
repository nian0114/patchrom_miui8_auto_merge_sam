.class Lcom/android/settings_ex/DeviceInfoSettings$1;
.super Ljava/lang/Object;
.source "DeviceInfoSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DeviceInfoSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DeviceInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DeviceInfoSettings;)V
    .locals 0

    .prologue
    .line 600
    iput-object p1, p0, Lcom/android/settings_ex/DeviceInfoSettings$1;->this$0:Lcom/android/settings_ex/DeviceInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/settings_ex/DeviceInfoSettings$1;->this$0:Lcom/android/settings_ex/DeviceInfoSettings;

    # invokes: Lcom/android/settings_ex/DeviceInfoSettings;->showNtcApprovalInfo()V
    invoke-static {v0}, Lcom/android/settings_ex/DeviceInfoSettings;->access$400(Lcom/android/settings_ex/DeviceInfoSettings;)V

    .line 605
    const/4 v0, 0x0

    return v0
.end method
