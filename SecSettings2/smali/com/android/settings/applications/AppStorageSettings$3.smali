.class Lcom/android/settings_ex/applications/AppStorageSettings$3;
.super Landroid/os/Handler;
.source "AppStorageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/AppStorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/AppStorageSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/AppStorageSettings;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/settings_ex/applications/AppStorageSettings$3;->this$0:Lcom/android/settings_ex/applications/AppStorageSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStorageSettings$3;->this$0:Lcom/android/settings_ex/applications/AppStorageSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/AppStorageSettings;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 512
    :goto_0
    return-void

    .line 503
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 505
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStorageSettings$3;->this$0:Lcom/android/settings_ex/applications/AppStorageSettings;

    # invokes: Lcom/android/settings_ex/applications/AppStorageSettings;->processClearMsg(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/settings_ex/applications/AppStorageSettings;->access$200(Lcom/android/settings_ex/applications/AppStorageSettings;Landroid/os/Message;)V

    goto :goto_0

    .line 509
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStorageSettings$3;->this$0:Lcom/android/settings_ex/applications/AppStorageSettings;

    iget-object v0, v0, Lcom/android/settings_ex/applications/AppStorageSettings;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings_ex/applications/AppStorageSettings$3;->this$0:Lcom/android/settings_ex/applications/AppStorageSettings;

    iget-object v1, v1, Lcom/android/settings_ex/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/applications/AppStorageSettings$3;->this$0:Lcom/android/settings_ex/applications/AppStorageSettings;

    iget v2, v2, Lcom/android/settings_ex/applications/AppStorageSettings;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_exlib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    goto :goto_0

    .line 503
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
