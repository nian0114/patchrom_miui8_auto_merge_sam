.class Lcom/android/providers/media/MediaProvider$11;
.super Ljava/lang/Thread;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/MediaProvider;->getSimilarPersons(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;

.field final synthetic val$faceId:I

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 9544
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$11;->this$0:Lcom/android/providers/media/MediaProvider;

    iput-object p3, p0, Lcom/android/providers/media/MediaProvider$11;->val$uri:Landroid/net/Uri;

    iput p4, p0, Lcom/android/providers/media/MediaProvider$11;->val$faceId:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 9547
    const/4 v7, 0x0

    .line 9548
    .local v7, "similarIds":[I
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$11;->val$uri:Landroid/net/Uri;

    .line 9549
    .local v5, "newUri":Landroid/net/Uri;
    sget v8, Lcom/android/providers/media/ContentApp;->mFaceCacheMgr:I

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/android/providers/media/NativeApi;->createFR(III)I

    move-result v1

    .line 9550
    .local v1, "fr":I
    if-eqz v1, :cond_0

    .line 9551
    new-instance v6, Lcom/android/providers/media/RecommendFace;

    iget-object v8, p0, Lcom/android/providers/media/MediaProvider$11;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-virtual {v8}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8, v1}, Lcom/android/providers/media/RecommendFace;-><init>(Landroid/content/Context;I)V

    .line 9552
    .local v6, "recommendFace":Lcom/android/providers/media/RecommendFace;
    const/16 v8, 0xa

    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    .line 9553
    iget v8, p0, Lcom/android/providers/media/MediaProvider$11;->val$faceId:I

    invoke-virtual {v6, v8}, Lcom/android/providers/media/RecommendFace;->getRecomendedId(I)[I

    move-result-object v7

    .line 9554
    if-nez v7, :cond_1

    .line 9555
    iget-object v8, p0, Lcom/android/providers/media/MediaProvider$11;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-virtual {v8}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.media.FACE_GET_SIMILAR_PERSONS_FINISHED"

    invoke-direct {v9, v10, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v8, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 9562
    :goto_0
    invoke-static {v1}, Lcom/android/providers/media/NativeApi;->destroyFR(I)V

    .line 9564
    .end local v6    # "recommendFace":Lcom/android/providers/media/RecommendFace;
    :cond_0
    return-void

    .line 9557
    .restart local v6    # "recommendFace":Lcom/android/providers/media/RecommendFace;
    :cond_1
    move-object v0, v7

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_2

    aget v3, v0, v2

    .line 9558
    .local v3, "id":I
    int-to-long v8, v3

    invoke-static {v5, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 9557
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9560
    .end local v3    # "id":I
    :cond_2
    iget-object v8, p0, Lcom/android/providers/media/MediaProvider$11;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-virtual {v8}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.media.FACE_GET_SIMILAR_PERSONS_FINISHED"

    invoke-direct {v9, v10, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v8, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
