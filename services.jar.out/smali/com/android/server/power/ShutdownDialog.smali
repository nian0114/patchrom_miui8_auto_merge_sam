.class public Lcom/android/server/power/ShutdownDialog;
.super Landroid/app/Dialog;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownDialog$SoundThread;,
        Lcom/android/server/power/ShutdownDialog$DrawHandler;,
        Lcom/android/server/power/ShutdownDialog$ImageLoadThread;,
        Lcom/android/server/power/ShutdownDialog$RunningCheckable;,
        Lcom/android/server/power/ShutdownDialog$StateDrawing;,
        Lcom/android/server/power/ShutdownDialog$StatePrepare;,
        Lcom/android/server/power/ShutdownDialog$DrawState;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x3

.field private static final MSG_LOAD_FINISH:I = -0x1

.field private static final MSG_UPDATE_DELAY:I = 0x64

.field private static final MSG_UPDATE_FRAME:I = 0x0

.field private static final PATH_B2BSHUTDOWNPATH:Ljava/lang/String; = "//data/b2b/ShutdownFileInfo.txt"

.field private static final PATH_BOOTSAMSUNG:Ljava/lang/String; = "//system/media/bootsamsung.qmg"

.field private static final PATH_BOOTSAMSUNG_LOOP:Ljava/lang/String; = "//system/media/bootsamsungloop.qmg"

.field private static final PATH_COVER_POSTFIX:Ljava/lang/String; = ".cover"

.field private static final PATH_MINI_COVER_POSTFIX:Ljava/lang/String; = ".mini"

.field private static final PATH_OLD_SHUTDOWNIMG:Ljava/lang/String; = "//system/media/video/shutdown/shutdown.qmg"

.field private static final PATH_SHUTDOWNIMG:Ljava/lang/String; = "//system/media/shutdown.qmg"

.field private static final PATH_SHUTDOWNIMG_MULTI_CSC:Ljava/lang/String; = "//system/csc_contents/shutdown.qmg"

.field private static final PATH_SHUTDOWNIMG_PST_IMG:Ljava/lang/String; = "//system/PST/shutdown.qmg"

.field private static final PATH_SHUTDOWNSOUND_MULTI_CSC:Ljava/lang/String; = "//system/csc_contents/PowerOff.ogg"

.field private static final PATH_SHUTDOWN_AFTER:Ljava/lang/String; = "//system/media/shutdownafter.qmg"

.field private static final PATH_SHUTDOWN_BEFORE:Ljava/lang/String; = "//system/media/shutdownbefore.qmg"

.field private static final PATH_SHUTDOWN_LOOP:Ljava/lang/String; = "//system/media/shutdownloop.qmg"

.field private static final TAG:Ljava/lang/String; = "ShutdownDialog"


# instance fields
.field private b2bAnimPath:Ljava/lang/String;

.field private b2bSoundPath:Ljava/lang/String;

.field private final bitmapQ:[Landroid/graphics/Bitmap;

.field private bitmapQFront:I

.field private bitmapQRear:I

.field private final coverQmgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/LibQmg;",
            ">;"
        }
    .end annotation
.end field

.field private doLoopAnim:Z

.field private final drawBufferLock:Ljava/lang/Object;

.field private final logHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;

.field private mImageView:Landroid/widget/ImageView;

.field private final mLogString:Ljava/lang/StringBuffer;

.field private mLogView:Landroid/widget/TextView;

.field private mState:Lcom/android/server/power/ShutdownDialog$DrawState;

.field private final mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

.field private final mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

.field private mp:Landroid/media/MediaPlayer;

.field private final qmgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/LibQmg;",
            ">;"
        }
    .end annotation
.end field

.field private shutdownSoundPath:Ljava/lang/String;

.field private silentShutdown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v0, 0x1030007

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/ShutdownDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;

    iput v5, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    iput v5, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;

    iput-boolean v5, p0, Lcom/android/server/power/ShutdownDialog;->silentShutdown:Z

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mLogString:Ljava/lang/StringBuffer;

    new-instance v2, Lcom/android/server/power/ShutdownDialog$1;

    invoke-direct {v2, p0}, Lcom/android/server/power/ShutdownDialog$1;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->logHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/power/ShutdownDialog$StatePrepare;

    invoke-direct {v2, p0, v3}, Lcom/android/server/power/ShutdownDialog$StatePrepare;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    new-instance v2, Lcom/android/server/power/ShutdownDialog$StateDrawing;

    invoke-direct {v2, p0, v3}, Lcom/android/server/power/ShutdownDialog$StateDrawing;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/io/File;

    const-string v3, "//data/b2b/ShutdownFileInfo.txt"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->getBtoBShutdownPath()V

    const-string v2, "ShutdownDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "B2B sound : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->b2bSoundPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "ShutdownDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "B2B img : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->b2bAnimPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/server/power/ShutdownDialog;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x680588

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.cocktailbar"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .local v0, "hasCocktail":Z
    if-eqz v0, :cond_1

    const/16 v2, 0x8ae

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void

    :cond_1
    const/16 v2, 0x7e5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/StringBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mLogString:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog;->prepareSound(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/power/ShutdownDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StateDrawing;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$DrawState;)Lcom/android/server/power/ShutdownDialog$DrawState;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # Lcom/android/server/power/ShutdownDialog$DrawState;

    .prologue
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/power/ShutdownDialog;Lcom/samsung/android/cover/CoverManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # Lcom/samsung/android/cover/CoverManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog;->getSCoverState(Lcom/samsung/android/cover/CoverManager;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/power/ShutdownDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog;->doLoopAnim:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/power/ShutdownDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    iget v0, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/power/ShutdownDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/power/ShutdownDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    iget v0, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/power/ShutdownDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/power/ShutdownDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->getSystemVolume()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->shutdownSoundPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog;->getShutdownSoundPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/power/ShutdownDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog;->silentShutdown:Z

    return v0
.end method

.method private addToPlaylistIfExists(Ljava/lang/String;)Z
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    new-instance v5, Lcom/android/server/power/LibQmg;

    invoke-direct {v5, p1}, Lcom/android/server/power/LibQmg;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    .local v0, "cm":Lcom/samsung/android/cover/CoverManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/android/server/power/ShutdownDialog;->getCoverType(Lcom/samsung/android/cover/CoverManager;)I

    move-result v1

    .local v1, "coverType":I
    const/16 v4, 0x8

    if-ne v1, v4, :cond_0

    const-string v4, "ShutdownDialog"

    const-string v5, "Clear cover"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;

    new-instance v5, Lcom/android/server/power/LibQmg;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/power/LibQmg;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 v2, 0x1

    .end local v0    # "cm":Lcom/samsung/android/cover/CoverManager;
    .end local v1    # "coverType":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .local v2, "rtn":Z
    :goto_2
    return v2

    .end local v2    # "rtn":Z
    .restart local v0    # "cm":Lcom/samsung/android/cover/CoverManager;
    .restart local v1    # "coverType":I
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    const/4 v4, 0x6

    if-ne v1, v4, :cond_1

    const-string v4, ".mini"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v4, ".cover"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "cm":Lcom/samsung/android/cover/CoverManager;
    .end local v1    # "coverType":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "rtn":Z
    goto :goto_2
.end method

.method private createBootupQmgPlayList()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "//system/media/bootsamsung.qmg"

    invoke-direct {p0, v0}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    return-void
.end method

.method private createShutdownQmgPlayList()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .local v1, "imei_mps_code":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->getChameleonCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "//system/media/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_shutdown.qmg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .local v0, "chameleonPath":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .end local v0    # "chameleonPath":Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "//system/PST/shutdown.qmg"

    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "//system/csc_contents/shutdown.qmg"

    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->b2bAnimPath:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->b2bAnimPath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const-string v2, "//system/media/video/shutdown/shutdown.qmg"

    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    const-string v3, "//system/media/shutdown.qmg"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "//system/media/shutdownbefore.qmg"

    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    const-string v2, "//system/media/shutdown.qmg"

    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    const-string v2, "//system/media/shutdownafter.qmg"

    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    const-string v2, "//system/media/shutdownloop.qmg"

    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method private getBtoBShutdownPath()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "//data/b2b/ShutdownFileInfo.txt"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/ShutdownDialog;->b2bAnimPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/ShutdownDialog;->b2bSoundPath:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    return-void

    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_1

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :cond_1
    :goto_4
    throw v3

    :catch_5
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :cond_2
    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_0
.end method

.method private getChameleonCode()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v1, Ljava/io/File;

    const-string v2, "/carrier/chameleon.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "ShutdownDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@Power off sound CHAMELEON is activated : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCoverType(Lcom/samsung/android/cover/CoverManager;)I
    .locals 3
    .param p1, "cm"    # Lcom/samsung/android/cover/CoverManager;

    .prologue
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .local v0, "state":Lcom/samsung/android/cover/CoverState;
    if-nez v0, :cond_0

    const-string v1, "ShutdownDialog"

    const-string v2, "state is null "

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    goto :goto_0
.end method

.method private getSCoverState(Lcom/samsung/android/cover/CoverManager;)Z
    .locals 3
    .param p1, "cm"    # Lcom/samsung/android/cover/CoverManager;

    .prologue
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .local v0, "state":Lcom/samsung/android/cover/CoverState;
    if-nez v0, :cond_0

    const-string v1, "ShutdownDialog"

    const-string v2, "state is null "

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    goto :goto_0
.end method

.method private getShutdownSoundPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "soundPath"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .end local p1    # "soundPath":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "soundPath":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->getChameleonCode()Ljava/lang/String;

    move-result-object v3

    .local v3, "salesCode":Ljava/lang/String;
    if-eqz v3, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/system/media/audio/ui/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/PowerOff.ogg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .local v0, "chameleonPath":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .end local v0    # "chameleonPath":Ljava/lang/StringBuilder;
    :cond_1
    new-instance v4, Ljava/io/File;

    const-string v5, "//system/csc_contents/PowerOff.ogg"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string p1, "//system/csc_contents/PowerOff.ogg"

    goto :goto_0

    :cond_2
    const-string v2, "//system/media/audio/ui/PowerOff.wav"

    .local v2, "poweroff_wav":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    const-string v5, "//system/media/audio/ui/PowerOff.wav"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string p1, "//system/media/audio/ui/PowerOff.wav"

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->b2bSoundPath:Ljava/lang/String;

    if-eqz v4, :cond_4

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog;->b2bSoundPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object p1, p0, Lcom/android/server/power/ShutdownDialog;->b2bSoundPath:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v1, "//system/media/audio/ui/PowerOff.ogg"

    .local v1, "poweroff_ogg":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    const-string v5, "//system/media/audio/ui/PowerOff.ogg"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string p1, "//system/media/audio/ui/PowerOff.ogg"

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private getSystemVolume()I
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/16 v1, -0x270f

    .local v1, "systemVolume":I
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, "am":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    const-string v2, "shutdown"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    :cond_0
    const-string v2, "ShutdownDialog"

    const-string v3, "!@systemVol:%d"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private prepareSound(Ljava/lang/String;)V
    .locals 9
    .param p1, "soundPath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "f":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    .local v4, "tempMediaPlayer":Landroid/media/MediaPlayer;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    const-string v6, "situation=8;device=0"

    invoke-static {v6}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .local v5, "vol":F
    invoke-virtual {v4, v5, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/media/MediaPlayer;->setLooping(Z)V

    new-instance v6, Lcom/android/server/power/ShutdownDialog$2;

    invoke-direct {v6, p0}, Lcom/android/server/power/ShutdownDialog$2;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    invoke-virtual {v4, v6}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    iput-object v4, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "tempMediaPlayer":Landroid/media/MediaPlayer;
    .end local v5    # "vol":F
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    return-void

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "tempMediaPlayer":Landroid/media/MediaPlayer;
    .restart local v5    # "vol":F
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    const-string v6, "ShutdownDialog"

    const-string v7, "sound file.close"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "tempMediaPlayer":Landroid/media/MediaPlayer;
    .end local v5    # "vol":F
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v6, "ShutdownDialog"

    const-string v7, "!@MediaPlayer exception. Sound will not start!"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v6, "ShutdownDialog"

    const-string v7, "sound file.close"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    :try_start_5
    const-string v6, "ShutdownDialog"

    const-string v7, "!@MediaPlayer exception. Sound will not start!"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    const-string v6, "ShutdownDialog"

    const-string v7, "sound file.close"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .local v0, "e":Ljava/lang/SecurityException;
    :goto_3
    :try_start_7
    const-string v6, "ShutdownDialog"

    const-string v7, "!@MediaPlayer exception. Sound will not start!"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v2, :cond_1

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    :catch_6
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    const-string v6, "ShutdownDialog"

    const-string v7, "sound file.close"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v2, :cond_2

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_2
    :goto_5
    throw v6

    :catch_7
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "ShutdownDialog"

    const-string v8, "sound file.close"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_a
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method


# virtual methods
.method public appendTextLog(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->logHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "ShutdownDialog"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->logHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public drawState()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->checkStart()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12c

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public existAnim()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->createShutdownQmgPlayList()V

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSound()Z
    .locals 3

    .prologue
    const-string v0, "ShutdownDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has sound for power off : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    # getter for: Lcom/android/server/power/ShutdownDialog$StatePrepare;->hasSound:Z
    invoke-static {v2}, Lcom/android/server/power/ShutdownDialog$StatePrepare;->access$2900(Lcom/android/server/power/ShutdownDialog$StatePrepare;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    # getter for: Lcom/android/server/power/ShutdownDialog$StatePrepare;->hasSound:Z
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog$StatePrepare;->access$2900(Lcom/android/server/power/ShutdownDialog$StatePrepare;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    const-string v2, "ShutdownDialog"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .local v0, "layout":Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .local v1, "layoutparams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mImageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    const v3, -0xff0001

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/android/server/power/ShutdownDialog$DrawHandler;

    invoke-direct {v2, p0}, Lcom/android/server/power/ShutdownDialog$DrawHandler;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;

    invoke-virtual {p0, v0}, Lcom/android/server/power/ShutdownDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->start()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method public prepareShutdown()V
    .locals 2

    .prologue
    const-string v0, "ShutdownDialog"

    const-string v1, "prepare shutdown dialog image and sound"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->shutdownSoundPath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->createShutdownQmgPlayList()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/ShutdownDialog;->doLoopAnim:Z

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->prepare()V

    return-void
.end method

.method public setSilentShutdown(Z)V
    .locals 0
    .param p1, "v"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/power/ShutdownDialog;->silentShutdown:Z

    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->start()V

    return-void
.end method

.method public waitForAnimEnd(I)Z
    .locals 10
    .param p1, "timeout"    # I

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    mul-int/lit16 v3, p1, 0x3e8

    int-to-long v8, v3

    add-long v4, v6, v8

    .local v4, "endTime":J
    :goto_0
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v3}, Lcom/android/server/power/ShutdownDialog$DrawState;->checkRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v4, v6

    .local v0, "delay":J
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-gtz v3, :cond_1

    const-string v3, "ShutdownDialog"

    const-string v6, "!@Animation finish wait timed out"

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "delay":J
    :cond_0
    const/4 v3, 0x1

    return v3

    .restart local v0    # "delay":J
    :cond_1
    const-string v3, "ShutdownDialog"

    const-string v6, "wait for finish : sleep 100ms"

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "ShutdownDialog"

    const-string v6, "InterruptedException"

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
