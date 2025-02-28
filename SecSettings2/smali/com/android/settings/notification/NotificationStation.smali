.class public Lcom/android/settings_ex/notification/NotificationStation;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "NotificationStation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notification/NotificationStation$NotificationHistoryAdapter;,
        Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/settings_ex/notification/NotificationStation$NotificationHistoryAdapter;

.field private mContext:Landroid/content/Context;

.field private mListener:Landroid/service/notification/NotificationListenerService;

.field private mNoMan:Landroid/app/INotificationManager;

.field private final mNotificationSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRefreshListRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/android/settings_ex/notification/NotificationStation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/notification/NotificationStation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 78
    new-instance v0, Lcom/android/settings_ex/notification/NotificationStation$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notification/NotificationStation$1;-><init>(Lcom/android/settings_ex/notification/NotificationStation;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;

    .line 85
    new-instance v0, Lcom/android/settings_ex/notification/NotificationStation$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notification/NotificationStation$2;-><init>(Lcom/android/settings_ex/notification/NotificationStation;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationStation;->mListener:Landroid/service/notification/NotificationListenerService;

    .line 105
    new-instance v0, Lcom/android/settings_ex/notification/NotificationStation$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notification/NotificationStation$3;-><init>(Lcom/android/settings_ex/notification/NotificationStation;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationStation;->mNotificationSorter:Ljava/util/Comparator;

    .line 294
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/notification/NotificationStation;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationStation;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationStation;->refreshList()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 58
    invoke-static {p0, p1}, Lcom/android/settings_ex/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/notification/NotificationStation;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationStation;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/notification/NotificationStation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationStation;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/NotificationStation;->startApplicationDetailsActivity(Ljava/lang/String;)V

    return-void
.end method

.method private getResourcesForUserPackage(Ljava/lang/String;I)Landroid/content/res/Resources;
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 236
    const/4 v1, 0x0

    .line 238
    .local v1, "r":Landroid/content/res/Resources;
    if-eqz p1, :cond_1

    .line 240
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 241
    const/4 p2, 0x0

    .line 243
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    move-object v2, v1

    .line 251
    :goto_1
    return-object v2

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/settings_ex/notification/NotificationStation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Icon package not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    const/4 v2, 0x0

    goto :goto_1

    .line 249
    .end local v0    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_0
.end method

.method private loadIconDrawable(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "resId"    # I

    .prologue
    const/4 v3, 0x0

    .line 277
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/notification/NotificationStation;->getResourcesForUserPackage(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v1

    .line 279
    .local v1, "r":Landroid/content/res/Resources;
    if-nez p3, :cond_0

    move-object v2, v3

    .line 291
    :goto_0
    return-object v2

    .line 284
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v4, Lcom/android/settings_ex/notification/NotificationStation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Icon not found in "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 291
    goto :goto_0

    .line 286
    :cond_1
    const-string v2, "<system>"

    goto :goto_1
.end method

.method private loadNotifications()Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    .line 183
    .local v7, "currentUserId":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationStation;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    .line 185
    .local v4, "active":[Landroid/service/notification/StatusBarNotification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationStation;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x32

    invoke-interface/range {v18 .. v20}, Landroid/app/INotificationManager;->getHistoricalNotifications(Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    .line 188
    .local v8, "dismissed":[Landroid/service/notification/StatusBarNotification;
    new-instance v15, Ljava/util/ArrayList;

    array-length v0, v4

    move/from16 v18, v0

    array-length v0, v8

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 192
    .local v15, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;>;"
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v5, v0, [[Landroid/service/notification/StatusBarNotification;

    const/16 v18, 0x0

    aput-object v4, v5, v18

    const/16 v18, 0x1

    aput-object v8, v5, v18

    .local v5, "arr$":[[Landroid/service/notification/StatusBarNotification;
    array-length v13, v5

    .local v13, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    move v11, v10

    .end local v5    # "arr$":[[Landroid/service/notification/StatusBarNotification;
    .end local v10    # "i$":I
    .end local v13    # "len$":I
    .local v11, "i$":I
    :goto_0
    if-ge v11, v13, :cond_a

    aget-object v16, v5, v11

    .line 193
    .local v16, "resultset":[Landroid/service/notification/StatusBarNotification;
    move-object/from16 v6, v16

    .local v6, "arr$":[Landroid/service/notification/StatusBarNotification;
    array-length v14, v6

    .local v14, "len$":I
    const/4 v10, 0x0

    .end local v11    # "i$":I
    .restart local v10    # "i$":I
    :goto_1
    if-ge v10, v14, :cond_9

    aget-object v17, v6, v10

    .line 194
    .local v17, "sbn":Landroid/service/notification/StatusBarNotification;
    new-instance v12, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;-><init>(Lcom/android/settings_ex/notification/NotificationStation$1;)V

    .line 195
    .local v12, "info":Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    .line 196
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v18

    move/from16 v0, v18

    iput v0, v12, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->user:I

    .line 197
    iget-object v0, v12, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    move-object/from16 v18, v0

    iget v0, v12, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->user:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/notification/NotificationStation;->loadIconDrawable(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 198
    iget-object v0, v12, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    move-object/from16 v18, v0

    iget v0, v12, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->user:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/notification/NotificationStation;->loadPackageIconDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->pkgicon:Landroid/graphics/drawable/Drawable;

    .line 199
    iget-object v0, v12, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->loadPackageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->pkgname:Ljava/lang/CharSequence;

    .line 200
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 201
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "android.title"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 203
    iget-object v0, v12, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    const-string v18, ""

    iget-object v0, v12, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 204
    :cond_0
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "android.text"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 208
    :cond_1
    iget-object v0, v12, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    const-string v18, ""

    iget-object v0, v12, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 209
    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 212
    :cond_3
    iget-object v0, v12, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    const-string v18, ""

    iget-object v0, v12, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 213
    :cond_4
    iget-object v0, v12, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->pkgname:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 215
    :cond_5
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v12, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    .line 216
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/Notification;->priority:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v12, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->priority:I

    .line 217
    const-string v18, "   [%d] %s: %s"

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget-wide v0, v12, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    iget-object v0, v12, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    const/16 v20, 0x2

    iget-object v0, v12, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/android/settings_ex/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    move-object/from16 v0, v16

    if-ne v0, v4, :cond_8

    const/16 v18, 0x1

    :goto_2
    move/from16 v0, v18

    iput-boolean v0, v12, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->active:Z

    .line 221
    iget v0, v12, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->user:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    iget v0, v12, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->user:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v7, :cond_7

    .line 223
    :cond_6
    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 219
    :cond_8
    const/16 v18, 0x0

    goto :goto_2

    .line 192
    .end local v12    # "info":Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;
    .end local v17    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_9
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    .end local v10    # "i$":I
    .restart local v11    # "i$":I
    goto/16 :goto_0

    .line 229
    .end local v4    # "active":[Landroid/service/notification/StatusBarNotification;
    .end local v6    # "arr$":[Landroid/service/notification/StatusBarNotification;
    .end local v8    # "dismissed":[Landroid/service/notification/StatusBarNotification;
    .end local v11    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;>;"
    .end local v16    # "resultset":[Landroid/service/notification/StatusBarNotification;
    :catch_0
    move-exception v9

    .line 230
    .local v9, "e":Landroid/os/RemoteException;
    sget-object v18, Lcom/android/settings_ex/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v19, "Cannot load Notifications: "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    const/4 v15, 0x0

    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_a
    return-object v15
.end method

.method private loadPackageIconDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 255
    const/4 v1, 0x0

    .line 257
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 262
    :goto_0
    return-object v1

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/settings_ex/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v3, "Cannot get application icon"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private loadPackageName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 267
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 269
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 273
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local p1    # "pkg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 270
    .restart local p1    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/settings_ex/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v3, "Cannot load package name"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 178
    return-void
.end method

.method private refreshList()V
    .locals 5

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationStation;->loadNotifications()Ljava/util/List;

    move-result-object v0

    .line 166
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;>;"
    if-eqz v0, :cond_0

    .line 167
    const-string v1, "adding %d infos"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/android/settings_ex/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationStation;->mAdapter:Lcom/android/settings_ex/notification/NotificationStation$NotificationHistoryAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ex/notification/NotificationStation$NotificationHistoryAdapter;->clear()V

    .line 169
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationStation;->mAdapter:Lcom/android/settings_ex/notification/NotificationStation$NotificationHistoryAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/notification/NotificationStation$NotificationHistoryAdapter;->addAll(Ljava/util/Collection;)V

    .line 170
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationStation;->mAdapter:Lcom/android/settings_ex/notification/NotificationStation$NotificationHistoryAdapter;

    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationStation;->mNotificationSorter:Ljava/util/Comparator;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/notification/NotificationStation$NotificationHistoryAdapter;->sort(Ljava/util/Comparator;)V

    .line 172
    :cond_0
    return-void
.end method

.method private startApplicationDetailsActivity(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 343
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 345
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 346
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/NotificationStation;->startActivity(Landroid/content/Intent;)V

    .line 347
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 142
    const/16 v0, 0x4b

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 147
    const-string v1, "onActivityCreated(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/android/settings_ex/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationStation;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 151
    .local v0, "listView":Landroid/widget/ListView;
    invoke-static {v0, v3}, Lcom/android/settings_ex/Utils;->forceCustomPadding(Landroid/view/View;Z)V

    .line 153
    new-instance v1, Lcom/android/settings_ex/notification/NotificationStation$NotificationHistoryAdapter;

    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ex/notification/NotificationStation$NotificationHistoryAdapter;-><init>(Lcom/android/settings_ex/notification/NotificationStation;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/notification/NotificationStation;->mAdapter:Lcom/android/settings_ex/notification/NotificationStation$NotificationHistoryAdapter;

    .line 154
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationStation;->mAdapter:Lcom/android/settings_ex/notification/NotificationStation$NotificationHistoryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 155
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 116
    const-string v1, "onAttach(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/android/settings_ex/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 118
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationStation;->mContext:Landroid/content/Context;

    .line 119
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    .line 120
    const-string v1, "notification"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/notification/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationStation;->mListener:Landroid/service/notification/NotificationListenerService;

    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationStation;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/settings_ex/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/settings_ex/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v2, "Cannot register listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationStation;->mListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDetach()V

    .line 138
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/settings_ex/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v2, "Cannot unregister listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 159
    const-string v0, "onResume()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 161
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationStation;->refreshList()V

    .line 162
    return-void
.end method
