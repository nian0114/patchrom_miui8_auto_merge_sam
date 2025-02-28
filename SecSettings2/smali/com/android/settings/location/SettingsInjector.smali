.class Lcom/android/settings_ex/location/SettingsInjector;
.super Ljava/lang/Object;
.source "SettingsInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/location/SettingsInjector$1;,
        Lcom/android/settings_ex/location/SettingsInjector$Setting;,
        Lcom/android/settings_ex/location/SettingsInjector$StatusLoadingHandler;,
        Lcom/android/settings_ex/location/SettingsInjector$ServiceSettingClickedListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/settings_ex/location/SettingsInjector$Setting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/android/settings_ex/location/SettingsInjector;->mContext:Landroid/content/Context;

    .line 120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/location/SettingsInjector;->mSettings:Ljava/util/Set;

    .line 121
    new-instance v0, Lcom/android/settings_ex/location/SettingsInjector$StatusLoadingHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/location/SettingsInjector$StatusLoadingHandler;-><init>(Lcom/android/settings_ex/location/SettingsInjector;Lcom/android/settings_ex/location/SettingsInjector$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/location/SettingsInjector;->mHandler:Landroid/os/Handler;

    .line 122
    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/location/SettingsInjector;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/location/SettingsInjector;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings_ex/location/SettingsInjector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/location/SettingsInjector;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/location/SettingsInjector;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings_ex/location/SettingsInjector;->mSettings:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/location/SettingsInjector;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/location/SettingsInjector;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings_ex/location/SettingsInjector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addServiceSetting(Ljava/util/List;Lcom/android/settings_ex/location/InjectedSetting;)Landroid/preference/Preference;
    .locals 10
    .param p2, "info"    # Lcom/android/settings_ex/location/InjectedSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;",
            "Lcom/android/settings_ex/location/InjectedSetting;",
            ")",
            "Landroid/preference/Preference;"
        }
    .end annotation

    .prologue
    .local p1, "prefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    const/4 v9, 0x0

    .line 294
    iget-object v7, p0, Lcom/android/settings_ex/location/SettingsInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 295
    .local v4, "pm":Landroid/content/pm/PackageManager;
    iget-object v7, p2, Lcom/android/settings_ex/location/InjectedSetting;->packageName:Ljava/lang/String;

    iget v8, p2, Lcom/android/settings_ex/location/InjectedSetting;->iconId:I

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 296
    .local v0, "appIcon":Landroid/graphics/drawable/Drawable;
    iget-object v7, p2, Lcom/android/settings_ex/location/InjectedSetting;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->shouldPackIntoIconTray(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 297
    const/4 v7, 0x1

    invoke-virtual {v4, v0, v7}, Landroid/content/pm/PackageManager;->getDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 299
    :cond_0
    iget-object v7, p2, Lcom/android/settings_ex/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v7}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 300
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v7, p2, Lcom/android/settings_ex/location/InjectedSetting;->title:Ljava/lang/String;

    iget-object v8, p2, Lcom/android/settings_ex/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 301
    .local v1, "badgedAppLabel":Ljava/lang/CharSequence;
    iget-object v7, p2, Lcom/android/settings_ex/location/InjectedSetting;->title:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 304
    const/4 v1, 0x0

    .line 306
    :cond_1
    new-instance v5, Lcom/android/settings_ex/DimmableIconPreference;

    iget-object v7, p0, Lcom/android/settings_ex/location/SettingsInjector;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7, v1}, Lcom/android/settings_ex/DimmableIconPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 307
    .local v5, "pref":Landroid/preference/Preference;
    iget-object v7, p2, Lcom/android/settings_ex/location/InjectedSetting;->title:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 308
    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 309
    new-instance v3, Lcom/android/settings_ex/IconResizer;

    iget-object v7, p0, Lcom/android/settings_ex/location/SettingsInjector;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/android/settings_ex/IconResizer;-><init>(Landroid/content/Context;)V

    .line 310
    .local v3, "iconResizer":Lcom/android/settings_ex/IconResizer;
    const v7, 0x7f0c00ac

    invoke-virtual {v3, v7}, Lcom/android/settings_ex/IconResizer;->setIconSize(I)V

    .line 311
    invoke-virtual {v3, v2}, Lcom/android/settings_ex/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 312
    .local v6, "resizedicon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 313
    new-instance v7, Lcom/android/settings_ex/location/SettingsInjector$ServiceSettingClickedListener;

    invoke-direct {v7, p0, p2}, Lcom/android/settings_ex/location/SettingsInjector$ServiceSettingClickedListener;-><init>(Lcom/android/settings_ex/location/SettingsInjector;Lcom/android/settings_ex/location/InjectedSetting;)V

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 315
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    return-object v5
.end method

.method private getSettings(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 13
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/location/InjectedSetting;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    .line 135
    iget-object v9, p0, Lcom/android/settings_ex/location/SettingsInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 136
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.location.SettingInjectorService"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 139
    .local v4, "profileId":I
    const/16 v9, 0x80

    invoke-virtual {v3, v2, v9, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    .line 141
    .local v6, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v9, "SettingsInjector"

    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 142
    const-string v9, "SettingsInjector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found services for profile id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    .local v8, "settings":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/location/InjectedSetting;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 147
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    :try_start_0
    invoke-static {v5, p1, v3}, Lcom/android/settings_ex/location/SettingsInjector;->parseServiceInfo(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;Landroid/content/pm/PackageManager;)Lcom/android/settings_ex/location/InjectedSetting;

    move-result-object v7

    .line 148
    .local v7, "setting":Lcom/android/settings_ex/location/InjectedSetting;
    if-nez v7, :cond_1

    .line 149
    const-string v9, "SettingsInjector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to load service info "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 153
    .end local v7    # "setting":Lcom/android/settings_ex/location/InjectedSetting;
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v9, "SettingsInjector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to load service info "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 151
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v7    # "setting":Lcom/android/settings_ex/location/InjectedSetting;
    :cond_1
    :try_start_1
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 155
    .end local v7    # "setting":Lcom/android/settings_ex/location/InjectedSetting;
    :catch_1
    move-exception v0

    .line 156
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "SettingsInjector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to load service info "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 159
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    const-string v9, "SettingsInjector"

    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 160
    const-string v9, "SettingsInjector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Loaded settings for profile id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_3
    return-object v8
.end method

.method private static parseAttributes(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Lcom/android/settings_ex/location/InjectedSetting;
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 233
    sget-object v0, Landroid/R$styleable;->SettingInjectorService:[I

    invoke-virtual {p3, p4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 237
    .local v6, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, "title":Ljava/lang/String;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 240
    .local v3, "iconId":I
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 242
    .local v5, "settingsActivity":Ljava/lang/String;
    const-string v0, "SettingsInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    const-string v0, "SettingsInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parsed title: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", iconId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", settingsActivity: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 246
    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/location/InjectedSetting;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/lang/String;)Lcom/android/settings_ex/location/InjectedSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 249
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "iconId":I
    .end local v5    # "settingsActivity":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private static parseServiceInfo(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;Landroid/content/pm/PackageManager;)Lcom/android/settings_ex/location/InjectedSetting;
    .locals 12
    .param p0, "service"    # Landroid/content/pm/ResolveInfo;
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 175
    iget-object v6, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 176
    .local v6, "si":Landroid/content/pm/ServiceInfo;
    iget-object v0, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 179
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_GPS_SupportGTP"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 180
    iget-object v9, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v10, "com.qualcomm.location.XT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-object v8

    .line 185
    :cond_1
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_2

    .line 186
    const-string v9, "SettingsInjector"

    const/4 v10, 0x5

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 187
    const-string v9, "SettingsInjector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring attempt to inject setting from app not in system image: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    :cond_2
    const/4 v4, 0x0

    .line 195
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v8, "android.location.SettingInjectorService"

    invoke-virtual {v6, p2, v8}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 196
    if-nez v4, :cond_4

    .line 197
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No android.location.SettingInjectorService meta-data for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :catch_0
    move-exception v2

    .line 218
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to load resources for package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v8

    if-eqz v4, :cond_3

    .line 222
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3
    throw v8

    .line 201
    :cond_4
    :try_start_2
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 205
    .local v1, "attrs":Landroid/util/AttributeSet;
    :cond_5
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v7, v8, :cond_6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 208
    :cond_6
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "nodeName":Ljava/lang/String;
    const-string v8, "injected-location-setting"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 210
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v9, "Meta-data does not start with injected-location-setting tag"

    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 214
    :cond_7
    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-virtual {p2, v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v5

    .line 216
    .local v5, "res":Landroid/content/res/Resources;
    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v8, v9, p1, v5, v1}, Lcom/android/settings_ex/location/SettingsInjector;->parseAttributes(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Lcom/android/settings_ex/location/InjectedSetting;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 221
    if-eqz v4, :cond_0

    .line 222
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0
.end method


# virtual methods
.method public getInjectedSettings(I)Ljava/util/List;
    .locals 13
    .param p1, "profileId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v10, p0, Lcom/android/settings_ex/location/SettingsInjector;->mContext:Landroid/content/Context;

    const-string v11, "user"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 261
    .local v8, "um":Landroid/os/UserManager;
    invoke-virtual {v8}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v5

    .line 262
    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v3, "prefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 264
    .local v4, "profileCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 265
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserHandle;

    .line 266
    .local v9, "userHandle":Landroid/os/UserHandle;
    const/4 v10, -0x2

    if-eq p1, v10, :cond_0

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    if-ne p1, v10, :cond_1

    .line 267
    :cond_0
    invoke-direct {p0, v9}, Lcom/android/settings_ex/location/SettingsInjector;->getSettings(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v7

    .line 268
    .local v7, "settings":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/settings_ex/location/InjectedSetting;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/location/InjectedSetting;

    .line 269
    .local v6, "setting":Lcom/android/settings_ex/location/InjectedSetting;
    invoke-direct {p0, v3, v6}, Lcom/android/settings_ex/location/SettingsInjector;->addServiceSetting(Ljava/util/List;Lcom/android/settings_ex/location/InjectedSetting;)Landroid/preference/Preference;

    move-result-object v2

    .line 270
    .local v2, "pref":Landroid/preference/Preference;
    iget-object v10, p0, Lcom/android/settings_ex/location/SettingsInjector;->mSettings:Ljava/util/Set;

    new-instance v11, Lcom/android/settings_ex/location/SettingsInjector$Setting;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v6, v2, v12}, Lcom/android/settings_ex/location/SettingsInjector$Setting;-><init>(Lcom/android/settings_ex/location/SettingsInjector;Lcom/android/settings_ex/location/InjectedSetting;Landroid/preference/Preference;Lcom/android/settings_ex/location/SettingsInjector$1;)V

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 264
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pref":Landroid/preference/Preference;
    .end local v6    # "setting":Lcom/android/settings_ex/location/InjectedSetting;
    .end local v7    # "settings":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/settings_ex/location/InjectedSetting;>;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    .end local v9    # "userHandle":Landroid/os/UserHandle;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/location/SettingsInjector;->reloadStatusMessages()V

    .line 277
    return-object v3
.end method

.method public getUserIdFromMyKNOXContainer()I
    .locals 9

    .prologue
    .line 557
    const/4 v5, -0x1

    .line 559
    .local v5, "userId":I
    const-string v6, "persona"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v3

    .line 560
    .local v3, "persona":Landroid/os/IPersonaManager;
    if-eqz v3, :cond_2

    .line 563
    const/4 v6, 0x1

    :try_start_0
    invoke-interface {v3, v6}, Landroid/os/IPersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v4

    .line 564
    .local v4, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaInfo;

    .line 565
    .local v0, "e":Landroid/content/pm/PersonaInfo;
    const-string v6, "SettingsInjector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "persona type:  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/pm/PersonaInfo;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-virtual {v0}, Landroid/content/pm/PersonaInfo;->getType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "centrify-pb-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/PersonaInfo;->getType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "myknox-type"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 567
    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/PersonaInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 568
    const-string v6, "SettingsInjector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found PB container : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    .end local v0    # "e":Landroid/content/pm/PersonaInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_2
    :goto_0
    return v5

    .line 572
    :catch_0
    move-exception v1

    .line 573
    .local v1, "e1":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public reloadStatusMessages()V
    .locals 3

    .prologue
    .line 284
    const-string v0, "SettingsInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    const-string v0, "SettingsInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reloadingStatusMessages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/location/SettingsInjector;->mSettings:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/location/SettingsInjector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/location/SettingsInjector;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 288
    return-void
.end method
