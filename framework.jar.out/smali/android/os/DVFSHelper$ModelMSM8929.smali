.class Landroid/os/DVFSHelper$ModelMSM8929;
.super Landroid/os/DVFSHelper$ModelMSM8916;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelMSM8929"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 2

    .prologue
    const v1, 0x79e00

    .line 2393
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelMSM8929;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelMSM8916;-><init>(Landroid/os/DVFSHelper;)V

    .line 2394
    const v0, 0x61a80

    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8929;->LIST_SCROLL_ARM_FREQ:I

    .line 2395
    const v0, 0x135600

    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8929;->AMS_RESUME_ARM_FREQ:I

    .line 2396
    const/16 v0, 0x296

    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8929;->AMS_RESUME_BUS_FREQ:I

    .line 2397
    const/16 v0, 0x258

    sput v0, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    .line 2398
    iput v1, p0, Landroid/os/DVFSHelper$ModelMSM8929;->DEVICE_WAKEUP_ARM_FREQ:I

    .line 2399
    iput v1, p0, Landroid/os/DVFSHelper$ModelMSM8929;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2400
    const v0, 0xfd200

    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8929;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2401
    const/16 v0, 0x5dc

    sput v0, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    .line 2402
    return-void
.end method
