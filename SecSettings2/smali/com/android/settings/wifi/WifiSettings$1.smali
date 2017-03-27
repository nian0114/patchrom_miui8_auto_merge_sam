.class Lcom/android/settings/wifi/WifiSettings$1;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 630
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$1;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdd()V
    .locals 2

    .prologue
    .line 642
    const-string v0, "WifiSettings"

    const-string v1, "onAdd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$1;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mAddDelAnimator:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$500(Lcom/android/settings/wifi/WifiSettings;)Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->isInsertDeleting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    :goto_0
    return-void

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$1;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # invokes: Lcom/android/settings/wifi/WifiSettings;->addToAdapter()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$800(Lcom/android/settings/wifi/WifiSettings;)V

    goto :goto_0
.end method

.method public onAnimationEnd(Z)V
    .locals 2
    .param p1, "isAddAnimation"    # Z

    .prologue
    .line 654
    const-string v0, "WifiSettings"

    const-string v1, "onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$1;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/wifi/WifiSettings;->mIsRunningAnimation:Z
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$902(Lcom/android/settings/wifi/WifiSettings;Z)Z

    .line 663
    return-void
.end method

.method public onAnimationStart(Z)V
    .locals 2
    .param p1, "isAddAnimation"    # Z

    .prologue
    .line 650
    const-string v0, "WifiSettings"

    const-string v1, "onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    return-void
.end method

.method public onDelete()V
    .locals 2

    .prologue
    .line 633
    const-string v0, "WifiSettings"

    const-string v1, "onDelete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$1;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mAddDelAnimator:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$500(Lcom/android/settings/wifi/WifiSettings;)Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->isInsertDeleting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$1;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # invokes: Lcom/android/settings/wifi/WifiSettings;->addDeleteFromAdapter()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$600(Lcom/android/settings/wifi/WifiSettings;)V

    .line 639
    :goto_0
    return-void

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$1;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # invokes: Lcom/android/settings/wifi/WifiSettings;->deleteFromAdapter()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$700(Lcom/android/settings/wifi/WifiSettings;)V

    goto :goto_0
.end method
