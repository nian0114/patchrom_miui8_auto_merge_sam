.class public final Landroid/nfc/cardemulation/CardEmulation;
.super Ljava/lang/Object;
.source "CardEmulation.java"


# static fields
.field public static final ACTION_CHANGE_DEFAULT:Ljava/lang/String; = "android.nfc.cardemulation.action.ACTION_CHANGE_DEFAULT"

.field public static final CATEGORY_OTHER:Ljava/lang/String; = "other"

.field public static final CATEGORY_PAYMENT:Ljava/lang/String; = "payment"

.field public static final EXTRA_CATEGORY:Ljava/lang/String; = "category"

.field public static final EXTRA_SERVICE_COMPONENT:Ljava/lang/String; = "component"

.field public static final SELECTION_MODE_ALWAYS_ASK:I = 0x1

.field public static final SELECTION_MODE_ASK_IF_CONFLICT:I = 0x2

.field public static final SELECTION_MODE_PREFER_DEFAULT:I = 0x0

.field static final TAG:Ljava/lang/String; = "CardEmulation"

.field static sCardEmus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/nfc/cardemulation/CardEmulation;",
            ">;"
        }
    .end annotation
.end field

.field static sIsInitialized:Z

.field static sService:Landroid/nfc/INfcCardEmulation;


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Landroid/nfc/cardemulation/CardEmulation;->sIsInitialized:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/nfc/cardemulation/CardEmulation;->sCardEmus:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/nfc/INfcCardEmulation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/nfc/INfcCardEmulation;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    sput-object p2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;
    .locals 8
    .param p0, "adapter"    # Landroid/nfc/NfcAdapter;

    .prologue
    const-class v6, Landroid/nfc/cardemulation/CardEmulation;

    monitor-enter v6

    if-nez p0, :cond_0

    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v7, "NfcAdapter is null"

    invoke-direct {v5, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    const-string v5, "CardEmulation"

    const-string v7, "NfcAdapter context is null."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5

    :cond_1
    sget-boolean v5, Landroid/nfc/cardemulation/CardEmulation;->sIsInitialized:Z

    if-nez v5, :cond_4

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .local v3, "pm":Landroid/content/pm/IPackageManager;
    if-nez v3, :cond_2

    const-string v5, "CardEmulation"

    const-string v7, "Cannot get PackageManager"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    const-string v5, "android.hardware.nfc.hce"

    invoke-interface {v3, v5}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "CardEmulation"

    const-string v7, "This device does not support card emulation"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v5, "CardEmulation"

    const-string v7, "PackageManager query failed."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    const/4 v5, 0x1

    sput-boolean v5, Landroid/nfc/cardemulation/CardEmulation;->sIsInitialized:Z

    .end local v3    # "pm":Landroid/content/pm/IPackageManager;
    :cond_4
    sget-object v5, Landroid/nfc/cardemulation/CardEmulation;->sCardEmus:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/CardEmulation;

    .local v2, "manager":Landroid/nfc/cardemulation/CardEmulation;
    if-nez v2, :cond_6

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getCardEmulationService()Landroid/nfc/INfcCardEmulation;

    move-result-object v4

    .local v4, "service":Landroid/nfc/INfcCardEmulation;
    if-nez v4, :cond_5

    const-string v5, "CardEmulation"

    const-string v7, "This device does not implement the INfcCardEmulation interface."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5

    :cond_5
    new-instance v2, Landroid/nfc/cardemulation/CardEmulation;

    .end local v2    # "manager":Landroid/nfc/cardemulation/CardEmulation;
    invoke-direct {v2, v0, v4}, Landroid/nfc/cardemulation/CardEmulation;-><init>(Landroid/content/Context;Landroid/nfc/INfcCardEmulation;)V

    .restart local v2    # "manager":Landroid/nfc/cardemulation/CardEmulation;
    sget-object v5, Landroid/nfc/cardemulation/CardEmulation;->sCardEmus:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v4    # "service":Landroid/nfc/INfcCardEmulation;
    :cond_6
    monitor-exit v6

    return-object v2
.end method

.method public static isValidAid(Ljava/lang/String;)Z
    .locals 4
    .param p0, "aid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const-string v1, "CardEmulation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a valid AID."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    const-string v1, "CardEmulation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a valid AID."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "[0-9A-Fa-f]{10,32}\\*?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "CardEmulation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a valid AID."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public categoryAllowsForegroundPreference(Ljava/lang/String;)Z
    .locals 4
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const-string v2, "payment"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .local v0, "preferForeground":Z
    :try_start_0
    iget-object v2, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nfc_payment_foreground"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .end local v0    # "preferForeground":Z
    :goto_0
    return v0

    .restart local v0    # "preferForeground":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .end local v0    # "preferForeground":Z
    :cond_1
    move v0, v1

    goto :goto_0

    .restart local v0    # "preferForeground":Z
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public disableAutoRouting()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v3}, Landroid/nfc/INfcCardEmulation;->disableAutoRouting()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v3, :cond_0

    const-string v3, "CardEmulation"

    const-string v4, "Failed to recover CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v3}, Landroid/nfc/INfcCardEmulation;->disableAutoRouting()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, "ee":Landroid/os/RemoteException;
    const-string v3, "CardEmulation"

    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableAutoRouting()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v3}, Landroid/nfc/INfcCardEmulation;->enableAutoRouting()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v3, :cond_0

    const-string v3, "CardEmulation"

    const-string v4, "Failed to recover CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v3}, Landroid/nfc/INfcCardEmulation;->enableAutoRouting()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, "ee":Landroid/os/RemoteException;
    const-string v3, "CardEmulation"

    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAidSizeForServiceInPercent(Landroid/content/ComponentName;)I
    .locals 5
    .param p1, "app"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4, p1}, Landroid/nfc/INfcCardEmulation;->getAidSizeForServiceInPercent(ILandroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v3, :cond_0

    const-string v3, "CardEmulation"

    const-string v4, "Failed to recover CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4, p1}, Landroid/nfc/INfcCardEmulation;->getAidSizeForServiceInPercent(ILandroid/content/ComponentName;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, "ee":Landroid/os/RemoteException;
    const-string v3, "CardEmulation"

    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAidsForService(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-interface {v4, v5, p1, p2}, Landroid/nfc/INfcCardEmulation;->getAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v2

    .local v2, "group":Landroid/nfc/cardemulation/AidGroup;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_0
    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v4, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v4, :cond_1

    const-string v4, "CardEmulation"

    const-string v5, "Failed to recover CardEmulationService."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_1
    sget-object v4, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-interface {v4, v5, p1, p2}, Landroid/nfc/INfcCardEmulation;->getAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v2

    .restart local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    :catch_1
    move-exception v1

    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "CardEmulation"

    const-string v5, "Failed to recover CardEmulationService."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPaymentDefaultServiceInfo()Landroid/nfc/cardemulation/ApduServiceInfo;
    .locals 5

    .prologue
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/nfc/INfcCardEmulation;->getPaymentDefaultServiceInfo(I)Landroid/nfc/cardemulation/ApduServiceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v3, :cond_0

    const-string v3, "CardEmulation"

    const-string v4, "Failed to recover CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/nfc/INfcCardEmulation;->getPaymentDefaultServiceInfo(I)Landroid/nfc/cardemulation/ApduServiceInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, "ee":Landroid/os/RemoteException;
    const-string v3, "CardEmulation"

    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPaymentPriority()Landroid/content/ComponentName;
    .locals 5

    .prologue
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/nfc/INfcCardEmulation;->getPaymentPriority(I)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v3, :cond_0

    const-string v3, "CardEmulation"

    const-string v4, "Failed to recover CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/nfc/INfcCardEmulation;->getPaymentPriority(I)Landroid/content/ComponentName;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, "ee":Landroid/os/RemoteException;
    const-string v3, "CardEmulation"

    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSelectionModeForCategory(Ljava/lang/String;)I
    .locals 3
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    const-string v1, "payment"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_payment_default_component"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "defaultComponent":Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .end local v0    # "defaultComponent":Ljava/lang/String;
    :goto_0
    return v1

    .restart local v0    # "defaultComponent":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .end local v0    # "defaultComponent":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getServices(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4, p1}, Landroid/nfc/INfcCardEmulation;->getServices(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v3, :cond_0

    const-string v3, "CardEmulation"

    const-string v4, "Failed to recover CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4, p1}, Landroid/nfc/INfcCardEmulation;->getServices(ILjava/lang/String;)Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, "ee":Landroid/os/RemoteException;
    const-string v3, "CardEmulation"

    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUsedAidTableSizeInPercent(Ljava/lang/String;)I
    .locals 5
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4, p1}, Landroid/nfc/INfcCardEmulation;->getUsedAidTableSizeInPercent(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v3, :cond_0

    const-string v3, "CardEmulation"

    const-string v4, "Failed to recover CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4, p1}, Landroid/nfc/INfcCardEmulation;->getUsedAidTableSizeInPercent(ILjava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, "ee":Landroid/os/RemoteException;
    const-string v3, "CardEmulation"

    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public initializePaymentDefault(I)V
    .locals 4
    .param p1, "necessity"    # I

    .prologue
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcCardEmulation;->initializePaymentDefault(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v2, :cond_0

    const-string v2, "CardEmulation"

    const-string v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcCardEmulation;->initializePaymentDefault(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, "ee":Landroid/os/RemoteException;
    const-string v2, "CardEmulation"

    const-string v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isDefaultServiceForAid(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "aid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4, p1, p2}, Landroid/nfc/INfcCardEmulation;->isDefaultServiceForAid(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v3, :cond_0

    const-string v3, "CardEmulation"

    const-string v4, "Failed to recover CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4, p1, p2}, Landroid/nfc/INfcCardEmulation;->isDefaultServiceForAid(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, "ee":Landroid/os/RemoteException;
    const-string v3, "CardEmulation"

    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isDefaultServiceForCategory(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4, p1, p2}, Landroid/nfc/INfcCardEmulation;->isDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v3, :cond_0

    const-string v3, "CardEmulation"

    const-string v4, "Failed to recover CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4, p1, p2}, Landroid/nfc/INfcCardEmulation;->isDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, "ee":Landroid/os/RemoteException;
    const-string v3, "CardEmulation"

    const-string v4, "Failed to recover CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isRegisteredService(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5
    .param p1, "app"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4, p1, p2}, Landroid/nfc/INfcCardEmulation;->isRegisteredService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v3, :cond_0

    const-string v3, "CardEmulation"

    const-string v4, "Failed to recover CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4, p1, p2}, Landroid/nfc/INfcCardEmulation;->isRegisteredService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, "ee":Landroid/os/RemoteException;
    const-string v3, "CardEmulation"

    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method recoverService()V
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getCardEmulationService()Landroid/nfc/INfcCardEmulation;

    move-result-object v1

    sput-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    return-void
.end method

.method public registerAidsForService(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)Z
    .locals 6
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    new-instance v0, Landroid/nfc/cardemulation/AidGroup;

    invoke-direct {v0, p3, p2}, Landroid/nfc/cardemulation/AidGroup;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .local v0, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    :try_start_0
    sget-object v4, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-interface {v4, v5, p1, v0}, Landroid/nfc/INfcCardEmulation;->registerAidGroupForService(ILandroid/content/ComponentName;Landroid/nfc/cardemulation/AidGroup;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    return v3

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v4, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v4, :cond_0

    const-string v4, "CardEmulation"

    const-string v5, "Failed to recover CardEmulationService."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v4, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-interface {v4, v5, p1, v0}, Landroid/nfc/INfcCardEmulation;->registerAidGroupForService(ILandroid/content/ComponentName;Landroid/nfc/cardemulation/AidGroup;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    goto :goto_0

    :catch_1
    move-exception v2

    .local v2, "ee":Landroid/os/RemoteException;
    const-string v4, "CardEmulation"

    const-string v5, "Failed to reach CardEmulationService."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerService(Landroid/content/ComponentName;Ljava/lang/String;)I
    .locals 6
    .param p1, "app"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x2397

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "service or category is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, p1, p2, v5}, Landroid/nfc/INfcCardEmulation;->registerService(ILandroid/content/ComponentName;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v3, :cond_1

    const-string v3, "CardEmulation"

    const-string v4, "Failed to recover CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_1
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, p1, p2, v5}, Landroid/nfc/INfcCardEmulation;->registerService(ILandroid/content/ComponentName;Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, "ee":Landroid/os/RemoteException;
    const-string v3, "CardEmulation"

    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerService(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 4
    .param p1, "app"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "requester"    # I

    .prologue
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2, p3}, Landroid/nfc/INfcCardEmulation;->registerService(ILandroid/content/ComponentName;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v2, :cond_0

    const-string v2, "CardEmulation"

    const-string v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2, p3}, Landroid/nfc/INfcCardEmulation;->registerService(ILandroid/content/ComponentName;Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, "ee":Landroid/os/RemoteException;
    const-string v2, "CardEmulation"

    const-string v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeAidsForService(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4, p1, p2}, Landroid/nfc/INfcCardEmulation;->removeAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v3, :cond_0

    const-string v3, "CardEmulation"

    const-string v4, "Failed to recover CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4, p1, p2}, Landroid/nfc/INfcCardEmulation;->removeAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, "ee":Landroid/os/RemoteException;
    const-string v3, "CardEmulation"

    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDefaultForNextTap(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4, p1}, Landroid/nfc/INfcCardEmulation;->setDefaultForNextTap(ILandroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v3, :cond_0

    const-string v3, "CardEmulation"

    const-string v4, "Failed to recover CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4, p1}, Landroid/nfc/INfcCardEmulation;->setDefaultForNextTap(ILandroid/content/ComponentName;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, "ee":Landroid/os/RemoteException;
    const-string v3, "CardEmulation"

    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDefaultServiceForCategory(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4, p1, p2}, Landroid/nfc/INfcCardEmulation;->setDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v3, :cond_0

    const-string v3, "CardEmulation"

    const-string v4, "Failed to recover CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4, p1, p2}, Landroid/nfc/INfcCardEmulation;->setDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, "ee":Landroid/os/RemoteException;
    const-string v3, "CardEmulation"

    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLockPassword(Ljava/lang/String;)Z
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "data is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v3, p1}, Landroid/nfc/INfcCardEmulation;->setLockPassword(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v3, :cond_1

    const-string v3, "CardEmulation"

    const-string v4, "Failed to recover CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_1
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v3, p1}, Landroid/nfc/INfcCardEmulation;->setLockPassword(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, "ee":Landroid/os/RemoteException;
    const-string v3, "CardEmulation"

    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOtherService(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "activity or service or category is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4, p1}, Landroid/nfc/INfcCardEmulation;->setOtherService(ILandroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v3, :cond_1

    const-string v3, "CardEmulation"

    const-string v4, "Failed to recover CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_1
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4, p1}, Landroid/nfc/INfcCardEmulation;->setOtherService(ILandroid/content/ComponentName;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, "ee":Landroid/os/RemoteException;
    const-string v3, "CardEmulation"

    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPreferredService(Landroid/app/Activity;Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "service"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "activity or service or category is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Activity must be resumed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :try_start_0
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v3, p2}, Landroid/nfc/INfcCardEmulation;->setPreferredService(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v3, :cond_3

    const-string v3, "CardEmulation"

    const-string v4, "Failed to recover CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_1
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v3, p2}, Landroid/nfc/INfcCardEmulation;->setPreferredService(Landroid/content/ComponentName;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, "ee":Landroid/os/RemoteException;
    const-string v3, "CardEmulation"

    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public supportsAidPrefixRegistration()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v3}, Landroid/nfc/INfcCardEmulation;->supportsAidPrefixRegistration()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v3, :cond_0

    const-string v3, "CardEmulation"

    const-string v4, "Failed to recover CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v3}, Landroid/nfc/INfcCardEmulation;->supportsAidPrefixRegistration()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, "ee":Landroid/os/RemoteException;
    const-string v3, "CardEmulation"

    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public supportsAutoRouting()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v3}, Landroid/nfc/INfcCardEmulation;->supportsAutoRouting()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v3, :cond_0

    const-string v3, "CardEmulation"

    const-string v4, "Failed to recover CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v3}, Landroid/nfc/INfcCardEmulation;->supportsAutoRouting()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, "ee":Landroid/os/RemoteException;
    const-string v3, "CardEmulation"

    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterOtherService(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "app"    # Landroid/content/ComponentName;

    .prologue
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "service or category is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcCardEmulation;->unregisterOtherService(ILandroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-eqz v2, :cond_1

    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcCardEmulation;->unregisterOtherService(ILandroid/content/ComponentName;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, "ee":Landroid/os/RemoteException;
    const-string v2, "CardEmulation"

    const-string v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unsetOtherService(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "activity or service or category is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4, p1}, Landroid/nfc/INfcCardEmulation;->unsetOtherService(ILandroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v3, :cond_1

    const-string v3, "CardEmulation"

    const-string v4, "Failed to recover CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_1
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4, p1}, Landroid/nfc/INfcCardEmulation;->unsetOtherService(ILandroid/content/ComponentName;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, "ee":Landroid/os/RemoteException;
    const-string v3, "CardEmulation"

    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unsetPreferredService(Landroid/app/Activity;)Z
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "activity is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Activity must be resumed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :try_start_0
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v3}, Landroid/nfc/INfcCardEmulation;->unsetPreferredService()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v3, :cond_2

    const-string v3, "CardEmulation"

    const-string v4, "Failed to recover CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_1
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v3}, Landroid/nfc/INfcCardEmulation;->unsetPreferredService()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, "ee":Landroid/os/RemoteException;
    const-string v3, "CardEmulation"

    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
