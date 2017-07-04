.class public Lcom/sec/android/app/camera/command/HelpHubCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "HelpHubCommand.java"


# instance fields
.field private final mReceiver:Lcom/sec/android/app/camera/command/CommandInterface;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/command/CommandInterface;)V
    .locals 0
    .param p1, "receiver"    # Lcom/sec/android/app/camera/command/CommandInterface;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/sec/android/app/camera/command/HelpHubCommand;->mReceiver:Lcom/sec/android/app/camera/command/CommandInterface;

    .line 25
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/camera/command/HelpHubCommand;->mReceiver:Lcom/sec/android/app/camera/command/CommandInterface;

    invoke-interface {v0}, Lcom/sec/android/app/camera/command/CommandInterface;->onHelpHubSelect()Z

    move-result v0

    return v0
.end method
