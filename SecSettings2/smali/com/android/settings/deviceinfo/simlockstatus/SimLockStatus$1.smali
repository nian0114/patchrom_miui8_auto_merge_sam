.class Lcom/android/settings_ex/deviceinfo/simlockstatus/SimLockStatus$1;
.super Landroid/os/Handler;
.source "SimLockStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/simlockstatus/SimLockStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/simlockstatus/SimLockStatus;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/simlockstatus/SimLockStatus;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/simlockstatus/SimLockStatus$1;->this$0:Lcom/android/settings_ex/deviceinfo/simlockstatus/SimLockStatus;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 119
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 125
    :goto_0
    return-void

    .line 121
    :pswitch_0
    const-string v0, "SimLockStatus"

    const-string v1, "MESSAGE_UPDATE_LIST -> updateSimStatus()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/simlockstatus/SimLockStatus$1;->this$0:Lcom/android/settings_ex/deviceinfo/simlockstatus/SimLockStatus;

    # invokes: Lcom/android/settings_ex/deviceinfo/simlockstatus/SimLockStatus;->updateSimStatus()V
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/simlockstatus/SimLockStatus;->access$000(Lcom/android/settings_ex/deviceinfo/simlockstatus/SimLockStatus;)V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
