.class Lcom/android/settings_ex/guide/BtSettingsGuider$4;
.super Landroid/content/BroadcastReceiver;
.source "BtSettingsGuider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/guide/BtSettingsGuider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/guide/BtSettingsGuider;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/guide/BtSettingsGuider;)V
    .locals 0

    .prologue
    .line 672
    iput-object p1, p0, Lcom/android/settings_ex/guide/BtSettingsGuider$4;->this$0:Lcom/android/settings_ex/guide/BtSettingsGuider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 676
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/guide/BtSettingsGuider$4;->this$0:Lcom/android/settings_ex/guide/BtSettingsGuider;

    invoke-static {v0}, Lcom/android/settings_ex/guide/BtSettingsGuider$BluetoothBroadcastActions;->fromAction(Ljava/lang/String;)Lcom/android/settings_ex/guide/BtSettingsGuider$BluetoothBroadcastActions;

    move-result-object v2

    # invokes: Lcom/android/settings_ex/guide/BtSettingsGuider;->onReceive(Lcom/android/settings_ex/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V
    invoke-static {v1, v2, p2}, Lcom/android/settings_ex/guide/BtSettingsGuider;->access$200(Lcom/android/settings_ex/guide/BtSettingsGuider;Lcom/android/settings_ex/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V

    .line 679
    return-void
.end method
