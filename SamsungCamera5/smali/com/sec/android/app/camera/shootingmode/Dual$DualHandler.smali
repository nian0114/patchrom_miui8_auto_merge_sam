.class Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;
.super Landroid/os/Handler;
.source "Dual.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/Dual;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DualHandler"
.end annotation


# instance fields
.field private final mDual:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/shootingmode/Dual;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/shootingmode/Dual;)V
    .locals 1
    .param p1, "dual"    # Lcom/sec/android/app/camera/shootingmode/Dual;

    .prologue
    .line 2084
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2085
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;->mDual:Ljava/lang/ref/WeakReference;

    .line 2086
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;

    .prologue
    .line 2081
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 2112
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;->mDual:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 2113
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2090
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;->mDual:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/Dual;

    .line 2091
    .local v0, "dual":Lcom/sec/android/app/camera/shootingmode/Dual;
    if-nez v0, :cond_1

    .line 2109
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2095
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 2097
    :pswitch_2
    const-string v1, "Dual"

    const-string v2, "Hide Boundry"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    # invokes: Lcom/sec/android/app/camera/shootingmode/Dual;->hideBoundaryRect()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->access$200(Lcom/sec/android/app/camera/shootingmode/Dual;)V

    .line 2099
    # getter for: Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;
    invoke-static {}, Lcom/sec/android/app/camera/shootingmode/Dual;->access$300()Lcom/sec/android/app/camera/widget/gl/RectHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2100
    # getter for: Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;
    invoke-static {}, Lcom/sec/android/app/camera/shootingmode/Dual;->access$300()Lcom/sec/android/app/camera/widget/gl/RectHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setGrowable(Z)V

    goto :goto_0

    .line 2095
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
