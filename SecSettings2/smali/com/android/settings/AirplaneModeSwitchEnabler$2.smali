.class Lcom/android/settings_ex/AirplaneModeSwitchEnabler$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/settings_ex/AirplaneModeSwitchEnabler;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/settings_ex/AirplaneModeSwitchEnabler$2;->this$0:Lcom/android/settings_ex/AirplaneModeSwitchEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeSwitchEnabler$2;->this$0:Lcom/android/settings_ex/AirplaneModeSwitchEnabler;

    # invokes: Lcom/android/settings_ex/AirplaneModeSwitchEnabler;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/android/settings_ex/AirplaneModeSwitchEnabler;->access$000(Lcom/android/settings_ex/AirplaneModeSwitchEnabler;)V

    .line 105
    return-void
.end method
