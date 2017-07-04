.class public Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "DualEffectMenuSelectCommand.java"


# instance fields
.field private mEffect:I

.field private final mReceiver:Lcom/sec/android/app/camera/command/CommandInterface;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/command/CommandInterface;I)V
    .locals 1
    .param p1, "receiver"    # Lcom/sec/android/app/camera/command/CommandInterface;
    .param p2, "commandId"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;->mReceiver:Lcom/sec/android/app/camera/command/CommandInterface;

    .line 27
    invoke-static {p2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;->mEffect:I

    .line 28
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;->mReceiver:Lcom/sec/android/app/camera/command/CommandInterface;

    iget v1, p0, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;->mEffect:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/command/CommandInterface;->onDualEffectMenuSelect(I)Z

    move-result v0

    return v0
.end method
