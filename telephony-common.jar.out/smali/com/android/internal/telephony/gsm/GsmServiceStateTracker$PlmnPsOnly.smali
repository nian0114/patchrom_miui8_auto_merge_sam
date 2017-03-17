.class final enum Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;
.super Ljava/lang/Enum;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PlmnPsOnly"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;

.field public static final enum Bolt:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;

.field public static final enum None:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;

.field public static final enum Smartfren:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;

    const-string v1, "Bolt"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;->Bolt:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;

    new-instance v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;

    const-string v1, "Smartfren"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;->Smartfren:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;

    new-instance v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;

    const-string v1, "None"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;->None:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;->Bolt:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;->Smartfren:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;->None:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;->$VALUES:[Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;->$VALUES:[Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$PlmnPsOnly;

    return-object v0
.end method
