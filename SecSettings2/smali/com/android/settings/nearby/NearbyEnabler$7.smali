.class Lcom/android/settings_ex/nearby/NearbyEnabler$7;
.super Ljava/lang/Object;
.source "NearbyEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/nearby/NearbyEnabler;->requestWifiCheckingPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nearby/NearbyEnabler;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/nearby/NearbyEnabler;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/android/settings_ex/nearby/NearbyEnabler$7;->this$0:Lcom/android/settings_ex/nearby/NearbyEnabler;

    iput-object p2, p0, Lcom/android/settings_ex/nearby/NearbyEnabler$7;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v4, 0x1

    .line 1022
    iget-object v2, p0, Lcom/android/settings_ex/nearby/NearbyEnabler$7;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1023
    iget-object v2, p0, Lcom/android/settings_ex/nearby/NearbyEnabler$7;->this$0:Lcom/android/settings_ex/nearby/NearbyEnabler;

    # getter for: Lcom/android/settings_ex/nearby/NearbyEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_ex/nearby/NearbyEnabler;->access$1300(Lcom/android/settings_ex/nearby/NearbyEnabler;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_allshare"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1026
    .local v1, "sharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1027
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v2, "allshare_show_wifi"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1028
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1031
    .end local v0    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sharedPreference":Landroid/content/SharedPreferences;
    :cond_0
    # setter for: Lcom/android/settings_ex/nearby/NearbyEnabler;->isShowWifiCheckingPopup:Z
    invoke-static {v4}, Lcom/android/settings_ex/nearby/NearbyEnabler;->access$1402(Z)Z

    .line 1032
    iget-object v2, p0, Lcom/android/settings_ex/nearby/NearbyEnabler$7;->this$0:Lcom/android/settings_ex/nearby/NearbyEnabler;

    # invokes: Lcom/android/settings_ex/nearby/NearbyEnabler;->switchPreference(Z)V
    invoke-static {v2, v4}, Lcom/android/settings_ex/nearby/NearbyEnabler;->access$1700(Lcom/android/settings_ex/nearby/NearbyEnabler;Z)V

    .line 1033
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1034
    return-void
.end method
