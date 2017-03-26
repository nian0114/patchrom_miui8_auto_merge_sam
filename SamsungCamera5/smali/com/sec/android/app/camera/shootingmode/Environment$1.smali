.class Lcom/sec/android/app/camera/shootingmode/Environment$1;
.super Landroid/content/BroadcastReceiver;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/Environment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Environment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/Environment;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Environment$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Environment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "action":Ljava/lang/String;
    const-string v1, "Environment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Environment$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Environment;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Environment;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Environment;->access$000(Lcom/sec/android/app/camera/shootingmode/Environment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Environment$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Environment;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Environment;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Environment;->access$100(Lcom/sec/android/app/camera/shootingmode/Environment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Environment$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Environment;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Environment;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Environment;->access$200(Lcom/sec/android/app/camera/shootingmode/Environment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Environment$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Environment;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Environment;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Environment;->access$300(Lcom/sec/android/app/camera/shootingmode/Environment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Environment$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Environment;

    # invokes: Lcom/sec/android/app/camera/shootingmode/Environment;->handleUpdateWeather(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v1, p1, p2}, Lcom/sec/android/app/camera/shootingmode/Environment;->access$400(Lcom/sec/android/app/camera/shootingmode/Environment;Landroid/content/Context;Landroid/content/Intent;)V

    .line 126
    :cond_1
    return-void
.end method
