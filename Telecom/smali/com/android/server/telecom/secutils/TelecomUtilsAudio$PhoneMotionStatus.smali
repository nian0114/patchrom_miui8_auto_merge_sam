.class final enum Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;
.super Ljava/lang/Enum;
.source "TelecomUtilsAudio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/TelecomUtilsAudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PhoneMotionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

.field public static final enum FLAT:Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

.field public static final enum MOVING:Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

.field public static final enum NONE:Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;->NONE:Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    new-instance v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    const-string v1, "FLAT"

    invoke-direct {v0, v1, v3}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;->FLAT:Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    new-instance v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    const-string v1, "MOVING"

    invoke-direct {v0, v1, v4}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;->MOVING:Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    sget-object v1, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;->NONE:Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;->FLAT:Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;->MOVING:Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;->$VALUES:[Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;
    .locals 1

    .prologue
    const-class v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;->$VALUES:[Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    invoke-virtual {v0}, [Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/telecom/secutils/TelecomUtilsAudio$PhoneMotionStatus;

    return-object v0
.end method
