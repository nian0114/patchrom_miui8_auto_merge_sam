.class public Landroid/hardware/scontext/SContextAutoBrightnessAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextAutoBrightnessAttribute.java"


# static fields
.field private static MODE_CONFIGURATION:I = 0x0

.field private static MODE_DEVICE_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SContextAutoBrightnessAttribute"


# instance fields
.field private mDeviceMode:I

.field private mLuminanceTable:[B

.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput v0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->MODE_DEVICE_MODE:I

    const/4 v0, 0x1

    sput v0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->MODE_CONFIGURATION:I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mLuminanceTable:[B

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mDeviceMode:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mMode:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "deviceMode"    # I

    .prologue
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mLuminanceTable:[B

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mDeviceMode:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mMode:I

    iput p1, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mDeviceMode:I

    sget v0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->MODE_DEVICE_MODE:I

    iput v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mMode:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "luminanceTable"    # [B

    .prologue
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mLuminanceTable:[B

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mDeviceMode:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mMode:I

    iput-object p1, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mLuminanceTable:[B

    sget v0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->MODE_CONFIGURATION:I

    iput v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mMode:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->setAttribute()V

    return-void
.end method

.method private setAttribute()V
    .locals 3

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "attribute":Landroid/os/Bundle;
    const-string v1, "mode"

    iget v2, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mMode:I

    sget v2, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->MODE_CONFIGURATION:I

    if-ne v1, v2, :cond_1

    const-string v1, "luminance_config_data"

    iget-object v2, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mLuminanceTable:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_0
    :goto_0
    const/16 v1, 0x27

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void

    :cond_1
    iget v1, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mMode:I

    sget v2, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->MODE_DEVICE_MODE:I

    if-ne v1, v2, :cond_0

    const-string v1, "device_mode"

    iget v2, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mDeviceMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method checkAttribute()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mMode:I

    sget v2, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->MODE_DEVICE_MODE:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mDeviceMode:I

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mDeviceMode:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    :cond_0
    const-string v1, "SContextAutoBrightnessAttribute"

    const-string v2, "The device mode is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mMode:I

    sget v2, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->MODE_CONFIGURATION:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mLuminanceTable:[B

    if-nez v1, :cond_2

    const-string v1, "SContextAutoBrightnessAttribute"

    const-string v2, "The luminance configration data is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
