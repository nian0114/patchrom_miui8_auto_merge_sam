.class Lcom/android/settings_ex/SettingsActivity$5;
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
    .line 1117
    iput-object p1, p0, Lcom/android/settings_ex/SettingsActivity$5;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1121
    const-string v1, "SettingsActivity"

    const-string v2, "on click go fota update"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "sec.fota.action.SOFTWARE_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1124
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1125
    # getter for: Lcom/android/settings_ex/SettingsActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings_ex/SettingsActivity;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1126
    return-void
.end method
