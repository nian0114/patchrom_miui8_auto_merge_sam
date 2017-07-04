.class Lcom/samsung/android/glview/GLAbsList$MainHandler;
.super Landroid/os/Handler;
.source "GLAbsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/glview/GLAbsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation


# instance fields
.field private final mList:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/glview/GLAbsList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLAbsList;)V
    .locals 1
    .param p1, "list"    # Lcom/samsung/android/glview/GLAbsList;

    .prologue
    .line 1832
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1833
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLAbsList$MainHandler;->mList:Ljava/lang/ref/WeakReference;

    .line 1834
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 1838
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList$MainHandler;->mList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLAbsList;

    .line 1839
    .local v0, "list":Lcom/samsung/android/glview/GLAbsList;
    if-nez v0, :cond_0

    .line 1851
    :goto_0
    return-void

    .line 1842
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1844
    :pswitch_0
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLAbsList;->hideScrollBar()V

    goto :goto_0

    .line 1847
    :pswitch_1
    # setter for: Lcom/samsung/android/glview/GLAbsList;->mIsDecelerationHandlerMessageExecuted:Z
    invoke-static {v0, v2}, Lcom/samsung/android/glview/GLAbsList;->access$102(Lcom/samsung/android/glview/GLAbsList;Z)Z

    .line 1848
    # setter for: Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z
    invoke-static {v0, v2}, Lcom/samsung/android/glview/GLAbsList;->access$202(Lcom/samsung/android/glview/GLAbsList;Z)Z

    goto :goto_0

    .line 1842
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
