.class Lcom/samsung/android/glview/GLButton$6;
.super Ljava/lang/Object;
.source "GLButton.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$AnimationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/glview/GLButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/glview/GLButton;


# direct methods
.method constructor <init>(Lcom/samsung/android/glview/GLButton;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/samsung/android/glview/GLButton$6;->this$0:Lcom/samsung/android/glview/GLButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton$6;->this$0:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    # invokes: Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V
    invoke-static {v0, v1}, Lcom/samsung/android/glview/GLButton;->access$100(Lcom/samsung/android/glview/GLButton;Z)V

    .line 225
    return-void
.end method

.method public onAnimationStart(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 230
    return-void
.end method
