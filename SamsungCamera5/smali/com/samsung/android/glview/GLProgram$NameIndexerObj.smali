.class public Lcom/samsung/android/glview/GLProgram$NameIndexerObj;
.super Ljava/lang/Object;
.source "GLProgram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/glview/GLProgram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameIndexerObj"
.end annotation


# instance fields
.field public mHandle:I

.field public mQualifier:I

.field public mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    const/16 v0, 0x66

    iput v0, p0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mQualifier:I

    .line 171
    const/16 v0, 0xcf

    iput v0, p0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mType:I

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    return-void
.end method
