.class Lcom/android/settings_ex/IccLockSettings$1;
.super Landroid/os/Handler;
.source "IccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/IccLockSettings;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/settings_ex/IccLockSettings$1;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 154
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 155
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 179
    :goto_0
    return-void

    .line 157
    :pswitch_0
    const/4 v1, 0x0

    .line 158
    .local v1, "ce":Lcom/android/internal/telephony/CommandException;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_0

    .line 159
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .end local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 161
    .restart local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_1

    .line 162
    const-string v2, "IccLockSettings"

    const-string v3, "mHandler, /ENABLE_ICC_PIN_COMPLETE/ : GENERIC_FAILURE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings$1;->this$0:Lcom/android/settings_ex/IccLockSettings;

    # invokes: Lcom/android/settings_ex/IccLockSettings;->iccLockNotAllowed()V
    invoke-static {v2}, Lcom/android/settings_ex/IccLockSettings;->access$000(Lcom/android/settings_ex/IccLockSettings;)V

    .line 169
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings$1;->this$0:Lcom/android/settings_ex/IccLockSettings;

    # invokes: Lcom/android/settings_ex/IccLockSettings;->updatePreferences()V
    invoke-static {v2}, Lcom/android/settings_ex/IccLockSettings;->access$200(Lcom/android/settings_ex/IccLockSettings;)V

    goto :goto_0

    .line 165
    :cond_1
    const-string v2, "IccLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHandler, ce is null or ar.exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings$1;->this$0:Lcom/android/settings_ex/IccLockSettings;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    iget v4, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/settings_ex/IccLockSettings;->iccLockChanged(ZI)V
    invoke-static {v3, v2, v4}, Lcom/android/settings_ex/IccLockSettings;->access$100(Lcom/android/settings_ex/IccLockSettings;ZI)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 172
    .end local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings$1;->this$0:Lcom/android/settings_ex/IccLockSettings;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/settings_ex/IccLockSettings;->iccPinChanged(Landroid/os/AsyncResult;I)V
    invoke-static {v2, v0, v3}, Lcom/android/settings_ex/IccLockSettings;->access$300(Lcom/android/settings_ex/IccLockSettings;Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 175
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings$1;->this$0:Lcom/android/settings_ex/IccLockSettings;

    # invokes: Lcom/android/settings_ex/IccLockSettings;->updatePreferences()V
    invoke-static {v2}, Lcom/android/settings_ex/IccLockSettings;->access$200(Lcom/android/settings_ex/IccLockSettings;)V

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
