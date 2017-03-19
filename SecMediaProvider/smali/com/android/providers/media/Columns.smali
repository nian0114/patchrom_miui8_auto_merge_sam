.class public Lcom/android/providers/media/Columns;
.super Ljava/lang/Object;
.source "Columns.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/Columns$KeyFaceColumns;,
        Lcom/android/providers/media/Columns$FaceColumns;,
        Lcom/android/providers/media/Columns$PersonColumns;,
        Lcom/android/providers/media/Columns$FileColumns;,
        Lcom/android/providers/media/Columns$BaseColumns;
    }
.end annotation


# static fields
.field public static final ACTION_FACE_AUTO_GROUP_FINISHED:Ljava/lang/String; = "com.android.media.FACE_AUTO_GROUP_FINISHED"

.field public static final ACTION_FACE_AUTO_GROUP_STARTED:Ljava/lang/String; = "com.android.media.FACE_AUTO_GROUP_STARTED"

.field public static final ACTION_FACE_GET_SIMILAR_PERSONS_FINISHED:Ljava/lang/String; = "com.android.media.FACE_GET_SIMILAR_PERSONS_FINISHED"

.field public static final ACTION_FACE_SCANNER_FINISHED:Ljava/lang/String; = "com.android.media.FACE_SCANNER_FINISHED"

.field public static final ACTION_FACE_SCANNER_PROGRESS:Ljava/lang/String; = "com.android.media.FACE_SCANNER_PROGRESS"

.field public static final ACTION_FACE_SCANNER_STARTED:Ljava/lang/String; = "com.android.media.FACE_SCANNER_STARTED"

.field public static final ACTION_FACE_SCANNER_STOPPED:Ljava/lang/String; = "com.android.media.FACE_SCANNER_STOPPED"

.field public static final CONTACT_CHANGED_URI:Landroid/net/Uri;

.field public static final FACES_URI:Landroid/net/Uri;

.field public static final FACE_SCANNER_PROGRESS_URI:Ljava/lang/String; = "content://media/external/face_scanning_progress"

.field public static final FACE_SCANNER_REQUEST_URI:Landroid/net/Uri;

.field public static final GET_SIMILAR_PERSONS_URI:Landroid/net/Uri;

.field protected static IGNORE_NOTIFY:Ljava/lang/String; = null

.field public static final KEY_FACES_URI:Landroid/net/Uri;

.field public static final PERSONS_URI:Landroid/net/Uri;

.field public static final RAW_SQL_MAIN_DB:Ljava/lang/String; = "main"

.field public static final RAW_SQL_PERSON_DB:Ljava/lang/String; = "person"

.field public static final RAW_SQL_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "content://media/external/raw_sql"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/Columns;->RAW_SQL_URI:Landroid/net/Uri;

    .line 15
    const-string v0, "content://media/external/faces"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    .line 16
    const-string v0, "content://media/internal/faces"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/Columns;->KEY_FACES_URI:Landroid/net/Uri;

    .line 17
    const-string v0, "content://media/internal/persons"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/Columns;->PERSONS_URI:Landroid/net/Uri;

    .line 18
    const-string v0, "content://media/external/face_scanner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/Columns;->FACE_SCANNER_REQUEST_URI:Landroid/net/Uri;

    .line 19
    const-string v0, "content://media/internal/contact_changed"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/Columns;->CONTACT_CHANGED_URI:Landroid/net/Uri;

    .line 22
    const-string v0, "ignoreNotify"

    sput-object v0, Lcom/android/providers/media/Columns;->IGNORE_NOTIFY:Ljava/lang/String;

    .line 40
    const-string v0, "content://media/external/similar_persons"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/Columns;->GET_SIMILAR_PERSONS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method
