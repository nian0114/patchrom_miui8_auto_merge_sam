.class public final Lcom/android/providers/media/Columns$FaceColumns;
.super Lcom/android/providers/media/Columns$BaseColumns;
.source "Columns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/Columns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FaceColumns"
.end annotation


# static fields
.field public static final AUTO_GROUP:Ljava/lang/String; = "auto_group"

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final FACE_DATA:Ljava/lang/String; = "face_data"

.field public static final GROUP_ID:Ljava/lang/String; = "group_id"

.field public static final IMAGE_ID:Ljava/lang/String; = "image_id"

.field public static final PERSON_ID:Ljava/lang/String; = "person_id"

.field public static final POS_BOTTOM:Ljava/lang/String; = "pos_bottom"

.field public static final POS_LEFT:Ljava/lang/String; = "pos_left"

.field public static final POS_RIGHT:Ljava/lang/String; = "pos_right"

.field public static final POS_TOP:Ljava/lang/String; = "pos_top"

.field public static final RECOMMANDED_ID:Ljava/lang/String; = "recommended_id"

.field public static final SIMILARITY:Ljava/lang/String; = "similarity"

.field public static final USEABLE:Ljava/lang/String; = "usable"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/providers/media/Columns$BaseColumns;-><init>()V

    return-void
.end method
