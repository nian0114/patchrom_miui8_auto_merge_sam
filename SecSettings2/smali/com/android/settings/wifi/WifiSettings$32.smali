.class Lcom/android/settings_ex/wifi/WifiSettings$32;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiSettings;->showWeChatDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 3506
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$32;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 3508
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$32;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3509
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3534
    :goto_0
    return-void

    .line 3513
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$32;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v1

    iget v1, v1, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$32;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v1

    iget v1, v1, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 3515
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$32;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 3518
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$32;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$32;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v2

    const/4 v3, 0x0

    # invokes: Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->access$4100(Lcom/android/settings_ex/wifi/WifiSettings;Lcom/android/settings_ex/wifi/AccessPoint;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3533
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 3519
    :catch_0
    move-exception v0

    .line 3520
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v1, "WifiSettings"

    const-string v2, "Ignore Illegal state exception here."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3522
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$32;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3523
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$32;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e0547

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 3527
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$32;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$32;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v2

    const/4 v3, 0x0

    # invokes: Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->access$4100(Lcom/android/settings_ex/wifi/WifiSettings;Lcom/android/settings_ex/wifi/AccessPoint;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 3528
    :catch_1
    move-exception v0

    .line 3529
    .restart local v0    # "ex":Ljava/lang/IllegalStateException;
    const-string v1, "WifiSettings"

    const-string v2, "Ignore Illegal state exception here."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
