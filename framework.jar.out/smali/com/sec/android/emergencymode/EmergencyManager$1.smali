.class Lcom/sec/android/emergencymode/EmergencyManager$1;
.super Landroid/content/BroadcastReceiver;
.source "EmergencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/emergencymode/EmergencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/emergencymode/EmergencyManager;


# direct methods
.method constructor <init>(Lcom/sec/android/emergencymode/EmergencyManager;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/sec/android/emergencymode/EmergencyManager$1;->this$0:Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, -0x1

    const/4 v4, 0x0

    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    const-string v5, "EmergencyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v5, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "android.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 126
    :cond_2
    const-string v5, "enabled"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 127
    .local v1, "enabled":Z
    const-string v5, "flag"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 128
    .local v2, "flag":I
    const-string v5, "skipdialog"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 129
    .local v3, "skipdialog":Z
    if-eq v2, v8, :cond_0

    .line 130
    const/16 v4, 0x800

    if-ne v2, v4, :cond_3

    # getter for: Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_BCM:Z
    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    const/16 v4, 0x200

    if-eq v2, v4, :cond_4

    const/16 v4, 0x400

    if-ne v2, v4, :cond_6

    :cond_4
    # getter for: Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_UPSM:Z
    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->access$100()Z

    move-result v4

    if-nez v4, :cond_6

    .line 132
    :cond_5
    const-string v4, "EmergencyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive : trying to ON BCM|UPSM while BCM|UPMS not supported in this model. Flag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_6
    iget-object v4, p0, Lcom/sec/android/emergencymode/EmergencyManager$1;->this$0:Lcom/sec/android/emergencymode/EmergencyManager;

    # invokes: Lcom/sec/android/emergencymode/EmergencyManager;->triggerEmergencyMode(ZIZ)V
    invoke-static {v4, v1, v2, v3}, Lcom/sec/android/emergencymode/EmergencyManager;->access$200(Lcom/sec/android/emergencymode/EmergencyManager;ZIZ)V

    goto :goto_0

    .line 138
    .end local v1    # "enabled":Z
    .end local v2    # "flag":I
    .end local v3    # "skipdialog":Z
    :cond_7
    const-string v5, "com.nttdocomo.android.epsmodecontrol.action.CHANGE_MODE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 139
    iget-object v5, p0, Lcom/sec/android/emergencymode/EmergencyManager$1;->this$0:Lcom/sec/android/emergencymode/EmergencyManager;

    # getter for: Lcom/sec/android/emergencymode/EmergencyManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/emergencymode/EmergencyManager;->access$300(Lcom/sec/android/emergencymode/EmergencyManager;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_8

    const/4 v1, 0x1

    .line 140
    .restart local v1    # "enabled":Z
    :goto_1
    const/16 v2, 0x10

    .line 141
    .restart local v2    # "flag":I
    iget-object v5, p0, Lcom/sec/android/emergencymode/EmergencyManager$1;->this$0:Lcom/sec/android/emergencymode/EmergencyManager;

    # invokes: Lcom/sec/android/emergencymode/EmergencyManager;->triggerEmergencyMode(ZIZ)V
    invoke-static {v5, v1, v2, v4}, Lcom/sec/android/emergencymode/EmergencyManager;->access$200(Lcom/sec/android/emergencymode/EmergencyManager;ZIZ)V

    goto/16 :goto_0

    .end local v1    # "enabled":Z
    .end local v2    # "flag":I
    :cond_8
    move v1, v4

    .line 139
    goto :goto_1
.end method
