.class public Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;
.super Ljava/lang/Object;
.source "CallStateBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallStateBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstanceLock"
.end annotation


# static fields
.field private static sLockCount:I

.field private static sMutex:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sLockCount:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sMutex:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sMutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sLockCount:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/CallStateBroadcaster;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lcom/android/internal/telephony/CallStateBroadcaster;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallStateBroadcaster$1;)V

    # setter for: Lcom/android/internal/telephony/CallStateBroadcaster;->sInstance:Lcom/android/internal/telephony/CallStateBroadcaster;
    invoke-static {v0}, Lcom/android/internal/telephony/CallStateBroadcaster;->access$002(Lcom/android/internal/telephony/CallStateBroadcaster;)Lcom/android/internal/telephony/CallStateBroadcaster;

    :cond_0
    sget v0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sLockCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sLockCount:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .prologue
    sget-object v1, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sMutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sLockCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sLockCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    # setter for: Lcom/android/internal/telephony/CallStateBroadcaster;->sInstance:Lcom/android/internal/telephony/CallStateBroadcaster;
    invoke-static {v0}, Lcom/android/internal/telephony/CallStateBroadcaster;->access$002(Lcom/android/internal/telephony/CallStateBroadcaster;)Lcom/android/internal/telephony/CallStateBroadcaster;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
