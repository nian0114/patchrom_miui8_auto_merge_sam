.class final Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;
.super Ljava/lang/Object;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UpgradeController"
.end annotation


# instance fields
.field private final mUserId:I

.field final synthetic this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;


# direct methods
.method public constructor <init>(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;I)V
    .locals 0
    .param p2, "userId"    # I

    .prologue
    .line 2067
    iput-object p1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2068
    iput p2, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->mUserId:I

    .line 2069
    return-void
.end method

.method private getGlobalSettingsLocked()Lcom/android/providers/settings/SettingsState;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2122
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {v0, v1, v1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v0

    return-object v0
.end method

.method private getSecureSettingsLocked(I)Lcom/android/providers/settings/SettingsState;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 2126
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v0

    return-object v0
.end method

.method private getSystemSettingsLocked(I)Lcom/android/providers/settings/SettingsState;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 2130
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v0

    return-object v0
.end method

.method private onUpgradeLocked(III)I
    .locals 10
    .param p1, "userId"    # I
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 2164
    move v1, p2

    .line 2167
    .local v1, "currentVersion":I
    const/16 v7, 0x76

    if-ne v1, v7, :cond_1

    .line 2168
    if-nez p1, :cond_0

    .line 2169
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->getGlobalSettingsLocked()Lcom/android/providers/settings/SettingsState;

    .line 2177
    :cond_0
    const/16 v1, 0x77

    .line 2181
    :cond_1
    const/16 v7, 0x77

    if-ne v1, v7, :cond_2

    .line 2182
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->getSecureSettingsLocked(I)Lcom/android/providers/settings/SettingsState;

    move-result-object v5

    .line 2183
    .local v5, "secureSettings":Lcom/android/providers/settings/SettingsState;
    const-string v8, "double_tap_to_wake"

    iget-object v7, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v7, v7, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v7}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f040027

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "1"

    :goto_0
    const-string v9, "android"

    invoke-virtual {v5, v8, v7, v9}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2188
    const/16 v1, 0x78

    .line 2191
    .end local v5    # "secureSettings":Lcom/android/providers/settings/SettingsState;
    :cond_2
    const/16 v7, 0x78

    if-ne v1, v7, :cond_3

    .line 2194
    const/16 v1, 0x79

    .line 2197
    :cond_3
    const/16 v7, 0x79

    if-ne v1, v7, :cond_7

    .line 2201
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->getSecureSettingsLocked(I)Lcom/android/providers/settings/SettingsState;

    move-result-object v5

    .line 2202
    .restart local v5    # "secureSettings":Lcom/android/providers/settings/SettingsState;
    iget-object v7, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v7, v7, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v7}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060014

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2204
    .local v2, "defaultComponent":Ljava/lang/String;
    const-string v7, "nfc_payment_default_component"

    invoke-virtual {v5, v7}, Lcom/android/providers/settings/SettingsState;->getSettingLocked(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v0

    .line 2206
    .local v0, "currentSetting":Lcom/android/providers/settings/SettingsState$Setting;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    if-nez v0, :cond_4

    .line 2208
    const-string v7, "nfc_payment_default_component"

    const-string v8, "android"

    invoke-virtual {v5, v7, v2, v8}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2214
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->getSystemSettingsLocked(I)Lcom/android/providers/settings/SettingsState;

    move-result-object v6

    .line 2215
    .local v6, "systemSettings":Lcom/android/providers/settings/SettingsState;
    const-string v7, "enable_smart_capture"

    const-string v8, "1"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2216
    const-string v7, "nearby_scanning_enabled"

    const-string v8, "1"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2217
    const-string v7, "560,640"

    const-string v8, "NONE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 2218
    const-string v7, "ro.sf.lcd_density"

    const/16 v8, 0xa0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2219
    .local v3, "deviceDensity":I
    const/16 v7, 0x230

    if-ne v3, v7, :cond_9

    .line 2220
    const-string v7, "condensed"

    const-string v8, "1"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2225
    .end local v3    # "deviceDensity":I
    :cond_5
    :goto_1
    const-string v7, "default_vibration_pattern"

    iget-object v8, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v8, v8, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v8}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060010

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2227
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->getGlobalSettingsLocked()Lcom/android/providers/settings/SettingsState;

    move-result-object v4

    .line 2229
    .local v4, "globalSettings":Lcom/android/providers/settings/SettingsState;
    const-string v7, "2016A"

    const-string v8, "ro.build.scafe.version"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2230
    const-string v7, "tap_to_icon"

    const-string v8, "0"

    const-string v9, "android"

    invoke-virtual {v4, v7, v8, v9}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2233
    :cond_6
    const/16 v1, 0x7a

    .line 2238
    .end local v0    # "currentSetting":Lcom/android/providers/settings/SettingsState$Setting;
    .end local v2    # "defaultComponent":Ljava/lang/String;
    .end local v4    # "globalSettings":Lcom/android/providers/settings/SettingsState;
    .end local v5    # "secureSettings":Lcom/android/providers/settings/SettingsState;
    .end local v6    # "systemSettings":Lcom/android/providers/settings/SettingsState;
    :cond_7
    return v1

    .line 2183
    .restart local v5    # "secureSettings":Lcom/android/providers/settings/SettingsState;
    :cond_8
    const-string v7, "0"

    goto/16 :goto_0

    .line 2222
    .restart local v0    # "currentSetting":Lcom/android/providers/settings/SettingsState$Setting;
    .restart local v2    # "defaultComponent":Ljava/lang/String;
    .restart local v3    # "deviceDensity":I
    .restart local v6    # "systemSettings":Lcom/android/providers/settings/SettingsState;
    :cond_9
    const-string v7, "condensed"

    const-string v8, "0"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method


# virtual methods
.method public upgradeIfNeededLocked()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/16 v11, 0x7a

    .line 2073
    iget-object v8, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v9, 0x2

    iget v10, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->mUserId:I

    invoke-virtual {v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v6

    .line 2077
    .local v6, "secureSettings":Lcom/android/providers/settings/SettingsState;
    invoke-virtual {v6}, Lcom/android/providers/settings/SettingsState;->getVersionLocked()I

    move-result v5

    .line 2078
    .local v5, "oldVersion":I
    const/16 v4, 0x7a

    .line 2081
    .local v4, "newVersion":I
    if-ne v5, v11, :cond_0

    .line 2119
    :goto_0
    return-void

    .line 2086
    :cond_0
    iget v8, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->mUserId:I

    invoke-direct {p0, v8, v5, v11}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->onUpgradeLocked(III)I

    move-result v0

    .line 2089
    .local v0, "curVersion":I
    if-eq v0, v11, :cond_1

    .line 2091
    iget-object v8, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget v9, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->mUserId:I

    invoke-virtual {v8, v9, v12}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->removeUserStateLocked(IZ)V

    .line 2094
    new-instance v2, Lcom/android/providers/settings/DatabaseHelper;

    iget-object v8, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v8, v8, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v8}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    iget v9, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->mUserId:I

    invoke-direct {v2, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;-><init>(Landroid/content/Context;I)V

    .line 2095
    .local v2, "dbHelper":Lcom/android/providers/settings/DatabaseHelper;
    invoke-virtual {v2}, Lcom/android/providers/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2096
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2, v1, v11, v0, v5}, Lcom/android/providers/settings/DatabaseHelper;->recreateDatabase(Landroid/database/sqlite/SQLiteDatabase;III)V

    .line 2099
    iget-object v8, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget v9, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->mUserId:I

    # invokes: Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->migrateLegacySettingsForUserLocked(Lcom/android/providers/settings/DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I)V
    invoke-static {v8, v2, v1, v9}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->access$1400(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;Lcom/android/providers/settings/DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 2102
    iget v8, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->mUserId:I

    invoke-direct {p0, v8, v5, v11}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->onUpgradeLocked(III)I

    .line 2106
    .end local v1    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "dbHelper":Lcom/android/providers/settings/DatabaseHelper;
    :cond_1
    iget v8, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->mUserId:I

    if-nez v8, :cond_2

    .line 2107
    iget-object v8, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->mUserId:I

    invoke-virtual {v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v3

    .line 2109
    .local v3, "globalSettings":Lcom/android/providers/settings/SettingsState;
    invoke-virtual {v3, v11}, Lcom/android/providers/settings/SettingsState;->setVersionLocked(I)V

    .line 2113
    .end local v3    # "globalSettings":Lcom/android/providers/settings/SettingsState;
    :cond_2
    invoke-virtual {v6, v11}, Lcom/android/providers/settings/SettingsState;->setVersionLocked(I)V

    .line 2116
    iget-object v8, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget v9, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->mUserId:I

    invoke-virtual {v8, v12, v9}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v7

    .line 2118
    .local v7, "systemSettings":Lcom/android/providers/settings/SettingsState;
    invoke-virtual {v7, v11}, Lcom/android/providers/settings/SettingsState;->setVersionLocked(I)V

    goto :goto_0
.end method
