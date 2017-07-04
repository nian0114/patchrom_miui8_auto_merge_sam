.class final Lcom/android/server/telecom/secutils/TelecomUtilsAudio$3;
.super Ljava/lang/Object;
.source "TelecomUtilsAudio.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->playCallEndTone(Landroid/content/Context;Lcom/android/server/telecom/Call;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .prologue
    sget-object v0, Lcom/android/server/telecom/Log;->TAG:Ljava/lang/String;

    const-string v1, "TelecomUtils : playMediaTone error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    # setter for: Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->mPlayingSecCallEndTone:Z
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->access$002(Z)Z

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->resetAudioStateAfterDisconnect()V

    const/4 v0, 0x1

    return v0
.end method
