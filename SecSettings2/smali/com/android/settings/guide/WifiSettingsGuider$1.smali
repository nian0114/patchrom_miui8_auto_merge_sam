.class Lcom/android/settings_ex/guide/WifiSettingsGuider$1;
.super Landroid/os/Handler;
.source "WifiSettingsGuider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/guide/WifiSettingsGuider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/guide/WifiSettingsGuider;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/guide/WifiSettingsGuider;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider$1;->this$0:Lcom/android/settings_ex/guide/WifiSettingsGuider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 158
    :goto_0
    return-void

    .line 151
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider$1;->this$0:Lcom/android/settings_ex/guide/WifiSettingsGuider;

    # getter for: Lcom/android/settings_ex/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->access$000(Lcom/android/settings_ex/guide/WifiSettingsGuider;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider$1;->this$0:Lcom/android/settings_ex/guide/WifiSettingsGuider;

    invoke-virtual {v0}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->onDestroy()V

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method
