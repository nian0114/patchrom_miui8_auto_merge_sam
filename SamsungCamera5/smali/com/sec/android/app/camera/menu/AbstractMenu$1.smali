.class Lcom/sec/android/app/camera/menu/AbstractMenu$1;
.super Ljava/lang/Object;
.source "AbstractMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/AbstractMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/AbstractMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/AbstractMenu;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu$1;->this$0:Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu$1;->this$0:Lcom/sec/android/app/camera/menu/AbstractMenu;

    # getter for: Lcom/sec/android/app/camera/menu/AbstractMenu;->mShowAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->access$000(Lcom/sec/android/app/camera/menu/AbstractMenu;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu$1;->this$0:Lcom/sec/android/app/camera/menu/AbstractMenu;

    # getter for: Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeShowAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->access$100(Lcom/sec/android/app/camera/menu/AbstractMenu;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu$1;->this$0:Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onShowAnimationEnd(Landroid/view/animation/Animation;)V

    .line 70
    :cond_1
    :goto_0
    return-void

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu$1;->this$0:Lcom/sec/android/app/camera/menu/AbstractMenu;

    # getter for: Lcom/sec/android/app/camera/menu/AbstractMenu;->mHideAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->access$200(Lcom/sec/android/app/camera/menu/AbstractMenu;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu$1;->this$0:Lcom/sec/android/app/camera/menu/AbstractMenu;

    # getter for: Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->access$300(Lcom/sec/android/app/camera/menu/AbstractMenu;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu$1;->this$0:Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onHideAnimationEnd(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 75
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu$1;->this$0:Lcom/sec/android/app/camera/menu/AbstractMenu;

    # getter for: Lcom/sec/android/app/camera/menu/AbstractMenu;->mShowAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->access$000(Lcom/sec/android/app/camera/menu/AbstractMenu;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu$1;->this$0:Lcom/sec/android/app/camera/menu/AbstractMenu;

    # getter for: Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeShowAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->access$100(Lcom/sec/android/app/camera/menu/AbstractMenu;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu$1;->this$0:Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onShowAnimationStart(Landroid/view/animation/Animation;)V

    .line 84
    :cond_1
    :goto_0
    return-void

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu$1;->this$0:Lcom/sec/android/app/camera/menu/AbstractMenu;

    # getter for: Lcom/sec/android/app/camera/menu/AbstractMenu;->mHideAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->access$200(Lcom/sec/android/app/camera/menu/AbstractMenu;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu$1;->this$0:Lcom/sec/android/app/camera/menu/AbstractMenu;

    # getter for: Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->access$300(Lcom/sec/android/app/camera/menu/AbstractMenu;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu$1;->this$0:Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onHideAnimationStart(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
