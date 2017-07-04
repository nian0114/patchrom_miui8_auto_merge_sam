.class Lcom/sec/android/app/camera/menu/AbstractBaseMenu$1;
.super Landroid/content/BroadcastReceiver;
.source "AbstractBaseMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/AbstractBaseMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/AbstractBaseMenu;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$1;->this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "intentAction":Ljava/lang/String;
    const-string v1, "android.intent.action.switchgallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$1;->this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$1;->this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->onClick(Lcom/samsung/android/glview/GLView;)Z

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    const-string v1, "android.intent.action.switchcamera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$1;->this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$1;->this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$1;->this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->onClick(Lcom/samsung/android/glview/GLView;)Z

    goto :goto_0
.end method
