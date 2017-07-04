.class Lcom/sec/android/app/camera/menu/BaseMenu$3;
.super Ljava/lang/Object;
.source "BaseMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/BaseMenu;->makeRecordingMenuVIAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/BaseMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/BaseMenu;)V
    .locals 0

    .prologue
    .line 1150
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/BaseMenu$3;->this$0:Lcom/sec/android/app/camera/menu/BaseMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 1154
    const-string v0, "BaseMenu"

    const-string v1, "onAnimationEnd - mMiddleVIButton"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu$3;->this$0:Lcom/sec/android/app/camera/menu/BaseMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu$3;->this$0:Lcom/sec/android/app/camera/menu/BaseMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/BaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1156
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu$3;->this$0:Lcom/sec/android/app/camera/menu/BaseMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu$3;->this$0:Lcom/sec/android/app/camera/menu/BaseMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleParentView:Lcom/samsung/android/glview/GLView;

    iput-object v1, v0, Lcom/samsung/android/glview/GLButton;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1157
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu$3;->this$0:Lcom/sec/android/app/camera/menu/BaseMenu;

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleParentView:Lcom/samsung/android/glview/GLView;

    .line 1158
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu$3;->this$0:Lcom/sec/android/app/camera/menu/BaseMenu;

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    .line 1159
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu$3;->this$0:Lcom/sec/android/app/camera/menu/BaseMenu;

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1160
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1164
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1168
    const-string v0, "BaseMenu"

    const-string v1, "onAnimationStart - mMiddleVIButton"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    return-void
.end method
