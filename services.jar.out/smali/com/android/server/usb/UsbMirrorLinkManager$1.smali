.class Lcom/android/server/usb/UsbMirrorLinkManager$1;
.super Landroid/os/UEventObserver;
.source "UsbMirrorLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbMirrorLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbMirrorLinkManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbMirrorLinkManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USB UEVENT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "NCM_DEVICE"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "mirrorlink":Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.samsung.android.mirrorlink.action.ML_UEVENT"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v7, "mlCommand":Landroid/content/Intent;
    const-string v0, "mirrorlink"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$100(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "START"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "usb: f/w ncm start uevent receive "

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->cpuMinFreqBooster:Landroid/os/DVFSHelper;
    invoke-static {v0}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$200(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/os/DVFSHelper;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v9, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$100(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "MirrorLink"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    # setter for: Lcom/android/server/usb/UsbMirrorLinkManager;->cpuMinFreqBooster:Landroid/os/DVFSHelper;
    invoke-static {v9, v0}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$202(Lcom/android/server/usb/UsbMirrorLinkManager;Landroid/os/DVFSHelper;)Landroid/os/DVFSHelper;

    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->cpuMinFreqBooster:Landroid/os/DVFSHelper;
    invoke-static {v0}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$200(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/os/DVFSHelper;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->cpuMinFreqBooster:Landroid/os/DVFSHelper;
    invoke-static {v0}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$200(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/os/DVFSHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequencyForSSRM()[I

    move-result-object v8

    .local v8, "supportedCPUFreqTable":[I
    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->cpuMinFreqBooster:Landroid/os/DVFSHelper;
    invoke-static {v0}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$200(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/os/DVFSHelper;

    move-result-object v0

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->cpuMinFreqBooster:Landroid/os/DVFSHelper;
    invoke-static {v2}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$200(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/os/DVFSHelper;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v8, v3

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->cpuMinFreqBooster:Landroid/os/DVFSHelper;
    invoke-static {v0}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$200(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/os/DVFSHelper;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    .end local v8    # "supportedCPUFreqTable":[I
    :cond_1
    :goto_0
    return-void

    :cond_2
    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, " MirrorLink cpu boost : DVFSHelper mode is not supported "

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v0, "RELEASE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "usb: f/w ncm release uevent receive"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
