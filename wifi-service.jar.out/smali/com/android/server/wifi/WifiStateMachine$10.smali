.class Lcom/android/server/wifi/WifiStateMachine$10;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiTrafficPoller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 2112
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v4, 0x2005f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2115
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2117
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2118
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOff:Z
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$2002(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 2119
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, v4, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 2124
    :cond_0
    :goto_0
    return-void

    .line 2120
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2121
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOff:Z
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$2002(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 2122
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, v4, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    goto :goto_0
.end method
