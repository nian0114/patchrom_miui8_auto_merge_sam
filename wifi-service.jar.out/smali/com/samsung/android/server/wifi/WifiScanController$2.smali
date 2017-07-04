.class Lcom/samsung/android/server/wifi/WifiScanController$2;
.super Ljava/lang/Object;
.source "WifiScanController.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/WifiScanController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/WifiScanController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/WifiScanController;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiScanController$2;->this$0:Lcom/samsung/android/server/wifi/WifiScanController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 7
    .param p1, "sContextEvent"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 568
    iget-object v2, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 570
    .local v2, "scontext":Landroid/hardware/scontext/SContext;
    invoke-virtual {v2}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 572
    :pswitch_0
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getAnyMotionDetectorContext()Landroid/hardware/scontext/SContextAnyMotionDetector;

    move-result-object v1

    .line 573
    .local v1, "anyMotionDetector":Landroid/hardware/scontext/SContextAnyMotionDetector;
    if-eqz v1, :cond_0

    .line 576
    invoke-virtual {v1}, Landroid/hardware/scontext/SContextAnyMotionDetector;->getAction()I

    move-result v0

    .line 577
    .local v0, "action":I
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 579
    :pswitch_1
    sget-boolean v3, Lcom/samsung/android/server/wifi/WifiScanController;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "WifiScanController"

    const-string v4, "SMD detect : none"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController$2;->this$0:Lcom/samsung/android/server/wifi/WifiScanController;

    # setter for: Lcom/samsung/android/server/wifi/WifiScanController;->mIsMoved:Z
    invoke-static {v3, v5}, Lcom/samsung/android/server/wifi/WifiScanController;->access$302(Lcom/samsung/android/server/wifi/WifiScanController;Z)Z

    .line 581
    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController$2;->this$0:Lcom/samsung/android/server/wifi/WifiScanController;

    # getter for: Lcom/samsung/android/server/wifi/WifiScanController;->mSMDCounter:[I
    invoke-static {v3}, Lcom/samsung/android/server/wifi/WifiScanController;->access$400(Lcom/samsung/android/server/wifi/WifiScanController;)[I

    move-result-object v3

    aget v4, v3, v6

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v6

    goto :goto_0

    .line 584
    :pswitch_2
    sget-boolean v3, Lcom/samsung/android/server/wifi/WifiScanController;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "WifiScanController"

    const-string v4, "SMD detect : action"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController$2;->this$0:Lcom/samsung/android/server/wifi/WifiScanController;

    # setter for: Lcom/samsung/android/server/wifi/WifiScanController;->mIsMoved:Z
    invoke-static {v3, v6}, Lcom/samsung/android/server/wifi/WifiScanController;->access$302(Lcom/samsung/android/server/wifi/WifiScanController;Z)Z

    .line 586
    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController$2;->this$0:Lcom/samsung/android/server/wifi/WifiScanController;

    # getter for: Lcom/samsung/android/server/wifi/WifiScanController;->mSMDCounter:[I
    invoke-static {v3}, Lcom/samsung/android/server/wifi/WifiScanController;->access$400(Lcom/samsung/android/server/wifi/WifiScanController;)[I

    move-result-object v3

    aget v4, v3, v5

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v5

    goto :goto_0

    .line 570
    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
    .end packed-switch

    .line 577
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
