.class Lcom/android/settings_ex/SettingsActivity$9;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 1374
    iput-object p1, p0, Lcom/android/settings_ex/SettingsActivity$9;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1376
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity$9;->this$0:Lcom/android/settings_ex/SettingsActivity;

    const-class v1, Lcom/android/settings_ex/dashboard/DashboardSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity$9;->this$0:Lcom/android/settings_ex/SettingsActivity;

    # getter for: Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I
    invoke-static {v4}, Lcom/android/settings_ex/SettingsActivity;->access$800(Lcom/android/settings_ex/SettingsActivity;)I

    move-result v5

    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity$9;->this$0:Lcom/android/settings_ex/SettingsActivity;

    # getter for: Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;
    invoke-static {v4}, Lcom/android/settings_ex/SettingsActivity;->access$900(Lcom/android/settings_ex/SettingsActivity;)Ljava/lang/CharSequence;

    move-result-object v6

    move v4, v3

    move v7, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings_ex/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    .line 1378
    return-void
.end method
