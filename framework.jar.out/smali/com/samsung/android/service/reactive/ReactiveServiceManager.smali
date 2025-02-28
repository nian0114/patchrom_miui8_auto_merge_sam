.class public final Lcom/samsung/android/service/reactive/ReactiveServiceManager;
.super Ljava/lang/Object;
.source "ReactiveServiceManager.java"


# static fields
.field public static final FLAG_ACTIVATED:I = 0x1

.field public static final FLAG_DEACTIVATED:I = 0x0

.field public static final FLAG_DEACTIVATED_WITH_ACCOUNT:I = 0x3

.field public static final FLAG_TRIGGERED:I = 0x2

.field public static final FRP_FLAG:I = 0x2

.field public static final FRP_SERIVCE_OPERATION_FAILED:I = -0x7

.field public static final GOOGLE_FACTORY_RESET_PROTECTION_IS_SUPPORTED:I = 0x2

.field private static final RC_VT_VALID_SIZE:I = 0x20

.field public static final REACTIVATION_FLAG:I = 0x0

.field public static final REACTIVE_SERVICE_EXCEPTION_ERROR:I = -0xa

.field public static final REACTIVE_SERVICE_INVALID_ARGUMENTS:I = -0x8

.field public static final REACTIVE_SERVICE_IS_NOT_EXIST:I = -0x9

.field public static final REACTIVE_SERVICE_IS_NOT_SUPPORTED:I = 0x0

.field public static final REACTIVE_SERVICE_OPERATION_FAILED:I = -0x6

.field public static final REACTIVE_SERVICE_RETURN_FLAG_IS_NOT_EXIST:I = -0x3

.field public static final REACTIVE_SERVICE_RETURN_NATIVE_ERROR:I = -0x1

.field public static final REACTIVE_SERVICE_RETURN_NO_ERROR:I = 0x0

.field public static final REACTIVE_SERVICE_RETURN_PERMISSION_DENIED:I = -0x5

.field public static final REACTIVE_SERVICE_RETURN_STRING_IS_NOT_EXIST:I = -0x4

.field public static final REACTIVE_SERVICE_RETURN_UNSUPPORTED_OPERATION:I = -0x2

.field private static final RS_GOOGLE_NWD_SUPPORTED:I = 0x4

.field private static final RS_IS_NOT_SUPPORTED:I = 0x0

.field private static final RS_SAMSUNG_NWD_SUPPORTED:I = 0x2

.field private static final RS_SAMSUNG_SWD_SUPPORTED:I = 0x1

.field public static final SAMSUNG_GOOGLE_REACTIVE_SERVICES_ARE_SUPPORTED:I = 0x3

.field public static final SAMSUNG_REACTIVE_SERVICE_IS_SUPPORTED:I = 0x1

.field public static final SERVICE_FLAG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ReactiveServiceManager"

.field private static final USE_SAMSUNG_ACCOUNT:I = 0x0

.field private static final USE_VERIFICATION_TOKEN:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/service/reactive/IReactiveService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mContext:Landroid/content/Context;

    const-string v0, "ReactiveService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/reactive/IReactiveService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    return-void
.end method

.method private toHex([B)Ljava/lang/String;
    .locals 5
    .param p1, "bytes"    # [B

    .prologue
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "hexNumber":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "hexNumber":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public disable([B)I
    .locals 7
    .param p1, "vt"    # [B

    .prologue
    if-eqz p1, :cond_0

    array-length v3, p1

    const/16 v4, 0x20

    if-eq v3, v4, :cond_2

    :cond_0
    const/4 v2, -0x8

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v2, -0x2

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->toHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/android/service/reactive/IReactiveService;->setFlag(IILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .local v2, "ret":I
    if-eqz v2, :cond_1

    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disable() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "ret":I
    :catch_0
    move-exception v1

    .local v1, "npe":Ljava/lang/NullPointerException;
    const/16 v2, -0x9

    goto :goto_0

    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v2, -0xa

    goto :goto_0
.end method

.method public disableWithAccountId(Ljava/lang/String;)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_1

    const/4 v2, -0x8

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v2, -0x2

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-interface {v3, v4, v5, p1}, Lcom/samsung/android/service/reactive/IReactiveService;->setFlag(IILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .local v2, "ret":I
    if-eqz v2, :cond_0

    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableWithAccountId() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "ret":I
    :catch_0
    move-exception v1

    .local v1, "npe":Ljava/lang/NullPointerException;
    const/16 v2, -0x9

    goto :goto_0

    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v2, -0xa

    goto :goto_0
.end method

.method public enable([B)I
    .locals 7
    .param p1, "rc"    # [B

    .prologue
    const/4 v5, 0x1

    if-eqz p1, :cond_0

    array-length v3, p1

    const/16 v4, 0x20

    if-eq v3, v4, :cond_2

    :cond_0
    const/4 v2, -0x8

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v3

    if-eq v3, v5, :cond_3

    const/4 v2, -0x2

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->toHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/android/service/reactive/IReactiveService;->setFlag(IILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .local v2, "ret":I
    if-eqz v2, :cond_1

    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enable() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "ret":I
    :catch_0
    move-exception v1

    .local v1, "npe":Ljava/lang/NullPointerException;
    const/16 v2, -0x9

    goto :goto_0

    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v2, -0xa

    goto :goto_0
.end method

.method public getErrorCode()I
    .locals 4

    .prologue
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3}, Lcom/samsung/android/service/reactive/IReactiveService;->getErrorCode()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v2

    .local v2, "npe":Ljava/lang/NullPointerException;
    const/16 v1, -0x9

    goto :goto_0

    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0xa

    goto :goto_0
.end method

.method public getFlag(I)I
    .locals 6
    .param p1, "flag"    # I

    .prologue
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/reactive/IReactiveService;->getFlag(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .local v2, "ret":I
    const/4 v3, 0x2

    if-gt v2, v3, :cond_0

    if-gez v2, :cond_1

    :cond_0
    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFlag() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "ret":I
    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "npe":Ljava/lang/NullPointerException;
    const/16 v2, -0x9

    goto :goto_0

    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v2, -0xa

    goto :goto_0
.end method

.method public getRandom()[B
    .locals 7

    .prologue
    const/4 v0, 0x0

    .local v0, "buffer":[B
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    const-string v4, "ReactiveServiceManager"

    const-string v5, "Invalid operation."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v4}, Lcom/samsung/android/service/reactive/IReactiveService;->getRandom()[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v3, -0x6

    .local v3, "ret":I
    :goto_1
    if-gez v3, :cond_2

    const-string v4, "ReactiveServiceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRandom() : error code["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object v4, v0

    goto :goto_0

    .end local v3    # "ret":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "ret":I
    goto :goto_1

    .end local v3    # "ret":I
    :catch_0
    move-exception v2

    .local v2, "npe":Ljava/lang/NullPointerException;
    const/16 v3, -0x9

    .restart local v3    # "ret":I
    goto :goto_1

    .end local v2    # "npe":Ljava/lang/NullPointerException;
    .end local v3    # "ret":I
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v3, -0xa

    .restart local v3    # "ret":I
    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v4, "ReactiveServiceManager"

    const-string v5, "Success of generate random numbers."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getRawServiceValueForAtCommand()I
    .locals 3

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v2}, Lcom/samsung/android/service/reactive/IReactiveService;->getServiceSupport()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "npe":Ljava/lang/NullPointerException;
    const/16 v2, -0x9

    goto :goto_0

    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v2, -0xa

    goto :goto_0
.end method

.method public getServiceSupport()I
    .locals 6

    .prologue
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3}, Lcom/samsung/android/service/reactive/IReactiveService;->getServiceSupport()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .local v2, "supported":I
    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Supported : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const/4 v3, 0x0

    .end local v2    # "supported":I
    :goto_0
    return v3

    :catch_0
    move-exception v1

    .local v1, "npe":Ljava/lang/NullPointerException;
    const/16 v3, -0x9

    goto :goto_0

    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v3, -0xa

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "supported":I
    :pswitch_1
    const/4 v3, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v3, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v3, 0x3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getStatus()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ReactiveServiceManager"

    const-string v3, "ReactiveService is not exist."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x9

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v1

    .local v1, "which":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v0

    .local v0, "ret":I
    :goto_1
    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .end local v0    # "ret":I
    :cond_2
    if-ne v1, v3, :cond_3

    invoke-virtual {p0, v3}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v0

    .restart local v0    # "ret":I
    goto :goto_1

    .end local v0    # "ret":I
    :cond_3
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public getString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3}, Lcom/samsung/android/service/reactive/IReactiveService;->getString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "ReactiveServiceManager"

    const-string v4, "getString() : Service is not exist."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeString()I
    .locals 6

    .prologue
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3}, Lcom/samsung/android/service/reactive/IReactiveService;->removeString()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .local v2, "ret":I
    if-gez v2, :cond_0

    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeString() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "ret":I
    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "npe":Ljava/lang/NullPointerException;
    const/16 v2, -0x9

    goto :goto_0

    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v2, -0xa

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ret":I
    :cond_0
    const-string v3, "ReactiveServiceManager"

    const-string v4, "removeString Success "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sessionAccept([B)[B
    .locals 5
    .param p1, "input"    # [B

    .prologue
    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string v3, "ReactiveServiceManager"

    const-string v4, "SessionAccept() : Invalid argument"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/reactive/IReactiveService;->sessionAccept([B)[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .local v2, "ret":[B
    goto :goto_0

    .end local v2    # "ret":[B
    :catch_0
    move-exception v1

    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "ReactiveServiceManager"

    const-string v4, "SessionAccpet() : Service is not exist."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sessionComplete([B)I
    .locals 6
    .param p1, "input"    # [B

    .prologue
    if-nez p1, :cond_1

    const/4 v2, -0x8

    :cond_0
    :goto_0
    return v2

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/reactive/IReactiveService;->sessionComplete([B)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .local v2, "ret":I
    if-eqz v2, :cond_0

    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sessionComplete() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "ret":I
    :catch_0
    move-exception v1

    .local v1, "npe":Ljava/lang/NullPointerException;
    const/16 v2, -0x9

    goto :goto_0

    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v2, -0xa

    goto :goto_0
.end method

.method public setFlag(IILjava/lang/String;)I
    .locals 2
    .param p1, "flag"    # I
    .param p2, "value"    # I
    .param p3, "info"    # Ljava/lang/String;

    .prologue
    const-string v0, "ReactiveServiceManager"

    const-string v1, "setFlag() - No longer used API"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0
.end method

.method public setString(Ljava/lang/String;)I
    .locals 6
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    const/4 v2, -0x8

    :goto_0
    return v2

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/reactive/IReactiveService;->setString(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .local v2, "ret":I
    if-gez v2, :cond_1

    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setString() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "ret":I
    :catch_0
    move-exception v1

    .local v1, "npe":Ljava/lang/NullPointerException;
    const/16 v2, -0x9

    goto :goto_0

    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v2, -0xa

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ret":I
    :cond_1
    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setString() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " characters are saved."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public verify([B)I
    .locals 6
    .param p1, "vt"    # [B

    .prologue
    const/4 v5, 0x1

    if-eqz p1, :cond_0

    array-length v3, p1

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    :cond_0
    const/4 v2, -0x8

    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v3

    if-eq v3, v5, :cond_2

    const/4 v2, -0x2

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-direct {p0, p1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->toHex([B)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/service/reactive/IReactiveService;->verify(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .local v2, "ret":I
    if-gez v2, :cond_3

    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "verify() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "ret":I
    :catch_0
    move-exception v1

    .local v1, "npe":Ljava/lang/NullPointerException;
    const/16 v2, -0x9

    goto :goto_0

    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v2, -0xa

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ret":I
    :cond_3
    const-string v3, "ReactiveServiceManager"

    const-string v4, "Verification success"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public verifyWithAccountId(Ljava/lang/String;)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    const/4 v2, -0x8

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v2, -0x2

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Lcom/samsung/android/service/reactive/IReactiveService;->verify(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .local v2, "ret":I
    if-gez v2, :cond_2

    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "verifyWithAccountId() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "ret":I
    :catch_0
    move-exception v1

    .local v1, "npe":Ljava/lang/NullPointerException;
    const/16 v2, -0x9

    goto :goto_0

    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v2, -0xa

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ret":I
    :cond_2
    const-string v3, "ReactiveServiceManager"

    const-string v4, "Verification with id, success"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
