.class public Lcom/android/settings_ex/location/RecentLocationApps;
.super Ljava/lang/Object;
.source "RecentLocationApps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/location/RecentLocationApps$PackageEntryClickedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Lcom/android/settings_ex/SettingsActivity;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/android/settings_ex/location/RecentLocationApps;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/location/RecentLocationApps;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings_ex/SettingsActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/settings_ex/SettingsActivity;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/settings_ex/location/RecentLocationApps;->mActivity:Lcom/android/settings_ex/SettingsActivity;

    .line 58
    invoke-virtual {p1}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/location/RecentLocationApps;)Lcom/android/settings_ex/SettingsActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/location/RecentLocationApps;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings_ex/location/RecentLocationApps;->mActivity:Lcom/android/settings_ex/SettingsActivity;

    return-object v0
.end method

.method private createRecentLocationEntry(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/preference/Preference$OnPreferenceClickListener;)Lcom/android/settings_ex/DimmableIconPreference;
    .locals 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "isHighBattery"    # Z
    .param p4, "contentDescription"    # Ljava/lang/CharSequence;
    .param p5, "listener"    # Landroid/preference/Preference$OnPreferenceClickListener;

    .prologue
    .line 88
    new-instance v1, Lcom/android/settings_ex/DimmableIconPreference;

    iget-object v3, p0, Lcom/android/settings_ex/location/RecentLocationApps;->mActivity:Lcom/android/settings_ex/SettingsActivity;

    invoke-direct {v1, v3, p4}, Lcom/android/settings_ex/DimmableIconPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 90
    .local v1, "pref":Lcom/android/settings_ex/DimmableIconPreference;
    new-instance v0, Lcom/android/settings_ex/IconResizer;

    iget-object v3, p0, Lcom/android/settings_ex/location/RecentLocationApps;->mActivity:Lcom/android/settings_ex/SettingsActivity;

    invoke-direct {v0, v3}, Lcom/android/settings_ex/IconResizer;-><init>(Landroid/content/Context;)V

    .line 91
    .local v0, "iconResizer":Lcom/android/settings_ex/IconResizer;
    const v3, 0x7f0c00ac

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/IconResizer;->setIconSize(I)V

    .line 92
    invoke-virtual {v0, p1}, Lcom/android/settings_ex/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 94
    .local v2, "resizedicon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v2}, Lcom/android/settings_ex/DimmableIconPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 95
    invoke-virtual {v1, p2}, Lcom/android/settings_ex/DimmableIconPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    if-eqz p3, :cond_0

    .line 97
    const v3, 0x7f0e078f

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/DimmableIconPreference;->setSummary(I)V

    .line 101
    :goto_0
    invoke-virtual {v1, p5}, Lcom/android/settings_ex/DimmableIconPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 102
    return-object v1

    .line 99
    :cond_0
    const v3, 0x7f0e0790

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/DimmableIconPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private getPreferenceFromOps(Landroid/os/UserManager;JLandroid/app/AppOpsManager$PackageOps;)Landroid/preference/Preference;
    .locals 28
    .param p1, "um"    # Landroid/os/UserManager;
    .param p2, "now"    # J
    .param p4, "ops"    # Landroid/app/AppOpsManager$PackageOps;

    .prologue
    .line 153
    invoke-virtual/range {p4 .. p4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v18

    .line 154
    .local v18, "packageName":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v13

    .line 155
    .local v13, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v7, 0x0

    .line 156
    .local v7, "highBattery":Z
    const/16 v17, 0x0

    .line 158
    .local v17, "normalBattery":Z
    const-wide/32 v26, 0xdbba0

    sub-long v20, p2, v26

    .line 159
    .local v20, "recentLocationCutoffTime":J
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/AppOpsManager$OpEntry;

    .line 160
    .local v14, "entry":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v26

    cmp-long v4, v26, v20

    if-ltz v4, :cond_0

    .line 161
    :cond_1
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 163
    :pswitch_0
    const/16 v17, 0x1

    .line 164
    goto :goto_0

    .line 166
    :pswitch_1
    const/4 v7, 0x1

    .line 167
    goto :goto_0

    .line 174
    .end local v14    # "entry":Landroid/app/AppOpsManager$OpEntry;
    :cond_2
    if-nez v7, :cond_4

    if-nez v17, :cond_4

    .line 175
    sget-object v4, Lcom/android/settings_ex/location/RecentLocationApps;->TAG:Ljava/lang/String;

    const/4 v9, 0x2

    invoke-static {v4, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 176
    sget-object v4, Lcom/android/settings_ex/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v26, " hadn\'t used location within the time interval."

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_3
    const/16 v19, 0x0

    .line 216
    :goto_1
    return-object v19

    .line 183
    :cond_4
    invoke-virtual/range {p4 .. p4}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v23

    .line 184
    .local v23, "uid":I
    invoke-static/range {v23 .. v23}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v25

    .line 186
    .local v25, "userId":I
    const/16 v19, 0x0

    .line 188
    .local v19, "preference":Lcom/android/settings_ex/DimmableIconPreference;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v16

    .line 189
    .local v16, "ipm":Landroid/content/pm/IPackageManager;
    const/16 v4, 0x80

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v25

    invoke-interface {v0, v1, v4, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    .line 191
    .local v11, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v11, :cond_5

    .line 192
    sget-object v4, Lcom/android/settings_ex/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Null application info retrieved for package "

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v26, ", userId "

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/16 v19, 0x0

    goto :goto_1

    .line 196
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/location/RecentLocationApps;->mActivity:Lcom/android/settings_ex/SettingsActivity;

    invoke-virtual {v4}, Lcom/android/settings_ex/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 198
    .local v22, "res":Landroid/content/res/Resources;
    new-instance v24, Landroid/os/UserHandle;

    invoke-direct/range {v24 .. v25}, Landroid/os/UserHandle;-><init>(I)V

    .line 199
    .local v24, "userHandle":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v9, 0x1

    invoke-virtual {v4, v11, v9}, Landroid/content/pm/PackageManager;->getApplicationIconForIconTray(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 200
    .local v10, "appIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v24

    invoke-virtual {v4, v10, v0}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 201
    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v11}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 202
    .local v6, "appLabel":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v24

    invoke-virtual {v4, v6, v0}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 203
    .local v8, "badgedAppLabel":Ljava/lang/CharSequence;
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 206
    const/4 v8, 0x0

    .line 208
    :cond_6
    new-instance v9, Lcom/android/settings_ex/location/RecentLocationApps$PackageEntryClickedListener;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    invoke-direct {v9, v0, v1, v2}, Lcom/android/settings_ex/location/RecentLocationApps$PackageEntryClickedListener;-><init>(Lcom/android/settings_ex/location/RecentLocationApps;Ljava/lang/String;Landroid/os/UserHandle;)V

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/settings_ex/location/RecentLocationApps;->createRecentLocationEntry(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/preference/Preference$OnPreferenceClickListener;)Lcom/android/settings_ex/DimmableIconPreference;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    goto/16 :goto_1

    .line 211
    .end local v5    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v6    # "appLabel":Ljava/lang/CharSequence;
    .end local v8    # "badgedAppLabel":Ljava/lang/CharSequence;
    .end local v10    # "appIcon":Landroid/graphics/drawable/Drawable;
    .end local v11    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v22    # "res":Landroid/content/res/Resources;
    .end local v24    # "userHandle":Landroid/os/UserHandle;
    :catch_0
    move-exception v12

    .line 212
    .local v12, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/settings_ex/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Error while retrieving application info for package "

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v26, ", userId "

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getAppList()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/location/RecentLocationApps;->mActivity:Lcom/android/settings_ex/SettingsActivity;

    move-object/from16 v17, v0

    const-string v18, "appops"

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings_ex/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 112
    .local v2, "aoManager":Landroid/app/AppOpsManager;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v3

    .line 116
    .local v3, "appOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v12, "prefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 118
    .local v8, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/location/RecentLocationApps;->mActivity:Lcom/android/settings_ex/SettingsActivity;

    move-object/from16 v17, v0

    const-string v18, "user"

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings_ex/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/UserManager;

    .line 119
    .local v15, "um":Landroid/os/UserManager;
    invoke-virtual {v15}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v13

    .line 121
    .local v13, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 122
    .local v4, "appOpsN":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_3

    .line 123
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$PackageOps;

    .line 126
    .local v7, "ops":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v7}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 127
    .local v10, "packageName":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v14

    .line 128
    .local v14, "uid":I
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    .line 129
    .local v16, "userId":I
    const/16 v17, 0x3e8

    move/from16 v0, v17

    if-ne v14, v0, :cond_1

    const-string v17, "android"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    const/4 v6, 0x1

    .line 131
    .local v6, "isAndroidOs":Z
    :goto_1
    if-nez v6, :cond_0

    new-instance v17, Landroid/os/UserHandle;

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 122
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 129
    .end local v6    # "isAndroidOs":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 134
    .restart local v6    # "isAndroidOs":Z
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8, v9, v7}, Lcom/android/settings_ex/location/RecentLocationApps;->getPreferenceFromOps(Landroid/os/UserManager;JLandroid/app/AppOpsManager$PackageOps;)Landroid/preference/Preference;

    move-result-object v11

    .line 135
    .local v11, "preference":Landroid/preference/Preference;
    if-eqz v11, :cond_0

    .line 136
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 140
    .end local v6    # "isAndroidOs":Z
    .end local v7    # "ops":Landroid/app/AppOpsManager$PackageOps;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "preference":Landroid/preference/Preference;
    .end local v14    # "uid":I
    .end local v16    # "userId":I
    :cond_3
    return-object v12

    .line 112
    nop

    :array_0
    .array-data 4
        0x29
        0x2a
    .end array-data
.end method
