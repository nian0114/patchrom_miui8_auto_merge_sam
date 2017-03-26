.class Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;
.super Ljava/lang/Object;
.source "WideSelfie.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideArrow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V
    .locals 0

    .prologue
    .line 2222
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 2225
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1600(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2384
    :cond_0
    :goto_0
    return-void

    .line 2228
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2229
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2230
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2231
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 2232
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2233
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideRect(I)V
    invoke-static {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$2000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto :goto_0

    .line 2234
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2235
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2236
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2237
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 2238
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2239
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideRect(I)V
    invoke-static {v0, v5}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$2000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    .line 2240
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2241
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2242
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2243
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 2244
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2245
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideRect(I)V
    invoke-static {v0, v6}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$2000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    .line 2246
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2247
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2248
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2249
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 2250
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2251
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideRect(I)V
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$2000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    .line 2252
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2253
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2254
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2255
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 2256
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2257
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    const/4 v1, 0x5

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideRect(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$2000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    .line 2258
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2259
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2260
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2261
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 2262
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2263
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    const/4 v1, 0x6

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideRect(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$2000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    .line 2264
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2265
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2266
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2267
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 2268
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2269
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    const/4 v1, 0x5

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideRect(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$2000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    .line 2270
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # setter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1802(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)Z

    goto/16 :goto_0

    .line 2271
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2272
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2273
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2274
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 2275
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2276
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideRect(I)V
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$2000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    .line 2277
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2278
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2279
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2280
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 2281
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2282
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideRect(I)V
    invoke-static {v0, v6}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$2000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    .line 2283
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2284
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2285
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2286
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 2287
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2288
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideRect(I)V
    invoke-static {v0, v5}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$2000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    .line 2289
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2290
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2291
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2292
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 2293
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2294
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideRect(I)V
    invoke-static {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$2000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    .line 2295
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2296
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2297
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2298
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 2299
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2300
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideRect(I)V
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$2000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    .line 2301
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # setter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1802(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)Z

    goto/16 :goto_0

    .line 2307
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2308
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2309
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2310
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 2311
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2312
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    const/16 v1, 0x8

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideRect(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$2000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    .line 2313
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2314
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2315
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2316
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 2317
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2318
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    const/16 v1, 0x9

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideRect(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$2000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    .line 2319
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 2320
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2321
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xa

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2322
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 2323
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2324
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    const/16 v1, 0xa

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideRect(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$2000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    .line 2325
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2326
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2327
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xb

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2328
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 2329
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2330
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    const/16 v1, 0xb

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideRect(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$2000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    .line 2331
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2332
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2333
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xc

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2334
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 2335
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2336
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    const/16 v1, 0xc

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideRect(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$2000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    .line 2337
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2338
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2339
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xd

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2340
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xd

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 2341
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xd

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2342
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    const/16 v1, 0xd

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideRect(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$2000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    .line 2343
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xd

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 2344
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xd

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2345
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xc

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2346
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 2347
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2348
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    const/16 v1, 0xc

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideRect(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$2000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    .line 2349
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # setter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1802(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)Z

    goto/16 :goto_0

    .line 2350
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2351
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2352
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xb

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2353
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 2354
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2355
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    const/16 v1, 0xb

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideRect(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$2000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    .line 2356
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2357
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2358
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xa

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2359
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 2360
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2361
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    const/16 v1, 0xa

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideRect(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$2000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    .line 2362
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2363
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2364
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2365
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 2366
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2367
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    const/16 v1, 0x9

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideRect(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$2000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    .line 2368
    :cond_15
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2369
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2370
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2371
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 2372
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2373
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    const/16 v1, 0x8

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideRect(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$2000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    goto/16 :goto_0

    .line 2374
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2375
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2376
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2377
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 2378
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2379
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    const/4 v1, 0x7

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideRect(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$2000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    .line 2380
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # setter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1802(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)Z

    goto/16 :goto_0

    .line 2225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2388
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2392
    return-void
.end method
