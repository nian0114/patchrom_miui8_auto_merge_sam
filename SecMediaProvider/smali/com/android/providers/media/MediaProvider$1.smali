.class Lcom/android/providers/media/MediaProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "MediaProvider.java"


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
    .line 348
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$1;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 351
    # getter for: Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShutdownReceiver - Intent.getAction : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$1;->this$0:Lcom/android/providers/media/MediaProvider;

    # invokes: Lcom/android/providers/media/MediaProvider;->deletePrivateStorageFiles(Landroid/content/Context;)V
    invoke-static {v0, p1}, Lcom/android/providers/media/MediaProvider;->access$100(Lcom/android/providers/media/MediaProvider;Landroid/content/Context;)V

    .line 355
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$1;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mContentApp:Lcom/android/providers/media/ContentApp;
    invoke-static {v0}, Lcom/android/providers/media/MediaProvider;->access$200(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/ContentApp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$1;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mContentApp:Lcom/android/providers/media/ContentApp;
    invoke-static {v0}, Lcom/android/providers/media/MediaProvider;->access$200(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/ContentApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/media/ContentApp;->destroy()V

    .line 359
    :cond_0
    # getter for: Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mShutdownReceiver - SHUTDOWN intent received! bIsShuttingDown false -> true"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v0, 0x1

    # setter for: Lcom/android/providers/media/MediaProvider;->bIsShuttingDown:Z
    invoke-static {v0}, Lcom/android/providers/media/MediaProvider;->access$302(Z)Z

    .line 364
    :cond_1
    return-void
.end method
