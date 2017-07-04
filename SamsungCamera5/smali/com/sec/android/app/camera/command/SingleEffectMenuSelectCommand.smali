.class public Lcom/sec/android/app/camera/command/SingleEffectMenuSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "SingleEffectMenuSelectCommand.java"


# instance fields
.field private mEffect:I

.field private final mReceiver:Lcom/sec/android/app/camera/command/CommandInterface;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/command/CommandInterface;I)V
    .locals 1
    .param p1, "receiver"    # Lcom/sec/android/app/camera/command/CommandInterface;
    .param p2, "commandId"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sec/android/app/camera/command/SingleEffectMenuSelectCommand;->mReceiver:Lcom/sec/android/app/camera/command/CommandInterface;

    .line 28
    invoke-static {p2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/command/SingleEffectMenuSelectCommand;->mEffect:I

    .line 29
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 3

    .prologue
    .line 33
    iget v0, p0, Lcom/sec/android/app/camera/command/SingleEffectMenuSelectCommand;->mEffect:I

    const/16 v1, 0x232a

    if-ne v0, v1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/sec/android/app/camera/command/SingleEffectMenuSelectCommand;->mReceiver:Lcom/sec/android/app/camera/command/CommandInterface;

    invoke-interface {v0}, Lcom/sec/android/app/camera/command/CommandInterface;->onEffectDownloadMenuCommand()Z

    move-result v0

    .line 36
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/command/SingleEffectMenuSelectCommand;->mReceiver:Lcom/sec/android/app/camera/command/CommandInterface;

    iget v1, p0, Lcom/sec/android/app/camera/command/SingleEffectMenuSelectCommand;->mEffect:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/command/CommandInterface;->onSingleEffectMenuSelect(IZ)Z

    move-result v0

    goto :goto_0
.end method
