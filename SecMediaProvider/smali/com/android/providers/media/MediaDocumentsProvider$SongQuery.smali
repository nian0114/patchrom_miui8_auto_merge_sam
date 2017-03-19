.class interface abstract Lcom/android/providers/media/MediaDocumentsProvider$SongQuery;
.super Ljava/lang/Object;
.source "MediaDocumentsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaDocumentsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "SongQuery"
.end annotation


# static fields
.field public static final DATE_MODIFIED:I = 0x4

.field public static final MIME_TYPE:I = 0x2

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final SIZE:I = 0x3

.field public static final TITLE:I = 0x1

.field public static final _ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 731
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/media/MediaDocumentsProvider$SongQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
