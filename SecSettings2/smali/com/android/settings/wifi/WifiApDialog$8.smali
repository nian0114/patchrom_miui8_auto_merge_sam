.class Lcom/android/settings_ex/wifi/WifiApDialog$8;
.super Ljava/lang/Object;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiApDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiApDialog;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v5, 0x1

    .line 1334
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog$8;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog$8;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    # getter for: Lcom/android/settings_ex/wifi/WifiApDialog;->customView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->access$2300(Lcom/android/settings_ex/wifi/WifiApDialog;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0d0565

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    # setter for: Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiAp5gDoNotShowAgain:Landroid/widget/CheckBox;
    invoke-static {v2, v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->access$2202(Lcom/android/settings_ex/wifi/WifiApDialog;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 1335
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog$8;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    # getter for: Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiAp5gDoNotShowAgain:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->access$2200(Lcom/android/settings_ex/wifi/WifiApDialog;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1336
    const-string v1, "WifiApDialog"

    const-string v2, "mWifiAp5gDoNotShowAgain  is Checked"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog$8;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    # getter for: Lcom/android/settings_ex/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->access$2000(Lcom/android/settings_ex/wifi/WifiApDialog;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1338
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog$8;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog$8;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    # getter for: Lcom/android/settings_ex/wifi/WifiApDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiApDialog;->access$600(Lcom/android/settings_ex/wifi/WifiApDialog;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "SAMSUNG_HOTSPOT"

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog$8;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    # getter for: Lcom/android/settings_ex/wifi/WifiApDialog;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings_ex/wifi/WifiApDialog;->access$600(Lcom/android/settings_ex/wifi/WifiApDialog;)Landroid/content/Context;

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    # setter for: Lcom/android/settings_ex/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v1, v2}, Lcom/android/settings_ex/wifi/WifiApDialog;->access$2002(Lcom/android/settings_ex/wifi/WifiApDialog;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 1339
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog$8;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    # getter for: Lcom/android/settings_ex/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->access$2000(Lcom/android/settings_ex/wifi/WifiApDialog;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1340
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v1, "WIFI_AP_5G_DO_NOTSHOW_AGAIN"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1341
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1343
    .end local v0    # "ed":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method
