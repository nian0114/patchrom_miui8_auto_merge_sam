.class Lcom/android/settings_ex/wifi/WifiSettings$30;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiSettings;
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
    .line 3250
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 11
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 3254
    .local p1, "arg0":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mTwListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3100(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v8

    invoke-virtual {v8, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->getPositionForView(Landroid/view/View;)I

    move-result v7

    .line 3255
    .local v7, "viewPosition":I
    const-string v8, "WifiSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onItemClick() - position : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", viewPosition : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3256
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings_ex/wifi/AccessPointListAdapter;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3200(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPointListAdapter;

    move-result-object v8

    invoke-virtual {v8, p3}, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    .line 3257
    .local v5, "selectedAp":Ljava/lang/Object;
    if-nez v5, :cond_1

    .line 3258
    const-string v8, "WifiSettings"

    const-string v9, "Can\'t find selected AccessPoint from the list"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3396
    .end local v5    # "selectedAp":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 3261
    .restart local v5    # "selectedAp":Ljava/lang/Object;
    :cond_1
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    check-cast v5, Lcom/android/settings_ex/wifi/AccessPoint;

    .end local v5    # "selectedAp":Ljava/lang/Object;
    # setter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v8, v5}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3302(Lcom/android/settings_ex/wifi/WifiSettings;Lcom/android/settings_ex/wifi/AccessPoint;)Lcom/android/settings_ex/wifi/AccessPoint;

    .line 3262
    const-string v8, "WifiSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onItemClick() - mSelectedAccessPoint : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v10}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mSelectedAccessPoint.security : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v10}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v10

    iget v10, v10, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3263
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mIsFromLocation:Z
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3400(Lcom/android/settings_ex/wifi/WifiSettings;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3264
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 3265
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v8, v8, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 3266
    .local v4, "mCurrentAP":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v8

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    iget v9, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v8, v9, :cond_3

    .line 3267
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v9

    # setter for: Lcom/android/settings_ex/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v8, v9}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3502(Lcom/android/settings_ex/wifi/WifiSettings;Lcom/android/settings_ex/wifi/AccessPoint;)Lcom/android/settings_ex/wifi/AccessPoint;

    .line 3268
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    const/4 v9, 0x1

    # setter for: Lcom/android/settings_ex/wifi/WifiSettings;->mIsShouldSendResult:Z
    invoke-static {v8, v9}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3602(Lcom/android/settings_ex/wifi/WifiSettings;Z)Z

    .line 3285
    .end local v4    # "mCurrentAP":Landroid/net/wifi/WifiInfo;
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mInSecPickerActivity:Z
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3800(Lcom/android/settings_ex/wifi/WifiSettings;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mIsFromLocation:Z
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3400(Lcom/android/settings_ex/wifi/WifiSettings;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 3286
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3287
    .local v2, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v10}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v10

    # invokes: Lcom/android/settings_ex/wifi/WifiSettings;->getAPBSSID(Lcom/android/settings_ex/wifi/AccessPoint;)Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3700(Lcom/android/settings_ex/wifi/WifiSettings;Lcom/android/settings_ex/wifi/AccessPoint;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/settings_ex/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 3288
    const-string v8, "ssid"

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v9

    iget-object v9, v9, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3289
    const-string v8, "bssid"

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v9

    iget-object v9, v9, Lcom/android/settings_ex/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3290
    const-string v8, "security"

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v9

    iget v9, v9, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3291
    const-string v8, "frequency"

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v9

    iget v9, v9, Lcom/android/settings_ex/wifi/AccessPoint;->frequency:I

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3292
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8, v9, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 3293
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 3270
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v4    # "mCurrentAP":Landroid/net/wifi/WifiInfo;
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3271
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v10}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v10

    # invokes: Lcom/android/settings_ex/wifi/WifiSettings;->getAPBSSID(Lcom/android/settings_ex/wifi/AccessPoint;)Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3700(Lcom/android/settings_ex/wifi/WifiSettings;Lcom/android/settings_ex/wifi/AccessPoint;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/settings_ex/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 3272
    const-string v8, "ssid"

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v9

    iget-object v9, v9, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3273
    const-string v8, "bssid"

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v9

    iget-object v9, v9, Lcom/android/settings_ex/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3274
    const-string v8, "security"

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v9

    iget v9, v9, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3275
    const-string v8, "frequency"

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v9

    iget v9, v9, Lcom/android/settings_ex/wifi/AccessPoint;->frequency:I

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3276
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8, v9, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 3277
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 3281
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "mCurrentAP":Landroid/net/wifi/WifiInfo;
    :cond_4
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v9

    # setter for: Lcom/android/settings_ex/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v8, v9}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3502(Lcom/android/settings_ex/wifi/WifiSettings;Lcom/android/settings_ex/wifi/AccessPoint;)Lcom/android/settings_ex/wifi/AccessPoint;

    .line 3282
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    const/4 v9, 0x1

    # setter for: Lcom/android/settings_ex/wifi/WifiSettings;->mIsShouldSendResult:Z
    invoke-static {v8, v9}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3602(Lcom/android/settings_ex/wifi/WifiSettings;Z)Z

    goto/16 :goto_1

    .line 3297
    :cond_5
    const-string v8, "T wifi zone_secure"

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v9

    iget-object v9, v9, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings_ex/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3299
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # invokes: Lcom/android/settings_ex/wifi/WifiSettings;->isUsimUseable()Z
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3900(Lcom/android/settings_ex/wifi/WifiSettings;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3329
    :cond_6
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mWeChatAccessPoint:Lcom/android/settings_ex/wifi/WeChatAccessPoint;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->access$4000(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WeChatAccessPoint;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v9

    iget-object v9, v9, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v10}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v10

    iget-object v10, v10, Lcom/android/settings_ex/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/android/settings_ex/wifi/WeChatAccessPoint;->isWeChatAccessPoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3330
    .local v6, "storeName":Ljava/lang/String;
    if-eqz v6, :cond_c

    .line 3331
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3332
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v8, "com.samsung.android.net.wifi.WECHAT_CONNECT_AP"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3333
    const-string v8, "ssid"

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v9

    iget-object v9, v9, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3334
    const-string v8, "bssid"

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v9

    iget-object v9, v9, Lcom/android/settings_ex/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3335
    const-string v8, "rssi"

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v9

    iget v9, v9, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3336
    const-string v8, "storename"

    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3337
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3302
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v6    # "storeName":Ljava/lang/String;
    :cond_7
    const-string v8, "ollehWiFi"

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v9

    iget-object v9, v9, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings_ex/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3304
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # invokes: Lcom/android/settings_ex/wifi/WifiSettings;->isUsimUseable()Z
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3900(Lcom/android/settings_ex/wifi/WifiSettings;)Z

    move-result v8

    if-nez v8, :cond_6

    goto/16 :goto_0

    .line 3307
    :cond_8
    const-string v8, "olleh GiGA WiFi"

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v9

    iget-object v9, v9, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings_ex/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 3309
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # invokes: Lcom/android/settings_ex/wifi/WifiSettings;->isUsimUseable()Z
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3900(Lcom/android/settings_ex/wifi/WifiSettings;)Z

    move-result v8

    if-nez v8, :cond_6

    goto/16 :goto_0

    .line 3312
    :cond_9
    const-string v8, "U+zone"

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v9

    iget-object v9, v9, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings_ex/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 3314
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # invokes: Lcom/android/settings_ex/wifi/WifiSettings;->isUsimUseable()Z
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3900(Lcom/android/settings_ex/wifi/WifiSettings;)Z

    move-result v8

    if-nez v8, :cond_6

    goto/16 :goto_0

    .line 3317
    :cond_a
    const-string v8, "U+zone_5G"

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v9

    iget-object v9, v9, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings_ex/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 3319
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # invokes: Lcom/android/settings_ex/wifi/WifiSettings;->isUsimUseable()Z
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3900(Lcom/android/settings_ex/wifi/WifiSettings;)Z

    move-result v8

    if-nez v8, :cond_6

    goto/16 :goto_0

    .line 3322
    :cond_b
    const-string v8, "5G_U+zone"

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v9

    iget-object v9, v9, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings_ex/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3324
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # invokes: Lcom/android/settings_ex/wifi/WifiSettings;->isUsimUseable()Z
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3900(Lcom/android/settings_ex/wifi/WifiSettings;)Z

    move-result v8

    if-nez v8, :cond_6

    goto/16 :goto_0

    .line 3342
    .restart local v6    # "storeName":Ljava/lang/String;
    :cond_c
    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v8

    if-nez v8, :cond_d

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/settings_ex/wifi/AccessPoint;->mIsCaptivePortal:Z

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/settings_ex/wifi/AccessPoint;->mIsAuthenticated:Z

    if-nez v8, :cond_d

    .line 3347
    const-string v8, "WifiSettings"

    const-string v9, "START captive portal login activity"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3349
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.net.netmon.launchCaptivePortalApp"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3350
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3354
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_d
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings_ex/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v3

    .line 3355
    .local v3, "isSupportedSecurity":Z
    if-nez v3, :cond_e

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v8

    iget v8, v8, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 3356
    :cond_e
    const-string v8, "VZW"

    sget-object v9, Lcom/android/settings_ex/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 3357
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mInManageNetwork:Z
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->access$000(Lcom/android/settings_ex/wifi/WifiSettings;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 3358
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v8, v9, :cond_f

    .line 3359
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v9

    const/4 v10, 0x0

    # invokes: Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V
    invoke-static {v8, v9, v10}, Lcom/android/settings_ex/wifi/WifiSettings;->access$4100(Lcom/android/settings_ex/wifi/WifiSettings;Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    goto/16 :goto_0

    .line 3362
    :cond_f
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_10

    .line 3363
    const/4 v0, 0x1

    .line 3367
    .local v0, "ManageConnectable":Z
    :goto_2
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v9

    const/4 v10, 0x0

    # invokes: Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V
    invoke-static {v8, v9, v10}, Lcom/android/settings_ex/wifi/WifiSettings;->access$4100(Lcom/android/settings_ex/wifi/WifiSettings;Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    goto/16 :goto_0

    .line 3365
    .end local v0    # "ManageConnectable":Z
    :cond_10
    const/4 v0, 0x0

    .restart local v0    # "ManageConnectable":Z
    goto :goto_2

    .line 3370
    .end local v0    # "ManageConnectable":Z
    :cond_11
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v9

    const/4 v10, 0x0

    # invokes: Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V
    invoke-static {v8, v9, v10}, Lcom/android/settings_ex/wifi/WifiSettings;->access$4100(Lcom/android/settings_ex/wifi/WifiSettings;Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    goto/16 :goto_0

    .line 3373
    :cond_12
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v8

    iget v8, v8, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-nez v8, :cond_14

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v8

    iget v8, v8, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_14

    .line 3375
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings_ex/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 3376
    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->savedNetworksExist:Z
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiSettings;->access$4200()Z

    move-result v8

    if-nez v8, :cond_13

    .line 3377
    const/4 v8, 0x1

    # setter for: Lcom/android/settings_ex/wifi/WifiSettings;->savedNetworksExist:Z
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->access$4202(Z)Z

    .line 3378
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 3381
    :cond_13
    :try_start_0
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v9

    const/4 v10, 0x0

    # invokes: Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V
    invoke-static {v8, v9, v10}, Lcom/android/settings_ex/wifi/WifiSettings;->access$4100(Lcom/android/settings_ex/wifi/WifiSettings;Lcom/android/settings_ex/wifi/AccessPoint;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3382
    :catch_0
    move-exception v1

    .line 3383
    .local v1, "ex":Ljava/lang/IllegalStateException;
    const-string v8, "WifiSettings"

    const-string v9, "Ignore Illegal state exception here."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3385
    .end local v1    # "ex":Ljava/lang/IllegalStateException;
    :cond_14
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings_ex/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v8

    if-nez v8, :cond_15

    .line 3386
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v8}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0e0547

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 3390
    :cond_15
    :try_start_1
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings$30;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/WifiSettings;->access$3300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v9

    const/4 v10, 0x0

    # invokes: Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V
    invoke-static {v8, v9, v10}, Lcom/android/settings_ex/wifi/WifiSettings;->access$4100(Lcom/android/settings_ex/wifi/WifiSettings;Lcom/android/settings_ex/wifi/AccessPoint;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 3391
    :catch_1
    move-exception v1

    .line 3392
    .restart local v1    # "ex":Ljava/lang/IllegalStateException;
    const-string v8, "WifiSettings"

    const-string v9, "Ignore Illegal state exception here."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
