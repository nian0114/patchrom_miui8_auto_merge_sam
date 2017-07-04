.class Lcom/sec/android/app/camera/menu/EasyBaseMenu$2;
.super Ljava/lang/Object;
.source "EasyBaseMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/EasyBaseMenu;->makeRecordingMenuVIAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/EasyBaseMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/EasyBaseMenu;)V
    .locals 0

    .prologue
    .line 937
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu$2;->this$0:Lcom/sec/android/app/camera/menu/EasyBaseMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 941
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu$2;->this$0:Lcom/sec/android/app/camera/menu/EasyBaseMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu$2;->this$0:Lcom/sec/android/app/camera/menu/EasyBaseMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 942
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu$2;->this$0:Lcom/sec/android/app/camera/menu/EasyBaseMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu$2;->this$0:Lcom/sec/android/app/camera/menu/EasyBaseMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mBottomParentView:Lcom/samsung/android/glview/GLView;

    iput-object v1, v0, Lcom/samsung/android/glview/GLButton;->mParent:Lcom/samsung/android/glview/GLView;

    .line 943
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 947
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 951
    return-void
.end method
