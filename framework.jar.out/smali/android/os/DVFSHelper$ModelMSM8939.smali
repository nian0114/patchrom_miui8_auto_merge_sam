.class Landroid/os/DVFSHelper$ModelMSM8939;
.super Landroid/os/DVFSHelper$ModelMSM8916;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelMSM8939"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 2

    .prologue
    const v1, 0x87f00

    .line 2380
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelMSM8939;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelMSM8916;-><init>(Landroid/os/DVFSHelper;)V

    .line 2381
    const v0, 0x61a80

    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8939;->LIST_SCROLL_ARM_FREQ:I

    .line 2382
    const v0, 0x135600

    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8939;->AMS_RESUME_ARM_FREQ:I

    .line 2383
    const/16 v0, 0x31c

    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8939;->AMS_RESUME_BUS_FREQ:I

    .line 2384
    const/16 v0, 0x258

    sput v0, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    .line 2385
    const v0, 0x79e00

    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8939;->DEVICE_WAKEUP_ARM_FREQ:I

    .line 2386
    iput v1, p0, Landroid/os/DVFSHelper$ModelMSM8939;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2387
    iput v1, p0, Landroid/os/DVFSHelper$ModelMSM8939;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2388
    const/16 v0, 0x5dc

    sput v0, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    .line 2389
    return-void
.end method
