.class Landroid/os/DVFSHelper$ModelMSM8976;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelMSM8976"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 6

    .prologue
    const v5, 0x1b8a00

    const v4, 0x189c00

    const v3, 0x13ec00

    const/16 v2, 0x3a3

    const/4 v1, 0x4

    .line 2406
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelMSM8976;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 2407
    iput v4, p0, Landroid/os/DVFSHelper$ModelMSM8976;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2408
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8976;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    .line 2409
    iput v4, p0, Landroid/os/DVFSHelper$ModelMSM8976;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2410
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8976;->GALLERY_TOUCH_BOOST_TIMEOUT:I

    .line 2411
    const v0, 0xd7a00

    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8976;->LIST_SCROLL_ARM_FREQ:I

    .line 2412
    iput v3, p0, Landroid/os/DVFSHelper$ModelMSM8976;->AMS_RESUME_ARM_FREQ:I

    .line 2413
    iput v2, p0, Landroid/os/DVFSHelper$ModelMSM8976;->AMS_RESUME_BUS_FREQ:I

    .line 2414
    iput v1, p0, Landroid/os/DVFSHelper$ModelMSM8976;->AMS_RESUME_CPU_CORE:I

    .line 2415
    const/16 v0, 0x258

    sput v0, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    .line 2416
    iput v5, p0, Landroid/os/DVFSHelper$ModelMSM8976;->ROTATION_ARM_FREQ:I

    .line 2417
    const/16 v0, 0x7d0

    sput v0, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    .line 2418
    iput v5, p0, Landroid/os/DVFSHelper$ModelMSM8976;->APP_LAUNCH_ARM_FREQ:I

    .line 2419
    iput v2, p0, Landroid/os/DVFSHelper$ModelMSM8976;->APP_LAUNCH_BUS_FREQ:I

    .line 2420
    iput v1, p0, Landroid/os/DVFSHelper$ModelMSM8976;->APP_LAUNCH_CPU_CORE:I

    .line 2421
    iput v3, p0, Landroid/os/DVFSHelper$ModelMSM8976;->DEVICE_WAKEUP_ARM_FREQ:I

    .line 2423
    return-void
.end method
