.class Lcom/android/providers/media/FaceScanner$PersonInfo;
.super Ljava/lang/Object;
.source "FaceScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/FaceScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PersonInfo"
.end annotation


# instance fields
.field public mId:I

.field public mLookupKey:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/providers/media/FaceScanner;


# direct methods
.method constructor <init>(Lcom/android/providers/media/FaceScanner;)V
    .locals 0

    .prologue
    .line 629
    iput-object p1, p0, Lcom/android/providers/media/FaceScanner$PersonInfo;->this$0:Lcom/android/providers/media/FaceScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
