.class public final enum Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;
.super Ljava/lang/Enum;
.source "RcsTransferConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/common/RcsTransferConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SessionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

.field public static final enum FILE_TRANSFER:Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

.field public static final enum IM:Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

.field public static final enum IMAGE_SHARE:Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

.field public static final enum IM_GROUP:Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

.field public static final enum VIDEO_SHARE:Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    const-string v1, "FILE_TRANSFER"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->FILE_TRANSFER:Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    .line 42
    new-instance v0, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    const-string v1, "IMAGE_SHARE"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->IMAGE_SHARE:Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    .line 46
    new-instance v0, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    const-string v1, "VIDEO_SHARE"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->VIDEO_SHARE:Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    .line 50
    new-instance v0, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    const-string v1, "IM"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->IM:Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    .line 55
    new-instance v0, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    const-string v1, "IM_GROUP"

    invoke-direct {v0, v1, v6, v6}, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->IM_GROUP:Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    sget-object v1, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->FILE_TRANSFER:Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->IMAGE_SHARE:Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->VIDEO_SHARE:Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->IM:Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->IM_GROUP:Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->$VALUES:[Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput p3, p0, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->value:I

    .line 61
    return-void
.end method

.method public static getFromInt(I)Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->values()[Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    return-object v0
.end method

.method public static values()[Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->$VALUES:[Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    invoke-virtual {v0}, [Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->value:I

    return v0
.end method
