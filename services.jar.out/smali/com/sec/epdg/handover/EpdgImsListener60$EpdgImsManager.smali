.class public Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;
.super Ljava/lang/Object;
.source "EpdgImsListener60.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsListener60;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EpdgImsManager"
.end annotation


# static fields
.field public static final IMS_SETTING_VIDEO_ENABLED:Ljava/lang/String; = "content://com.sec.ims.settings/imsswitch/mmtel-video"

.field public static final IMS_SETTING_VOLTE_ENABLED:Ljava/lang/String; = "content://com.sec.ims.settings/imsswitch/mmtel"

.field public static final IMS_SETTING_VOLTE_PROVISIONED:Ljava/lang/String;

.field public static final IMS_SETTING_VWF_PROVISIONED:Ljava/lang/String;

.field private static final STORAGE_DM_DB:I = 0x0

.field private static final STORAGE_SERVICE_SWITCH:I = 0x1

.field private static mEpdgImsManager:Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;

.field private static mHandlerThread:Landroid/os/HandlerThread;

.field private static mSettingChangeObserver:Lcom/sec/epdg/handover/EpdgImsListener60$SettingChangeObserver;

.field private static final mSettingStorageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->mEpdgImsManager:Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;

    sput-object v0, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->mSettingChangeObserver:Lcom/sec/epdg/handover/EpdgImsListener60$SettingChangeObserver;

    sput-object v0, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->mHandlerThread:Landroid/os/HandlerThread;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->mSettingStorageMap:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/ims/settings/ImsSettings$DmConfigTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "omadm/./3GPP_IMS/VOLTE_ENABLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->IMS_SETTING_VOLTE_PROVISIONED:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/ims/settings/ImsSettings$DmConfigTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "omadm/./3GPP_IMS/VWF_ENABLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->IMS_SETTING_VWF_PROVISIONED:Ljava/lang/String;

    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->mSettingStorageMap:Ljava/util/Map;

    const-string v1, "content://com.sec.ims.settings/imsswitch/mmtel"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->mSettingStorageMap:Ljava/util/Map;

    const-string v1, "content://com.sec.ims.settings/imsswitch/mmtel-video"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->mSettingStorageMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->IMS_SETTING_VOLTE_PROVISIONED:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->mSettingStorageMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->IMS_SETTING_VWF_PROVISIONED:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/sec/ims/ImsManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->mHandlerThread:Landroid/os/HandlerThread;

    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/sec/epdg/handover/EpdgImsListener60$SettingChangeObserver;

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/sec/epdg/handover/EpdgImsListener60$SettingChangeObserver;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->mSettingChangeObserver:Lcom/sec/epdg/handover/EpdgImsListener60$SettingChangeObserver;

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->readSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getInstance()Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->mEpdgImsManager:Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;

    invoke-direct {v0}, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;-><init>()V

    sput-object v0, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->mEpdgImsManager:Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;

    :cond_0
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->mEpdgImsManager:Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;

    return-object v0
.end method

.method private readDMSettingValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    # getter for: Lcom/sec/epdg/handover/EpdgImsListener60;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->access$1200()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "[EpdgImsListener]"

    const-string v1, "readDMSettingValue: not found"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v7, v2

    :goto_0
    return-object v7

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "val":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private readServiceSwitchSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    # getter for: Lcom/sec/epdg/handover/EpdgImsListener60;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->access$1200()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/ims/settings/ImsSettings$ImsServiceSwitchTable;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "[EpdgImsListener]"

    const-string v1, "readServiceSwitchSetting: not found"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v7, v3

    :goto_0
    return-object v7

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "enabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "val":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private readSettingValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->mSettingStorageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->readServiceSwitchSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->readDMSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getImsSettings(Ljava/util/List;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .local v2, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "key":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->readSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "val":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "val":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method registerForSettingChangeEvent(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "key":Ljava/lang/String;
    # getter for: Lcom/sec/epdg/handover/EpdgImsListener60;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->access$1200()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    sget-object v5, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->mSettingChangeObserver:Lcom/sec/epdg/handover/EpdgImsListener60$SettingChangeObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method
