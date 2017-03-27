.class Lcom/android/settings_ex/notification/ManagedServiceSettings$NotiAccessSettingsPreference;
.super Landroid/preference/SwitchPreference;
.source "ManagedServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/ManagedServiceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotiAccessSettingsPreference"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 207
    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 208
    const v0, 0x7f04021d

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/ManagedServiceSettings$NotiAccessSettingsPreference;->setLayoutResource(I)V

    .line 209
    return-void
.end method
