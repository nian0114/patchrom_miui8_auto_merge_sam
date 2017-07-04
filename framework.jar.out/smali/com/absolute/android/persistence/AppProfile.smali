.class public Lcom/absolute/android/persistence/AppProfile;
.super Ljava/lang/Object;
.source "AppProfile.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/absolute/android/persistence/AppProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static UPDATE_HOST_SPKI_HASH_KEY:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private m_accessKey:Ljava/lang/String;

.field private m_checkRunningSecs:Ljava/lang/Integer;

.field private m_extras:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m_maxRestartAttempts:Ljava/lang/Integer;

.field private m_maxUpdateAttempts:Ljava/lang/Integer;

.field private m_monitor:Ljava/lang/Boolean;

.field private m_monitorIntents:[Ljava/lang/String;

.field private m_packageName:Ljava/lang/String;

.field private m_persist:Ljava/lang/Boolean;

.field private m_restartIntent:Ljava/lang/String;

.field private m_startOnInstall:Ljava/lang/Boolean;

.field private m_startOnInstallIntent:Ljava/lang/String;

.field private m_updateIpAddress:Ljava/lang/String;

.field private m_updateRetryMinutes:Ljava/lang/Integer;

.field private m_updateUrl:Ljava/lang/String;

.field private m_versionCode:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "UpdateHostSPKIHash"

    sput-object v0, Lcom/absolute/android/persistence/AppProfile;->UPDATE_HOST_SPKI_HASH_KEY:Ljava/lang/String;

    new-instance v0, Lcom/absolute/android/persistence/AppProfile$1;

    invoke-direct {v0}, Lcom/absolute/android/persistence/AppProfile$1;-><init>()V

    sput-object v0, Lcom/absolute/android/persistence/AppProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    iput-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    iput-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    iput-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    iput-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    iput-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    iput-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    iput-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    iput-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/absolute/android/persistence/AppProfile$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/absolute/android/persistence/AppProfile$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/absolute/android/persistence/AppProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;IILjava/util/HashMap;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # I
    .param p3, "updateUrl"    # Ljava/lang/String;
    .param p4, "updateIpAddress"    # Ljava/lang/String;
    .param p5, "accessKey"    # Ljava/lang/String;
    .param p6, "maxUpdateAttempts"    # I
    .param p7, "updateRetryMinutes"    # I
    .param p8, "persist"    # Z
    .param p9, "startOnInstall"    # Z
    .param p10, "startOnInstallIntent"    # Ljava/lang/String;
    .param p11, "restartIntent"    # Ljava/lang/String;
    .param p12, "monitor"    # Z
    .param p13, "monitorIntents"    # [Ljava/lang/String;
    .param p14, "checkRunningSecs"    # I
    .param p15, "maxRestartAttempts"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p16, "extras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "package name is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "version is 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iput-object p1, p0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    iput-object p5, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    invoke-static {p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    iput-object p10, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    iput-object p11, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    invoke-static {p12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    invoke-static/range {p15 .. p15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    return-void
.end method

.method private static areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "obj1"    # Ljava/lang/Object;
    .param p1, "obj2"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    if-eqz p0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    new-instance v0, Lcom/absolute/android/persistence/AppProfile;

    invoke-direct {v0}, Lcom/absolute/android/persistence/AppProfile;-><init>()V

    .local v0, "clone":Lcom/absolute/android/persistence/AppProfile;
    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v2, v0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    iput-object v2, v0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    iput-object v2, v0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    iput-object v2, v0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    iput-object v2, v0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5
    iput-object v2, v0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    iget-object v2, v0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    iget-object v4, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    aget-object v4, v4, v1

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .end local v1    # "i":I
    :cond_0
    move-object v2, v3

    goto/16 :goto_0

    :cond_1
    move-object v2, v3

    goto/16 :goto_1

    :cond_2
    move-object v2, v3

    goto/16 :goto_2

    :cond_3
    move-object v2, v3

    goto :goto_3

    :cond_4
    move-object v2, v3

    goto :goto_4

    :cond_5
    move-object v2, v3

    goto :goto_5

    :cond_6
    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    :goto_7
    iput-object v2, v0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    return-object v0

    :cond_7
    move-object v2, v3

    goto :goto_7
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    instance-of v3, p1, Lcom/absolute/android/persistence/AppProfile;

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/absolute/android/persistence/AppProfile;

    .local v0, "apObj":Lcom/absolute/android/persistence/AppProfile;
    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    iget-object v4, v0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    iget-object v4, v0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    iget-object v4, v0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    iget-object v4, v0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    iget-object v4, v0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    invoke-static {v3, v4}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto/16 :goto_0
.end method

.method public getAccessKey()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckRunningSecs()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getExtras()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    return-object v0
.end method

.method public getIsMonitored()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getIsPersisted()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getMaxRestartAttempts()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMaxUpdateAttempts()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMonitorIntents()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRestartIntent()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    return-object v0
.end method

.method public getStartOnInstall()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getStartOnInstallIntent()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateHostSPKIHash()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "updateHostSPKIHash":Ljava/lang/String;
    iget-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    sget-object v2, Lcom/absolute/android/persistence/AppProfile;->UPDATE_HOST_SPKI_HASH_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "updateHostSPKIHash":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "updateHostSPKIHash":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getUpdateIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateRetryMinutes()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getUpdateUrl()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public setAccessKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessKey"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    return-void
.end method

.method public setCheckRunningSecs(I)V
    .locals 1
    .param p1, "secs"    # I

    .prologue
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    return-void
.end method

.method public setExtras(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "extras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    return-void
.end method

.method public setIsMonitored(Z)V
    .locals 1
    .param p1, "monitor"    # Z

    .prologue
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    return-void
.end method

.method public setIsPersisted(Z)V
    .locals 1
    .param p1, "persist"    # Z

    .prologue
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    return-void
.end method

.method public setMaxRestartAttempts(I)V
    .locals 1
    .param p1, "maxAttempts"    # I

    .prologue
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    return-void
.end method

.method public setMaxUpdateAttempts(I)V
    .locals 1
    .param p1, "maxAttempts"    # I

    .prologue
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    return-void
.end method

.method public setMonitorIntents([Ljava/lang/String;)V
    .locals 0
    .param p1, "monitorIntents"    # [Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    return-void
.end method

.method public setRestartIntent(Ljava/lang/String;)V
    .locals 0
    .param p1, "startIntent"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    return-void
.end method

.method public setStartOnInstall(Z)V
    .locals 1
    .param p1, "startOnInstall"    # Z

    .prologue
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    return-void
.end method

.method public setStartOnInstallIntent(Ljava/lang/String;)V
    .locals 0
    .param p1, "startIntent"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    return-void
.end method

.method public setUpdateHostSPKIHash(Ljava/lang/String;)V
    .locals 2
    .param p1, "updateHostSPKIHash"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    sget-object v1, Lcom/absolute/android/persistence/AppProfile;->UPDATE_HOST_SPKI_HASH_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setUpdateIpAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateIpAddress"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    return-void
.end method

.method public setUpdateRetryMinutes(I)V
    .locals 1
    .param p1, "mins"    # I

    .prologue
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    return-void
.end method

.method public setUpdateUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateUrl"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 2
    .param p1, "versionCode"    # I

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "version is 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "appProfileText":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PackageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Version = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsPersisted = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsMonitored = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "MonitorIntents = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .local v4, "monitorIntent":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "monitorIntent":Ljava/lang/String;
    :cond_0
    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckRunningSecs = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MaxRestartAttempts = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StartOnInstall = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StartOnInstallIntent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RestartIntent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AccessKey = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpdateUrl = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpdateIpAddress = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MaxUpdateAttempts = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpdateRetryMinutes = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpdateHostSPKIHash = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/absolute/android/persistence/AppProfile;->getUpdateHostSPKIHash()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
