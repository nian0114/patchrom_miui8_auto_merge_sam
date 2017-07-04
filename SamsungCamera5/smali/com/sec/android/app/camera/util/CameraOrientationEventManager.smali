.class public Lcom/sec/android/app/camera/util/CameraOrientationEventManager;
.super Ljava/lang/Object;
.source "CameraOrientationEventManager.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/util/CameraOrientationEventManager$CameraOrientationEventListener;
    }
.end annotation


# static fields
.field private static final ORIENTATION_CHANGE_MARGIN_IN_DEGREE:I = 0xa

.field private static final SENSORHUB_SERVICE_NAME:Ljava/lang/String; = "scontext"

.field private static final TAG:Ljava/lang/String; = "CameraOrientationEventManager"

.field private static mIsSContextListenerAvailable:Z

.field private static mLastOrientation:I

.field private static mListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/util/CameraOrientationEventManager$CameraOrientationEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mOrientationListener:Landroid/view/OrientationEventListener;

.field private static mSContextListener:Landroid/hardware/scontext/SContextListener;

.field private static mSContextManager:Landroid/hardware/scontext/SContextManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 47
    sput-object v0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 48
    sput-object v0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    .line 49
    sput-boolean v1, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mIsSContextListenerAvailable:Z

    .line 52
    sput-object v0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 54
    sput v1, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mLastOrientation:I

    .line 57
    sput-object v0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 63
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const-string v1, "scontext"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/scontext/SContextManager;

    sput-object v1, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 65
    sget-object v1, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v1, :cond_0

    .line 66
    sget-object v1, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mIsSContextListenerAvailable:Z

    .line 70
    :cond_0
    sget-boolean v1, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mIsSContextListenerAvailable:Z

    if-eqz v1, :cond_1

    .line 71
    const-string v1, "CameraOrientationEventManager"

    const-string v2, "using SContextListener"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-direct {p0, p0}, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->setSContextListener(Landroid/hardware/scontext/SContextListener;)V

    .line 89
    :goto_0
    return-void

    .line 74
    :cond_1
    const-string v1, "CameraOrientationEventManager"

    const-string v2, "using OrientationEventListener of android"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v1, Lcom/sec/android/app/camera/util/CameraOrientationEventManager$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/util/CameraOrientationEventManager$1;-><init>(Lcom/sec/android/app/camera/util/CameraOrientationEventManager;Landroid/content/Context;)V

    sput-object v1, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    goto :goto_0
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 40
    sput p0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mLastOrientation:I

    return p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/util/CameraOrientationEventManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/util/CameraOrientationEventManager;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->notifyOrientationChaged(I)V

    return-void
.end method

.method private convertSContextOrientationToDegree(I)I
    .locals 1
    .param p1, "sContextOrientation"    # I

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "orientation":I
    packed-switch p1, :pswitch_data_0

    .line 190
    :goto_0
    return v0

    .line 175
    :pswitch_0
    const/4 v0, -0x1

    .line 176
    goto :goto_0

    .line 178
    :pswitch_1
    const/4 v0, 0x0

    .line 179
    goto :goto_0

    .line 181
    :pswitch_2
    const/16 v0, 0x10e

    .line 182
    goto :goto_0

    .line 184
    :pswitch_3
    const/16 v0, 0xb4

    .line 185
    goto :goto_0

    .line 187
    :pswitch_4
    const/16 v0, 0x5a

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static disable()V
    .locals 3

    .prologue
    .line 95
    const-string v0, "CameraOrientationEventManager"

    const-string v1, "orientation listener disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-boolean v0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mIsSContextListenerAvailable:Z

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    sget-object v1, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 101
    :goto_0
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mLastOrientation:I

    .line 102
    return-void

    .line 99
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0
.end method

.method public static enable()V
    .locals 4

    .prologue
    .line 108
    const-string v1, "CameraOrientationEventManager"

    const-string v2, "orientation listener enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-boolean v1, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mIsSContextListenerAvailable:Z

    if-eqz v1, :cond_0

    .line 110
    new-instance v0, Landroid/hardware/scontext/SContextAutoRotationAttribute;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/hardware/scontext/SContextAutoRotationAttribute;-><init>(I)V

    .line 111
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    sget-object v1, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    sget-object v2, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    .line 115
    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :goto_0
    return-void

    .line 113
    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0
.end method

.method public static isSContextOrienatationEventListenerAvailable()Z
    .locals 1

    .prologue
    .line 123
    sget-boolean v0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mIsSContextListenerAvailable:Z

    return v0
.end method

.method private notifyOrientationChaged(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 199
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 200
    const-string v1, "CameraOrientationEventManager"

    const-string v2, "notifyOrientationChaged - ORIENTATION_UNKNOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_0
    return-void

    .line 204
    :cond_0
    sput p1, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mLastOrientation:I

    .line 205
    sget-object v2, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 206
    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 208
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/util/CameraOrientationEventManager$CameraOrientationEventListener;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/util/CameraOrientationEventManager$CameraOrientationEventListener;

    sget v3, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mLastOrientation:I

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/util/CameraOrientationEventManager$CameraOrientationEventListener;->onCameraOrientationChanged(I)V

    goto :goto_1

    .line 211
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/util/CameraOrientationEventManager$CameraOrientationEventListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/util/CameraOrientationEventManager$CameraOrientationEventListener;>;"
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static registerListener(Lcom/sec/android/app/camera/util/CameraOrientationEventManager$CameraOrientationEventListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/sec/android/app/camera/util/CameraOrientationEventManager$CameraOrientationEventListener;

    .prologue
    .line 132
    sget v0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mLastOrientation:I

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/util/CameraOrientationEventManager$CameraOrientationEventListener;->onCameraOrientationChanged(I)V

    .line 133
    sget-object v0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method private roundOrientation(I)I
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 229
    const/4 v0, 0x0

    .line 231
    .local v0, "newOrientation":I
    const/16 v1, 0x131

    if-le v1, p1, :cond_0

    const/16 v1, 0x37

    if-ge p1, v1, :cond_2

    .line 232
    :cond_0
    const/4 v0, 0x0

    .line 241
    :cond_1
    :goto_0
    return v0

    .line 233
    :cond_2
    const/16 v1, 0x23

    if-gt v1, p1, :cond_3

    const/16 v1, 0x91

    if-ge p1, v1, :cond_3

    .line 234
    const/16 v0, 0x5a

    goto :goto_0

    .line 235
    :cond_3
    const/16 v1, 0x7d

    if-gt v1, p1, :cond_4

    const/16 v1, 0xeb

    if-ge p1, v1, :cond_4

    .line 236
    const/16 v0, 0xb4

    goto :goto_0

    .line 237
    :cond_4
    const/16 v1, 0xd7

    if-gt v1, p1, :cond_1

    const/16 v1, 0x145

    if-ge p1, v1, :cond_1

    .line 238
    const/16 v0, 0x10e

    goto :goto_0
.end method

.method private setSContextListener(Landroid/hardware/scontext/SContextListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;

    .prologue
    .line 250
    const-string v0, "CameraOrientationEventManager"

    const-string v1, "setSContextListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    sput-object p1, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    .line 252
    return-void
.end method

.method public static unregisterListener(Lcom/sec/android/app/camera/util/CameraOrientationEventManager$CameraOrientationEventListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/sec/android/app/camera/util/CameraOrientationEventManager$CameraOrientationEventListener;

    .prologue
    .line 142
    sget-object v0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 143
    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    .line 147
    iget-object v3, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 149
    .local v3, "scontext":Landroid/hardware/scontext/SContext;
    invoke-virtual {v3}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 163
    :goto_0
    return-void

    .line 153
    :pswitch_0
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getAutoRotationContext()Landroid/hardware/scontext/SContextAutoRotation;

    move-result-object v1

    .line 154
    .local v1, "autoRotation":Landroid/hardware/scontext/SContextAutoRotation;
    invoke-virtual {v1}, Landroid/hardware/scontext/SContextAutoRotation;->getAngle()I

    move-result v0

    .line 155
    .local v0, "angle":I
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->convertSContextOrientationToDegree(I)I

    move-result v2

    .line 156
    .local v2, "newOrientation":I
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->notifyOrientationChaged(I)V

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
