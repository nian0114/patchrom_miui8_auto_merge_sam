.class public Lcom/sec/android/app/camera/command/CheckBoxSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "CheckBoxSelectCommand.java"


# instance fields
.field private mMenuid:I

.field private final mReceiver:Lcom/sec/android/app/camera/command/CommandInterface;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/command/CommandInterface;I)V
    .locals 1
    .param p1, "receiver"    # Lcom/sec/android/app/camera/command/CommandInterface;
    .param p2, "commandId"    # I

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/sec/android/app/camera/command/CheckBoxSelectCommand;->mReceiver:Lcom/sec/android/app/camera/command/CommandInterface;

    .line 12
    invoke-static {p2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/command/CheckBoxSelectCommand;->mMenuid:I

    .line 13
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sec/android/app/camera/command/CheckBoxSelectCommand;->mReceiver:Lcom/sec/android/app/camera/command/CommandInterface;

    iget v1, p0, Lcom/sec/android/app/camera/command/CheckBoxSelectCommand;->mMenuid:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/command/CommandInterface;->onCheckBoxSelect(I)Z

    move-result v0

    return v0
.end method
