.class public Lcom/android/settings_ex/ApplicationsSettings$AppSettingsPreference;
.super Landroid/preference/Preference;
.source "ApplicationsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ApplicationsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppSettingsPreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ApplicationsSettings;

.field public userHandle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/ApplicationsSettings;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/settings_ex/ApplicationsSettings$AppSettingsPreference;->this$0:Lcom/android/settings_ex/ApplicationsSettings;

    .line 182
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/ApplicationsSettings$AppSettingsPreference;->userHandle:Ljava/util/ArrayList;

    .line 183
    const v0, 0x7f04021d

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ApplicationsSettings$AppSettingsPreference;->setLayoutResource(I)V

    .line 184
    invoke-virtual {p0, p3}, Lcom/android/settings_ex/ApplicationsSettings$AppSettingsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 185
    invoke-virtual {p0, p4}, Lcom/android/settings_ex/ApplicationsSettings$AppSettingsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 186
    invoke-direct {p0, p2}, Lcom/android/settings_ex/ApplicationsSettings$AppSettingsPreference;->init(Landroid/content/Context;)V

    .line 187
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    new-instance v0, Lcom/android/settings_ex/ApplicationsSettings$AppSettingsPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ApplicationsSettings$AppSettingsPreference$1;-><init>(Lcom/android/settings_ex/ApplicationsSettings$AppSettingsPreference;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ApplicationsSettings$AppSettingsPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 212
    return-void
.end method
