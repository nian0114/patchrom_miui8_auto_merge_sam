.class Landroid/os/DVFSHelper$ModelJBP;
.super Landroid/os/DVFSHelper$Model;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelJBP"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 6

    .prologue
    const v5, 0x16e360

    const/16 v4, 0x3e8

    const/16 v3, 0x1f4

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1912
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelJBP;->this$0:Landroid/os/DVFSHelper;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/DVFSHelper$Model;-><init>(Landroid/os/DVFSHelper;Landroid/os/DVFSHelper$1;)V

    .line 1913
    iput v4, p0, Landroid/os/DVFSHelper$ModelJBP;->BROWSER_TOUCH_BOOST_TIMEOUT:I

    .line 1914
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->BROWSER_TOUCH_ARM_FREQ:I

    .line 1915
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->BROWSER_TOUCH_BUS_FREQ:I

    .line 1916
    iput v3, p0, Landroid/os/DVFSHelper$ModelJBP;->GALLERY_TOUCH_BOOST_TIMEOUT:I

    .line 1917
    iput v3, p0, Landroid/os/DVFSHelper$ModelJBP;->GALLERY_TOUCH_TAIL_BOOST_TIMEOUT:I

    .line 1918
    iput v5, p0, Landroid/os/DVFSHelper$ModelJBP;->GALLERY_TOUCH_ARM_FREQ:I

    .line 1919
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->GALLERY_TOUCH_BUS_FREQ:I

    .line 1920
    iput v4, p0, Landroid/os/DVFSHelper$ModelJBP;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    .line 1921
    iput v5, p0, Landroid/os/DVFSHelper$ModelJBP;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 1922
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->LAUNCHER_TOUCH_BUS_FREQ:I

    .line 1923
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->LAUNCHER_TOUCH_GPU_FREQ:I

    .line 1924
    iput v2, p0, Landroid/os/DVFSHelper$ModelJBP;->LAUNCHER_TOUCH_CPU_CORE:I

    .line 1925
    const v0, 0x124f80

    iput v0, p0, Landroid/os/DVFSHelper$ModelJBP;->GROUP_PLAY_ARM_FREQ:I

    .line 1926
    const v0, 0xc3500

    iput v0, p0, Landroid/os/DVFSHelper$ModelJBP;->LIST_SCROLL_ARM_FREQ:I

    .line 1927
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->LIST_SCROLL_GPU_FREQ:I

    .line 1928
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->LIST_SCROLL_BUS_FREQ:I

    .line 1929
    const/4 v0, 0x2

    sput v0, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    .line 1930
    const v0, 0x118c30

    iput v0, p0, Landroid/os/DVFSHelper$ModelJBP;->AMS_RESUME_ARM_FREQ:I

    .line 1931
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->AMS_RESUME_GPU_FREQ:I

    .line 1932
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->AMS_RESUME_BUS_FREQ:I

    .line 1933
    iput v2, p0, Landroid/os/DVFSHelper$ModelJBP;->AMS_RESUME_CPU_CORE:I

    .line 1934
    const/16 v0, 0x12c

    sput v0, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    .line 1935
    iput v2, p0, Landroid/os/DVFSHelper$ModelJBP;->APP_LAUNCH_ARM_FREQ:I

    .line 1936
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->APP_LAUNCH_GPU_FREQ:I

    .line 1937
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->APP_LAUNCH_BUS_FREQ:I

    .line 1938
    iput v2, p0, Landroid/os/DVFSHelper$ModelJBP;->APP_LAUNCH_CPU_CORE:I

    .line 1939
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->BROWSER_FLING_ARM_FREQ:I

    .line 1940
    const/16 v0, 0x7d0

    sput v0, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    .line 1941
    iput v2, p0, Landroid/os/DVFSHelper$ModelJBP;->DEVICE_WAKEUP_ARM_FREQ:I

    .line 1942
    iput v2, p0, Landroid/os/DVFSHelper$ModelJBP;->ROTATION_ARM_FREQ:I

    .line 1943
    return-void
.end method
