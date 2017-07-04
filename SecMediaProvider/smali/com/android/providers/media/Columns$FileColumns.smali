.class public Lcom/android/providers/media/Columns$FileColumns;
.super Lcom/android/providers/media/Columns$BaseColumns;
.source "Columns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/Columns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileColumns"
.end annotation


# static fields
.field protected static final FACE_COUNT:Ljava/lang/String; = "face_count"

.field protected static final SCAN_PRIORITY:Ljava/lang/String; = "scan_pri"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/providers/media/Columns$BaseColumns;-><init>()V

    return-void
.end method
