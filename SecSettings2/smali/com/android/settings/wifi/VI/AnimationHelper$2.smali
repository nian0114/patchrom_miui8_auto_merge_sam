.class final Lcom/android/settings_ex/wifi/VI/AnimationHelper$2;
.super Ljava/lang/Object;
.source "AnimationHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/VI/AnimationHelper;->fadeAni(Landroid/view/View;FFJJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$end:F

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/settings_ex/wifi/VI/AnimationHelper$2;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/android/settings_ex/wifi/VI/AnimationHelper$2;->val$end:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 59
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/wifi/VI/AnimationHelper$2;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/android/settings_ex/wifi/VI/AnimationHelper$2;->val$end:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 53
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 47
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 42
    return-void
.end method
