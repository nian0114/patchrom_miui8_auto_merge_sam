.class Lcom/android/settings_ex/AirplaneModeSwitchEnabler$1;
.super Landroid/os/Handler;
.source "AirplaneModeSwitchEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/AirplaneModeSwitchEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/AirplaneModeSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/AirplaneModeSwitchEnabler;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/settings_ex/AirplaneModeSwitchEnabler$1;->this$0:Lcom/android/settings_ex/AirplaneModeSwitchEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 91
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 93
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeSwitchEnabler$1;->this$0:Lcom/android/settings_ex/AirplaneModeSwitchEnabler;

    # invokes: Lcom/android/settings_ex/AirplaneModeSwitchEnabler;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/android/settings_ex/AirplaneModeSwitchEnabler;->access$000(Lcom/android/settings_ex/AirplaneModeSwitchEnabler;)V

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
