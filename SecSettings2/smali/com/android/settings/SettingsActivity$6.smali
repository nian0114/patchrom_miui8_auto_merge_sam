.class Lcom/android/settings_ex/SettingsActivity$6;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/SettingsActivity;->onPostResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SettingsActivity;)V
    .locals 0

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/android/settings_ex/SettingsActivity$6;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity$6;->this$0:Lcom/android/settings_ex/SettingsActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/SettingsActivity;->mShowFotaView:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/SettingsActivity;->access$202(Lcom/android/settings_ex/SettingsActivity;Z)Z

    .line 1136
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity$6;->this$0:Lcom/android/settings_ex/SettingsActivity;

    # getter for: Lcom/android/settings_ex/SettingsActivity;->mFotaUpdateStub:Landroid/view/ViewStub;
    invoke-static {v0}, Lcom/android/settings_ex/SettingsActivity;->access$300(Lcom/android/settings_ex/SettingsActivity;)Landroid/view/ViewStub;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity$6;->this$0:Lcom/android/settings_ex/SettingsActivity;

    # getter for: Lcom/android/settings_ex/SettingsActivity;->mFotaUpdateStub:Landroid/view/ViewStub;
    invoke-static {v0}, Lcom/android/settings_ex/SettingsActivity;->access$300(Lcom/android/settings_ex/SettingsActivity;)Landroid/view/ViewStub;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1139
    :cond_0
    return-void
.end method
