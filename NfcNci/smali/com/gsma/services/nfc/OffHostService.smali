.class public Lcom/gsma/services/nfc/OffHostService;
.super Ljava/lang/Object;
.source "OffHostService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/nfc/OffHostService$extraInfo;
    }
.end annotation


# static fields
.field public static final CATEGORY_OTHER:Ljava/lang/String; = "other"

.field public static final CATEGORY_PAYMENT:Ljava/lang/String; = "payment"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/gsma/services/nfc/OffHostService;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_INSUFFICIENT_RESOURCE:I = -0x5

.field public static final ERROR_INVALID_PARAM:I = -0x4

.field public static final ERROR_NOT_ALLOWED:I = -0x3

.field public static final ERROR_NOT_ENABLED:I = -0x2

.field public static final ERROR_NOT_SUPPORTED:I = -0x1

.field public static final ESE:Ljava/lang/String; = "eSE"

.field public static final ESE1:Ljava/lang/String; = "eSE1"

.field public static final ESE2:Ljava/lang/String; = "eSE2"

.field public static final ESIM:Ljava/lang/String; = "eSIM"

.field public static final ESIM1:Ljava/lang/String; = "eSIM1"

.field public static final ESIM2:Ljava/lang/String; = "eSIM2"

.field public static final SAP:Ljava/lang/String; = "SAP"

.field public static final SIM:Ljava/lang/String; = "SIM"

.field public static final SIM1:Ljava/lang/String; = "SIM1"

.field public static final SIM2:Ljava/lang/String; = "SIM2"

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OffHostService"

.field private static mService:Lcom/gsma/services/nfc/INfcController;


# instance fields
.field private final mAidGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gsma/services/nfc/AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mBanner:Landroid/graphics/drawable/Drawable;

.field private final mDescription:Ljava/lang/String;

.field private final mExtraInfo:Lcom/gsma/services/nfc/OffHostService$extraInfo;

.field private final mSEName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/gsma/services/nfc/OffHostService;->mService:Lcom/gsma/services/nfc/INfcController;

    .line 274
    new-instance v0, Lcom/gsma/services/nfc/OffHostService$1;

    invoke-direct {v0}, Lcom/gsma/services/nfc/OffHostService$1;-><init>()V

    sput-object v0, Lcom/gsma/services/nfc/OffHostService;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/gsma/services/nfc/OffHostService$extraInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;
    .param p3, "banner"    # Landroid/graphics/drawable/Drawable;
    .param p4, "info"    # Lcom/gsma/services/nfc/OffHostService$extraInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/gsma/services/nfc/OffHostService$extraInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gsma/services/nfc/AidGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p5, "group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gsma/services/nfc/AidGroup;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Lcom/gsma/services/nfc/OffHostService;->getServiceInterface()Lcom/gsma/services/nfc/INfcController;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/nfc/OffHostService;->mService:Lcom/gsma/services/nfc/INfcController;

    .line 64
    iput-object p1, p0, Lcom/gsma/services/nfc/OffHostService;->mDescription:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/gsma/services/nfc/OffHostService;->mSEName:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/gsma/services/nfc/OffHostService;->mBanner:Landroid/graphics/drawable/Drawable;

    .line 67
    iput-object p4, p0, Lcom/gsma/services/nfc/OffHostService;->mExtraInfo:Lcom/gsma/services/nfc/OffHostService$extraInfo;

    .line 68
    iput-object p5, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroup:Ljava/util/ArrayList;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Lcom/gsma/services/nfc/OffHostService;->getServiceInterface()Lcom/gsma/services/nfc/INfcController;

    move-result-object v1

    sput-object v1, Lcom/gsma/services/nfc/OffHostService;->mService:Lcom/gsma/services/nfc/INfcController;

    .line 53
    iput-object p1, p0, Lcom/gsma/services/nfc/OffHostService;->mDescription:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/gsma/services/nfc/OffHostService;->mSEName:Ljava/lang/String;

    .line 55
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mBanner:Landroid/graphics/drawable/Drawable;

    .line 56
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/gsma/services/nfc/OffHostService$extraInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, p3, p4, v2}, Lcom/gsma/services/nfc/OffHostService$extraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mExtraInfo:Lcom/gsma/services/nfc/OffHostService$extraInfo;

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroup:Ljava/util/ArrayList;

    .line 59
    return-void
.end method

.method private attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 315
    const-string v1, "OffHostService"

    const-string v2, "NFC service dead - attempting to recover"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    invoke-static {}, Lcom/gsma/services/nfc/OffHostService;->getServiceInterface()Lcom/gsma/services/nfc/INfcController;

    move-result-object v0

    .line 317
    .local v0, "service":Lcom/gsma/services/nfc/INfcController;
    if-nez v0, :cond_0

    .line 318
    const-string v1, "OffHostService"

    const-string v2, "Could not retrieve NFC service during service recovery"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :goto_0
    return-void

    .line 321
    :cond_0
    sput-object v0, Lcom/gsma/services/nfc/OffHostService;->mService:Lcom/gsma/services/nfc/INfcController;

    goto :goto_0
.end method

.method private static getServiceInterface()Lcom/gsma/services/nfc/INfcController;
    .locals 2

    .prologue
    .line 308
    const-string v1, "nfccontroller"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 309
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 310
    const/4 v1, 0x0

    .line 311
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/gsma/services/nfc/INfcController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/nfc/INfcController;

    move-result-object v1

    goto :goto_0
.end method

.method private resize(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .line 80
    if-eqz p1, :cond_0

    instance-of v9, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v9, :cond_1

    :cond_0
    move-object v4, p1

    .line 98
    .end local p1    # "image":Landroid/graphics/drawable/Drawable;
    .local v4, "image":Ljava/lang/Object;
    :goto_0
    return-object v4

    .end local v4    # "image":Ljava/lang/Object;
    .restart local p1    # "image":Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object v9, p1

    .line 82
    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 83
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 84
    .local v8, "width":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 85
    .local v3, "height":I
    const/16 v6, 0x410

    .line 86
    .local v6, "sizeX":I
    const/16 v7, 0x180

    .line 87
    .local v7, "sizeY":I
    if-lez v8, :cond_2

    if-lez v3, :cond_2

    .line 88
    int-to-float v9, v8

    int-to-float v10, v3

    div-float v5, v9, v10

    .line 89
    .local v5, "ratio":F
    int-to-float v9, v6

    div-float/2addr v9, v5

    float-to-int v7, v9

    .line 91
    .end local v5    # "ratio":F
    :cond_2
    const/4 v1, 0x0

    .line 93
    .local v1, "bitmapResized":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    :try_start_0
    invoke-static {v0, v6, v7, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 97
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "image":Landroid/graphics/drawable/Drawable;
    invoke-direct {p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local p1    # "image":Landroid/graphics/drawable/Drawable;
    move-object v4, p1

    .line 98
    .restart local v4    # "image":Ljava/lang/Object;
    goto :goto_0

    .line 94
    .end local v4    # "image":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/OutOfMemoryError;
    move-object v4, p1

    .line 95
    .restart local v4    # "image":Ljava/lang/Object;
    goto :goto_0
.end method


# virtual methods
.method public clearBanner()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/nfc/OffHostService;->mBanner:Landroid/graphics/drawable/Drawable;

    .line 142
    return-void
.end method

.method public commit()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/utils/InsufficientResourcesException;
        }
    .end annotation

    .prologue
    .line 202
    :try_start_0
    sget-object v2, Lcom/gsma/services/nfc/OffHostService;->mService:Lcom/gsma/services/nfc/INfcController;

    invoke-interface {v2, p0}, Lcom/gsma/services/nfc/INfcController;->commit(Lcom/gsma/services/nfc/OffHostService;)I

    move-result v1

    .line 203
    .local v1, "res":I
    if-nez v1, :cond_1

    .line 217
    .end local v1    # "res":I
    :cond_0
    :goto_0
    return-void

    .line 205
    .restart local v1    # "res":I
    :cond_1
    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    .line 206
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "The service has been defined through the Manifest and cannot be committed"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v1    # "res":I
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/gsma/services/nfc/OffHostService;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0

    .line 208
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "res":I
    :cond_2
    const/4 v2, -0x4

    if-ne v1, v2, :cond_3

    .line 209
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "An illegal or inappropriate argument"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 211
    :cond_3
    const/4 v2, -0x5

    if-ne v1, v2, :cond_0

    .line 212
    new-instance v2, Lcom/gsma/services/utils/InsufficientResourcesException;

    const-string v3, "Insufficient resources are available in the routing table"

    invoke-direct {v2, v3}, Lcom/gsma/services/utils/InsufficientResourcesException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public defineAidGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/gsma/services/nfc/AidGroup;
    .locals 3
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    .line 170
    const-string v1, "payment"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "other"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 174
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An illegal or inappropriate argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    :cond_2
    new-instance v0, Lcom/gsma/services/nfc/AidGroup;

    invoke-direct {v0, p2, p1}, Lcom/gsma/services/nfc/AidGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .local v0, "group":Lcom/gsma/services/nfc/AidGroup;
    iget-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroup:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    return-object v0
.end method

.method public deleteAidGroup(Lcom/gsma/services/nfc/AidGroup;)V
    .locals 4
    .param p1, "group"    # Lcom/gsma/services/nfc/AidGroup;

    .prologue
    .line 185
    if-nez p1, :cond_0

    .line 186
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "An illegal or inappropriate argument"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/nfc/AidGroup;

    .line 189
    .local v0, "aidgroup":Lcom/gsma/services/nfc/AidGroup;
    invoke-virtual {v0, p1}, Lcom/gsma/services/nfc/AidGroup;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    iget-object v2, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 193
    .end local v0    # "aidgroup":Lcom/gsma/services/nfc/AidGroup;
    :cond_2
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 221
    if-ne p0, p1, :cond_1

    .line 239
    :cond_0
    :goto_0
    return v1

    .line 223
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 224
    goto :goto_0

    .line 225
    :cond_2
    instance-of v3, p1, Lcom/gsma/services/nfc/OffHostService;

    if-nez v3, :cond_3

    move v1, v2

    .line 226
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 227
    check-cast v0, Lcom/gsma/services/nfc/OffHostService;

    .line 228
    .local v0, "s":Lcom/gsma/services/nfc/OffHostService;
    iget-object v3, p0, Lcom/gsma/services/nfc/OffHostService;->mDescription:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/gsma/services/nfc/OffHostService;->mDescription:Ljava/lang/String;

    iget-object v4, v0, Lcom/gsma/services/nfc/OffHostService;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 230
    goto :goto_0

    .line 231
    :cond_4
    iget-object v3, p0, Lcom/gsma/services/nfc/OffHostService;->mSEName:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/gsma/services/nfc/OffHostService;->mSEName:Ljava/lang/String;

    iget-object v4, v0, Lcom/gsma/services/nfc/OffHostService;->mSEName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 232
    goto :goto_0

    .line 235
    :cond_5
    iget-object v3, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroup:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroup:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/gsma/services/nfc/OffHostService;->mAidGroup:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 236
    goto :goto_0
.end method

.method public getAidGroups()[Lcom/gsma/services/nfc/AidGroup;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 154
    iget-object v3, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroup:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    :cond_0
    return-object v0

    .line 156
    :cond_1
    iget-object v3, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroup:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 157
    .local v2, "size":I
    if-eqz v2, :cond_0

    .line 159
    new-array v0, v2, [Lcom/gsma/services/nfc/AidGroup;

    .line 160
    .local v0, "group":[Lcom/gsma/services/nfc/AidGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 161
    iget-object v3, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroup:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/nfc/AidGroup;

    aput-object v3, v0, v1

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getBanner()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/gsma/services/nfc/OffHostService;->mBanner:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/gsma/services/nfc/OffHostService;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraInfo()Lcom/gsma/services/nfc/OffHostService$extraInfo;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/gsma/services/nfc/OffHostService;->mExtraInfo:Lcom/gsma/services/nfc/OffHostService$extraInfo;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/gsma/services/nfc/OffHostService;->mSEName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 245
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setBanner(I)V
    .locals 4
    .param p1, "resourceID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 114
    if-nez p1, :cond_0

    .line 115
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    const-string v3, "an invalid identifier"

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    :cond_0
    :try_start_0
    sget-object v2, Lcom/gsma/services/nfc/OffHostService;->mService:Lcom/gsma/services/nfc/INfcController;

    iget-object v3, p0, Lcom/gsma/services/nfc/OffHostService;->mExtraInfo:Lcom/gsma/services/nfc/OffHostService$extraInfo;

    iget-object v3, v3, Lcom/gsma/services/nfc/OffHostService$extraInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Lcom/gsma/services/nfc/INfcController;->getBanner(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 119
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    const-string v3, "an invalid identifier"

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 121
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    const-string v3, "an invalid identifier"

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_1
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v2}, Lcom/gsma/services/nfc/OffHostService;->resize(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/gsma/services/nfc/OffHostService;->mBanner:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 128
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 123
    :catch_1
    move-exception v1

    .line 124
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/gsma/services/nfc/OffHostService;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0

    .line 125
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    const-string v3, "an invalid identifier"

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setBanner(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "banner"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "banner is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    invoke-direct {p0, p1}, Lcom/gsma/services/nfc/OffHostService;->resize(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/nfc/OffHostService;->mBanner:Landroid/graphics/drawable/Drawable;

    .line 108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 260
    iget-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mSEName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mExtraInfo:Lcom/gsma/services/nfc/OffHostService$extraInfo;

    invoke-virtual {v1, p1, p2}, Lcom/gsma/services/nfc/OffHostService$extraInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 263
    iget-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mBanner:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 264
    iget-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mBanner:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mBanner:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 266
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 269
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    iget-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 271
    iget-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroup:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 272
    :cond_1
    return-void

    .line 263
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
