.class Lcom/android/providers/media/MediaProvider$7;
.super Ljava/lang/Object;
.source "MediaProvider.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;)V
    .locals 0

    .prologue
    .line 1625
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$7;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1627
    monitor-enter p0

    .line 1628
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$7;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {p2}, Lcom/android/providers/media/IMtpService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/providers/media/IMtpService;

    move-result-object v1

    # setter for: Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;
    invoke-static {v0, v1}, Lcom/android/providers/media/MediaProvider;->access$1802(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/IMtpService;)Lcom/android/providers/media/IMtpService;

    .line 1629
    monitor-exit p0

    .line 1630
    return-void

    .line 1629
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 1633
    monitor-enter p0

    .line 1634
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$7;->this$0:Lcom/android/providers/media/MediaProvider;

    const/4 v1, 0x0

    # setter for: Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;
    invoke-static {v0, v1}, Lcom/android/providers/media/MediaProvider;->access$1802(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/IMtpService;)Lcom/android/providers/media/IMtpService;

    .line 1635
    monitor-exit p0

    .line 1636
    return-void

    .line 1635
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
