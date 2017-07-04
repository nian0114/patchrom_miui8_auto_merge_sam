.class final Lcom/android/providers/media/FaceProviderInterface$1;
.super Ljava/lang/Object;
.source "FaceProviderInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/FaceProviderInterface;->delete(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/providers/media/MediaProvider$DatabaseHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$userWhere:Ljava/lang/String;

.field final synthetic val$whereArgs:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/providers/media/FaceProviderInterface$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/providers/media/FaceProviderInterface$1;->val$userWhere:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/providers/media/FaceProviderInterface$1;->val$whereArgs:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/providers/media/FaceProviderInterface$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/FaceProviderInterface;->FILES_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/media/FaceProviderInterface$1;->val$userWhere:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/media/FaceProviderInterface$1;->val$whereArgs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 240
    return-void
.end method
