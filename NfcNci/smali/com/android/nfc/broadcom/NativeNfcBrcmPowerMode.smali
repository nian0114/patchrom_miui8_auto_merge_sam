.class public Lcom/android/nfc/broadcom/NativeNfcBrcmPowerMode;
.super Ljava/lang/Object;
.source "NativeNfcBrcmPowerMode.java"


# static fields
.field public static final POWER_STATE_OFF:I = 0x1

.field public static final POWER_STATE_SCREEN_OFF:I = 0x2

.field public static final POWER_STATE_SCREEN_ON_LOCKED:I = 0x3

.field public static final POWER_STATE_SCREEN_ON_UNLOCKED:I = 0x4

.field public static final POWER_STATE_UNKNOWN:I


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "NativeNfcBrcmPowerMode"

    iput-object v0, p0, Lcom/android/nfc/broadcom/NativeNfcBrcmPowerMode;->TAG:Ljava/lang/String;

    return-void
.end method

.method private native doSetPowerMode(I)Z
.end method


# virtual methods
.method public setPowerMode(I)Z
    .locals 3
    .param p1, "powerState"    # I

    .prologue
    .line 36
    const-string v0, "NativeNfcBrcmPowerMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPowerMode; state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-direct {p0, p1}, Lcom/android/nfc/broadcom/NativeNfcBrcmPowerMode;->doSetPowerMode(I)Z

    move-result v0

    return v0
.end method
