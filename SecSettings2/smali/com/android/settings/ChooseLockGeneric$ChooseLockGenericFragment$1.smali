.class final Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$1;
.super Lcom/android/settings_ex/search/BaseSearchIndexProvider;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/android/settings_ex/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 292
    move-object v3, p1

    check-cast v3, Landroid/app/Activity;

    iput-object v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$1;->mActivity:Landroid/app/Activity;

    .line 293
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$1;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$1;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 295
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wmanager_connected"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 296
    .local v1, "isWmanagerConnected":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "universal_lock_switch_state"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 299
    .local v0, "isDirectionLockOn":I
    if-nez v1, :cond_0

    .line 300
    const-string v3, "unlock_set_smart"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_0
    if-nez v0, :cond_1

    .line 303
    const-string v3, "unlock_set_universal"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$1;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSmartcardAuthInstalled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 306
    const-string v3, "unlock_set_cac_pin"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_2
    invoke-static {p1}, Lcom/android/settings_ex/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1}, Lcom/android/settings_ex/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p1}, Lcom/android/settings_ex/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 309
    :cond_3
    const-string v3, "unlock_set_fingerprint"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_4
    const-string v3, "unlock_set_enterprise_identity"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    const-string v3, "KEY_SELECTED_TWO_FACTOR_TYPE"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    const-string v3, "KEY_USING_TWO_FACTOR"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    const-string v3, "unlock_set_two_factor"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    invoke-static {p1}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 320
    const-string v3, "unlock_set_pin"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    const-string v3, "unlock_set_password"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    const-string v3, "unlock_set_pattern"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_5
    return-object v2
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 286
    .local v0, "res":Landroid/content/res/Resources;
    return-object v1
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    invoke-static {p1}, Lcom/android/settings_ex/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    const/4 v0, 0x0

    .line 275
    :goto_0
    return-object v0

    .line 265
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/SearchIndexableResource;>;"
    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 268
    .local v1, "sir":Landroid/provider/SearchIndexableResource;
    const-class v2, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 269
    const v2, 0x7f0800ac

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 270
    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    .line 271
    const-string v2, "com.android.settings"

    iput-object v2, v1, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    .line 272
    const-class v2, Lcom/android/settings_ex/ChooseLockGeneric;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/SearchIndexableResource;->intentTargetClass:Ljava/lang/String;

    .line 274
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
