.class Lcom/android/settings_ex/ApnSettings$5;
.super Landroid/telephony/PhoneStateListener;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ApnSettings;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/settings_ex/ApnSettings$5;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 252
    if-nez p1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings$5;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings$5;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method
