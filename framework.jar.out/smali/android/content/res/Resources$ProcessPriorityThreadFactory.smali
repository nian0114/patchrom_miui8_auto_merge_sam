.class final Landroid/content/res/Resources$ProcessPriorityThreadFactory;
.super Ljava/lang/Object;
.source "Resources.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProcessPriorityThreadFactory"
.end annotation


# instance fields
.field private final threadPriority:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "threadPriority"    # I

    .prologue
    .line 1252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1253
    iput p1, p0, Landroid/content/res/Resources$ProcessPriorityThreadFactory;->threadPriority:I

    .line 1254
    return-void
.end method

.method static synthetic access$000(Landroid/content/res/Resources$ProcessPriorityThreadFactory;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources$ProcessPriorityThreadFactory;

    .prologue
    .line 1248
    iget v0, p0, Landroid/content/res/Resources$ProcessPriorityThreadFactory;->threadPriority:I

    return v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1258
    new-instance v0, Landroid/content/res/Resources$ProcessPriorityThreadFactory$1;

    invoke-direct {v0, p0, p1}, Landroid/content/res/Resources$ProcessPriorityThreadFactory$1;-><init>(Landroid/content/res/Resources$ProcessPriorityThreadFactory;Ljava/lang/Runnable;)V

    .line 1265
    .local v0, "result":Ljava/lang/Thread;
    return-object v0
.end method
