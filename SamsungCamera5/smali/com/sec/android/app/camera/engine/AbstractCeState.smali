.class public abstract Lcom/sec/android/app/camera/engine/AbstractCeState;
.super Ljava/lang/Object;
.source "AbstractCeState.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "AbstractCeState"


# instance fields
.field private mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

.field private mId:I

.field private mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/engine/CeRequestQueue;I)V
    .locals 0
    .param p1, "engine"    # Lcom/sec/android/app/camera/engine/CommonEngine;
    .param p2, "requestQueue"    # Lcom/sec/android/app/camera/engine/CeRequestQueue;
    .param p3, "id"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AbstractCeState;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    .line 32
    iput-object p2, p0, Lcom/sec/android/app/camera/engine/AbstractCeState;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    .line 33
    iput p3, p0, Lcom/sec/android/app/camera/engine/AbstractCeState;->mId:I

    .line 34
    return-void
.end method


# virtual methods
.method public abstract cancelRequest(Lcom/sec/android/app/camera/engine/CeRequest;)V
.end method

.method protected getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AbstractCeState;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/sec/android/app/camera/engine/AbstractCeState;->mId:I

    return v0
.end method

.method protected getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AbstractCeState;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    return-object v0
.end method

.method public abstract handleMessage(Landroid/os/Message;)V
.end method

.method public abstract handleRequest(Lcom/sec/android/app/camera/engine/CeRequest;)Z
.end method
