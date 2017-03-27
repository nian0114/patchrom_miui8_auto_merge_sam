.class Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity$2;
.super Ljava/lang/Object;
.source "WifiConnectionHandlerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->showdataConnectionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;

.field final synthetic val$mcheck:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity$2;->this$0:Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;

    iput-object p2, p0, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity$2;->val$mcheck:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x0

    .line 110
    const-string v2, "WifiConnectionHandlerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected button is Disconnect , Do not Show again : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity$2;->val$mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v2, p0, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity$2;->val$mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity$2;->this$0:Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;

    # getter for: Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->mDoNotShow:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->access$300(Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 113
    .local v1, "edit_boolean":Landroid/content/SharedPreferences$Editor;
    const-string v2, "connhan_do_not_show"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 115
    iget-object v2, p0, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity$2;->this$0:Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;

    # getter for: Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->mBeforeValue:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->access$400(Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 116
    .local v0, "edit_beforeValue":Landroid/content/SharedPreferences$Editor;
    const-string v2, "WifiConnectionHandlerActivity"

    const-string v3, "donotshow checked. connhan_value : BUTTON_DISCONNECT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v2, "connhan_value"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 118
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 120
    .end local v0    # "edit_beforeValue":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "edit_boolean":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity$2;->this$0:Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/wifi/connectionhandler/WifiConnectionHandlerActivity;->OnOffData(Z)V

    .line 121
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 122
    return-void
.end method
