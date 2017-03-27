.class Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x3

    const v8, 0x7f0e053b

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 395
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->extra_type:I
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$000(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)I

    move-result v2

    if-ne v2, v7, :cond_5

    .line 396
    const-string v2, "VZW"

    sget-object v3, Lcom/android/settings_ex/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 397
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->req_type:I
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$900(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)I

    move-result v2

    if-nez v2, :cond_4

    .line 398
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mApEnableWarnDoNotShowAgain:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$800(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 399
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$1000(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/content/SharedPreferences;

    move-result-object v2

    if-nez v2, :cond_0

    .line 400
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "SAMSUNG_HOTSPOT"

    iget-object v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    # setter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v2, v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$1002(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 401
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$1000(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 402
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v2, "HOTSPOT_WIFI_ENABLE_WARNING_DO_NOTSHOW_AGAIN"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 403
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 404
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 412
    .end local v1    # "ed":Landroid/content/SharedPreferences$Editor;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    const/16 v3, 0xb

    # invokes: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->showProgressDialog(I)V
    invoke-static {v2, v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$1100(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;I)V

    .line 413
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$500(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 414
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$500(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 476
    :cond_2
    :goto_1
    return-void

    .line 406
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 409
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 416
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->extra_type:I
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$000(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_6

    .line 417
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    const/16 v3, 0xb

    # invokes: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->showProgressDialog(I)V
    invoke-static {v2, v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$1100(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;I)V

    .line 418
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$500(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 419
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$500(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_1

    .line 421
    :cond_6
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->req_type:I
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$900(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)I

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->extra_type:I
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$000(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)I

    move-result v2

    if-ne v2, v4, :cond_a

    .line 422
    const-string v2, "VZW"

    sget-object v3, Lcom/android/settings_ex/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 423
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e053d

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 425
    :cond_7
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$500(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 426
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$500(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/net/wifi/WifiManager;->setWifiIBSSEnabled(Z)Z

    .line 429
    :cond_8
    const-wide/16 v2, 0x258

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_2
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$500(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 434
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$500(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 436
    :cond_9
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->finish()V

    goto/16 :goto_1

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 438
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_a
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->req_type:I
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$900(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)I

    move-result v2

    if-ne v2, v4, :cond_d

    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->extra_type:I
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$000(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)I

    move-result v2

    if-nez v2, :cond_d

    .line 439
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$500(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 440
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$500(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 443
    :cond_b
    const-wide/16 v2, 0x258

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 447
    :goto_3
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$500(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 448
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$500(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/net/wifi/WifiManager;->setWifiIBSSEnabled(Z)Z

    .line 450
    :cond_c
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->finish()V

    goto/16 :goto_1

    .line 444
    :catch_1
    move-exception v0

    .line 445
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 452
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_d
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->req_type:I
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$900(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->extra_type:I
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$000(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 453
    const-string v2, "VZW"

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$1200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 454
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mApEnableWarnDoNotShowAgain:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$800(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 455
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$1000(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/content/SharedPreferences;

    move-result-object v2

    if-nez v2, :cond_e

    .line 456
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "SAMSUNG_HOTSPOT"

    iget-object v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    # setter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v2, v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$1002(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 457
    :cond_e
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$1000(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 458
    .restart local v1    # "ed":Landroid/content/SharedPreferences$Editor;
    const-string v2, "USBTETHER_WIFI_ENABLE_WARNING_DO_NOTSHOW_AGAIN"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 459
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 462
    .end local v1    # "ed":Landroid/content/SharedPreferences$Editor;
    :cond_f
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$1300(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/net/ConnectivityManager;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 463
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$1300(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    .line 466
    :cond_10
    const-wide/16 v2, 0x258

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 470
    :goto_4
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$500(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 471
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$500(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 473
    :cond_11
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->finish()V

    goto/16 :goto_1

    .line 467
    :catch_2
    move-exception v0

    .line 468
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4
.end method
