.class Landroid/os/DVFSHelper$ModelSA;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelSA"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 2

    .prologue
    const v1, 0x9eb10

    .line 2152
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelSA;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 2153
    const v0, 0x186a00

    iput v0, p0, Landroid/os/DVFSHelper$ModelSA;->AMS_RESUME_ARM_FREQ:I

    .line 2154
    iput v1, p0, Landroid/os/DVFSHelper$ModelSA;->LIST_SCROLL_ARM_FREQ:I

    .line 2155
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/DVFSHelper$ModelSA;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2156
    const v0, 0x124f80

    iput v0, p0, Landroid/os/DVFSHelper$ModelSA;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2157
    const/16 v0, 0x64

    iput v0, p0, Landroid/os/DVFSHelper$ModelSA;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    .line 2158
    const/16 v0, 0x3e8

    sput v0, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    .line 2159
    iput v1, p0, Landroid/os/DVFSHelper$ModelSA;->GROUP_PLAY_ARM_FREQ:I

    .line 2160
    const/16 v0, 0x1f4

    sput v0, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    .line 2161
    return-void
.end method
