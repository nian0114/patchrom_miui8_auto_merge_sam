.class Lcom/android/settings_ex/DataUsageSummary$47;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DataUsageSummary;->showOnlineHelpDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary;

.field final synthetic val$checkboxView:Landroid/widget/CheckBox;

.field final synthetic val$edit:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary;Landroid/widget/CheckBox;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .prologue
    .line 6326
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$47;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    iput-object p2, p0, Lcom/android/settings_ex/DataUsageSummary$47;->val$checkboxView:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/settings_ex/DataUsageSummary$47;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 6328
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$47;->val$checkboxView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6329
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$47;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "onlinehelp_show_dialog"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 6330
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$47;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 6332
    :cond_0
    const-string v0, "DataUsage"

    const-string v1, "showOnlineHelpDialog click ok,Start Saving"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6333
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$47;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # setter for: Lcom/android/settings_ex/DataUsageSummary;->mIsDataCompressionEnabled:Z
    invoke-static {v0, v2}, Lcom/android/settings_ex/DataUsageSummary;->access$1002(Lcom/android/settings_ex/DataUsageSummary;Z)Z

    .line 6334
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$47;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings_ex/datasaving/DataSavingHelper;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$7100(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/datasaving/DataSavingHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6335
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$47;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings_ex/datasaving/DataSavingHelper;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$7100(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/datasaving/DataSavingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/datasaving/DataSavingHelper;->startSaving()V

    .line 6337
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$47;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$3400(Lcom/android/settings_ex/DataUsageSummary;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "opera_max_china_state"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6340
    return-void
.end method
