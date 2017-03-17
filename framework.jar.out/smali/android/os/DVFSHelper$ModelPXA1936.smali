.class Landroid/os/DVFSHelper$ModelPXA1936;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelPXA1936"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 2

    .prologue
    const v0, 0x80e80

    const v1, 0x98580

    .line 2328
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelPXA1936;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 2329
    iput v1, p0, Landroid/os/DVFSHelper$ModelPXA1936;->AMS_RESUME_GPU_FREQ:I

    .line 2330
    iput v0, p0, Landroid/os/DVFSHelper$ModelPXA1936;->AMS_RESUME_BUS_FREQ:I

    .line 2331
    iput v1, p0, Landroid/os/DVFSHelper$ModelPXA1936;->APP_LAUNCH_GPU_FREQ:I

    .line 2332
    iput v0, p0, Landroid/os/DVFSHelper$ModelPXA1936;->APP_LAUNCH_BUS_FREQ:I

    .line 2333
    const v0, 0x1020e8

    iput v0, p0, Landroid/os/DVFSHelper$ModelPXA1936;->LIST_SCROLL_ARM_FREQ:I

    .line 2334
    iput v1, p0, Landroid/os/DVFSHelper$ModelPXA1936;->LIST_SCROLL_GPU_FREQ:I

    .line 2335
    const v0, 0x4c2c0

    iput v0, p0, Landroid/os/DVFSHelper$ModelPXA1936;->LIST_SCROLL_BUS_FREQ:I

    .line 2336
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/DVFSHelper$ModelPXA1936;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2337
    return-void
.end method
