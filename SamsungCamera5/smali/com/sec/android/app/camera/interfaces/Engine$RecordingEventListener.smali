.class public interface abstract Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecordingEventListener"
.end annotation


# virtual methods
.method public abstract onMediaRecorderPrepared(Lcom/sec/android/secmediarecorder/SecMediaRecorder;)V
.end method

.method public abstract onRecordingCancelled()V
.end method

.method public abstract onRecordingPaused()V
.end method

.method public abstract onRecordingResumed()V
.end method

.method public abstract onRecordingStarted()V
.end method

.method public abstract onRecordingStopped()V
.end method

.method public abstract onVideoDBUpdatePrepared(Landroid/content/ContentValues;)Z
.end method

.method public abstract onVideoStoringPrepared()V
.end method
