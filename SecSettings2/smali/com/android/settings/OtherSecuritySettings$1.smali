.class Lcom/android/settings_ex/OtherSecuritySettings$1;
.super Landroid/content/BroadcastReceiver;
.source "OtherSecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/OtherSecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/OtherSecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/OtherSecuritySettings;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/settings_ex/OtherSecuritySettings$1;->this$0:Lcom/android/settings_ex/OtherSecuritySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 201
    const-string v0, "OtherSecuritySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimStateReceiver action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/android/settings_ex/OtherSecuritySettings$1;->this$0:Lcom/android/settings_ex/OtherSecuritySettings;

    # invokes: Lcom/android/settings_ex/OtherSecuritySettings;->updateSIMLockEnable()V
    invoke-static {v0}, Lcom/android/settings_ex/OtherSecuritySettings;->access$000(Lcom/android/settings_ex/OtherSecuritySettings;)V

    .line 203
    return-void
.end method
