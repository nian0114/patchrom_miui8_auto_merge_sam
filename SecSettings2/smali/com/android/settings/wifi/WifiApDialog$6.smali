.class Lcom/android/settings_ex/wifi/WifiApDialog$6;
.super Ljava/lang/Object;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiApDialog;->showHideSsidWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiApDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiApDialog;)V
    .locals 0

    .prologue
    .line 1306
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiApDialog$6;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v5, 0x1

    .line 1308
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog$6;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    # getter for: Lcom/android/settings_ex/wifi/WifiApDialog;->mHideSsidDoNotShowAgain:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->access$1900(Lcom/android/settings_ex/wifi/WifiApDialog;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1309
    const-string v1, "WifiApDialog"

    const-string v2, "mHideSsidDoNotShowAgain is Checked"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog$6;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    # getter for: Lcom/android/settings_ex/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->access$2000(Lcom/android/settings_ex/wifi/WifiApDialog;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1311
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog$6;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog$6;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    # getter for: Lcom/android/settings_ex/wifi/WifiApDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiApDialog;->access$600(Lcom/android/settings_ex/wifi/WifiApDialog;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "SAMSUNG_HOTSPOT"

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog$6;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    # getter for: Lcom/android/settings_ex/wifi/WifiApDialog;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings_ex/wifi/WifiApDialog;->access$600(Lcom/android/settings_ex/wifi/WifiApDialog;)Landroid/content/Context;

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    # setter for: Lcom/android/settings_ex/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v1, v2}, Lcom/android/settings_ex/wifi/WifiApDialog;->access$2002(Lcom/android/settings_ex/wifi/WifiApDialog;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 1312
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog$6;->this$0:Lcom/android/settings_ex/wifi/WifiApDialog;

    # getter for: Lcom/android/settings_ex/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->access$2000(Lcom/android/settings_ex/wifi/WifiApDialog;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1313
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v1, "HIDE_SSID_DO_NOTSHOW_AGAIN"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1314
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1316
    .end local v0    # "ed":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method
