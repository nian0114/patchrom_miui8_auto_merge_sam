.class public final Lcom/android/providers/media/Columns$KeyFaceColumns;
.super Lcom/android/providers/media/Columns$BaseColumns;
.source "Columns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/Columns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyFaceColumns"
.end annotation


# static fields
.field public static final CARD_ID:Ljava/lang/String; = "card_id"

.field public static final FACE_DATA:Ljava/lang/String; = "face_data"

.field public static final FACE_ID:Ljava/lang/String; = "face_id"

.field public static final GROUP_ID:Ljava/lang/String; = "group_id"

.field public static final PERSON_ID:Ljava/lang/String; = "person_id"

.field public static final RIGHT_COUNT:Ljava/lang/String; = "right_count"

.field public static final WRONG_COUNT:Ljava/lang/String; = "wrong_count"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/providers/media/Columns$BaseColumns;-><init>()V

    return-void
.end method
