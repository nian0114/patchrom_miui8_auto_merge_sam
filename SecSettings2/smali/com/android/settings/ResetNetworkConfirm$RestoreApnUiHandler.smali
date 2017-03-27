.class Lcom/android/settings_ex/ResetNetworkConfirm$RestoreApnUiHandler;
.super Landroid/os/Handler;
.source "ResetNetworkConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ResetNetworkConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ResetNetworkConfirm;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/ResetNetworkConfirm;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$RestoreApnUiHandler;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/ResetNetworkConfirm;Lcom/android/settings_ex/ResetNetworkConfirm$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/ResetNetworkConfirm;
    .param p2, "x1"    # Lcom/android/settings_ex/ResetNetworkConfirm$1;

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ResetNetworkConfirm$RestoreApnUiHandler;-><init>(Lcom/android/settings_ex/ResetNetworkConfirm;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 383
    iget v0, p1, Landroid/os/Message;->what:I

    .line 387
    return-void
.end method
