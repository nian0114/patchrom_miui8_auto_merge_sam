.class public Lcom/sec/android/app/camera/command/BeautyMenuCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "BeautyMenuCommand.java"


# instance fields
.field private mBeauty:I

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
    iput-object p1, p0, Lcom/sec/android/app/camera/command/BeautyMenuCommand;->mReceiver:Lcom/sec/android/app/camera/command/CommandInterface;

    .line 26
    invoke-static {p2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/command/BeautyMenuCommand;->mBeauty:I

    .line 27
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/app/camera/command/BeautyMenuCommand;->mReceiver:Lcom/sec/android/app/camera/command/CommandInterface;

    iget v1, p0, Lcom/sec/android/app/camera/command/BeautyMenuCommand;->mBeauty:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/command/CommandInterface;->onBeautyMenuSelect(I)Z

    move-result v0

    return v0
.end method
