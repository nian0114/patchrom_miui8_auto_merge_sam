.class Lcom/android/settings_ex/RingtoneSettingTabActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "RingtoneSettingTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/RingtoneSettingTabActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/RingtoneSettingTabActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RingtoneSettingTabActivity;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/settings_ex/RingtoneSettingTabActivity$1;->this$0:Lcom/android/settings_ex/RingtoneSettingTabActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/RingtoneSettingTabActivity$1;->this$0:Lcom/android/settings_ex/RingtoneSettingTabActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/RingtoneSettingTabActivity;->finish()V

    .line 159
    return-void
.end method
