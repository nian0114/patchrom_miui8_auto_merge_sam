.class Lcom/android/settings_ex/ResetSettings$2;
.super Landroid/os/Handler;
.source "ResetSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ResetSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ResetSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ResetSettings;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/settings_ex/ResetSettings$2;->this$0:Lcom/android/settings_ex/ResetSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 186
    iget-object v3, p0, Lcom/android/settings_ex/ResetSettings$2;->this$0:Lcom/android/settings_ex/ResetSettings;

    # getter for: Lcom/android/settings_ex/ResetSettings;->databaseReset:Z
    invoke-static {v3}, Lcom/android/settings_ex/ResetSettings;->access$000(Lcom/android/settings_ex/ResetSettings;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 187
    iget-object v3, p0, Lcom/android/settings_ex/ResetSettings$2;->this$0:Lcom/android/settings_ex/ResetSettings;

    iget-object v3, v3, Lcom/android/settings_ex/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_1

    .line 188
    iget-object v3, p0, Lcom/android/settings_ex/ResetSettings$2;->this$0:Lcom/android/settings_ex/ResetSettings;

    iget-object v3, v3, Lcom/android/settings_ex/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    iget-object v3, p0, Lcom/android/settings_ex/ResetSettings$2;->this$0:Lcom/android/settings_ex/ResetSettings;

    iget-object v3, v3, Lcom/android/settings_ex/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 192
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/ResetSettings$2;->this$0:Lcom/android/settings_ex/ResetSettings;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/settings_ex/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    .line 195
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/ResetSettings$2;->this$0:Lcom/android/settings_ex/ResetSettings;

    const/4 v4, 0x0

    # setter for: Lcom/android/settings_ex/ResetSettings;->databaseReset:Z
    invoke-static {v3, v4}, Lcom/android/settings_ex/ResetSettings;->access$002(Lcom/android/settings_ex/ResetSettings;Z)Z

    .line 198
    iget-object v3, p0, Lcom/android/settings_ex/ResetSettings$2;->this$0:Lcom/android/settings_ex/ResetSettings;

    # getter for: Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings_ex/ResetSettings;->access$200(Lcom/android/settings_ex/ResetSettings;)Landroid/content/Context;

    move-result-object v0

    .line 199
    .local v0, "finalContext":Landroid/content/Context;
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 200
    .local v2, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/android/settings_ex/ResetSettings$2$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings_ex/ResetSettings$2$1;-><init>(Lcom/android/settings_ex/ResetSettings$2;Landroid/content/Context;)V

    .line 208
    .local v1, "task":Ljava/util/TimerTask;
    const-wide/16 v4, 0x64

    invoke-virtual {v2, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 210
    .end local v0    # "finalContext":Landroid/content/Context;
    .end local v1    # "task":Ljava/util/TimerTask;
    .end local v2    # "timer":Ljava/util/Timer;
    :cond_2
    return-void
.end method
