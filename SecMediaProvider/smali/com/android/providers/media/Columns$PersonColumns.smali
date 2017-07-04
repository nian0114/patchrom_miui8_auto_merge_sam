.class public final Lcom/android/providers/media/Columns$PersonColumns;
.super Lcom/android/providers/media/Columns$BaseColumns;
.source "Columns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/Columns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PersonColumns"
.end annotation


# static fields
.field public static final COVER:Ljava/lang/String; = "cover"

.field protected static final FLAG:Ljava/lang/String; = "flag"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final USER_DATA:Ljava/lang/String; = "user_data"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/providers/media/Columns$BaseColumns;-><init>()V

    return-void
.end method
