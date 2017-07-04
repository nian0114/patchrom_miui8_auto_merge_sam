.class Lcom/android/providers/media/MediaProvider$6;
.super Ljava/lang/Object;
.source "MediaProvider.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteDatabase$CustomFunction;


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
    .line 1343
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$6;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback([Ljava/lang/String;)V
    .locals 6
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 1350
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$6;->this$0:Lcom/android/providers/media/MediaProvider;

    iget-object v2, v2, Lcom/android/providers/media/MediaProvider;->mDirectoryCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1352
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$6;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mDisableMtpObjectCallbacks:Z
    invoke-static {v2}, Lcom/android/providers/media/MediaProvider;->access$600(Lcom/android/providers/media/MediaProvider;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1363
    :cond_0
    :goto_0
    return-void

    .line 1355
    :cond_1
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$6;->this$0:Lcom/android/providers/media/MediaProvider;

    # getter for: Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;
    invoke-static {v2}, Lcom/android/providers/media/MediaProvider;->access$1800(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/IMtpService;

    move-result-object v1

    .line 1356
    .local v1, "mtpService":Lcom/android/providers/media/IMtpService;
    if-eqz v1, :cond_0

    .line 1358
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$6;->this$0:Lcom/android/providers/media/MediaProvider;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    # invokes: Lcom/android/providers/media/MediaProvider;->sendObjectRemoved(J)V
    invoke-static {v2, v4, v5}, Lcom/android/providers/media/MediaProvider;->access$1900(Lcom/android/providers/media/MediaProvider;J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1359
    :catch_0
    move-exception v0

    .line 1360
    .local v0, "e":Ljava/lang/NumberFormatException;
    # getter for: Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NumberFormatException in mObjectRemovedCallback"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
