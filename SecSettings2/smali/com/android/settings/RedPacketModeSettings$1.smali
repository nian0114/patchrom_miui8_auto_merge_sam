.class Lcom/android/settings/RedPacketModeSettings$1;
.super Landroid/database/ContentObserver;
.source "RedPacketModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RedPacketModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RedPacketModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/RedPacketModeSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/settings/RedPacketModeSettings$1;->this$0:Lcom/android/settings/RedPacketModeSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 54
    iget-object v1, p0, Lcom/android/settings/RedPacketModeSettings$1;->this$0:Lcom/android/settings/RedPacketModeSettings;

    invoke-virtual {v1}, Lcom/android/settings/RedPacketModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "red_packet_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 56
    .local v0, "switchState":Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/RedPacketModeSettings$1;->this$0:Lcom/android/settings/RedPacketModeSettings;

    # getter for: Lcom/android/settings/RedPacketModeSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v1}, Lcom/android/settings/RedPacketModeSettings;->access$000(Lcom/android/settings/RedPacketModeSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 57
    return-void
.end method
