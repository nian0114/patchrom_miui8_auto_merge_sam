.class public Lcom/samsung/android/glview/GLButton;
.super Lcom/samsung/android/glview/GLView;
.source "GLButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/glview/GLButton$ButtonPressListener;,
        Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;
    }
.end annotation


# static fields
.field private static final DRAW_HIGHLIGHT_DELAY:I = 0xc8

.field private static final DRAW_HIGHLIGHT_MINIMUM_DURATION:I = 0xc8

.field private static final HIGHLIGHTTYPE_COLOR:I = 0x2

.field private static final HIGHLIGHTTYPE_NONE:I = 0x0

.field private static final HIGHLIGHTTYPE_RESOURCE:I = 0x1

.field private static final HIGHLIGHT_FADE_OUT_ANIM_DURATION:I = 0x190

.field private static final STATE_PRESSED_MINIMUM_DURATION:I = 0xc8


# instance fields
.field protected mButtonHeight:F

.field protected mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

.field protected mButtonWidth:F

.field protected mDimBackground:Lcom/samsung/android/glview/GLTexture;

.field protected mDimId:I

.field protected mDrawHighlight:Z

.field protected mDrawRipple:Z

.field protected mHighlight:Lcom/samsung/android/glview/GLTexture;

.field protected mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

.field protected mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

.field protected mHighlightFadeOut:Z

.field protected mHighlightId:I

.field protected mIsNinePatchButton:Z

.field protected mMute:Z

.field protected mNormalBackground:Lcom/samsung/android/glview/GLTexture;

.field protected mNormalId:I

.field protected mNormalTextColor:I

.field protected mPressed:Z

.field protected mPressedBackground:Lcom/samsung/android/glview/GLTexture;

.field protected mPressedId:I

.field protected mPressedTextColor:I

.field private final mResetDrawHighlight:Ljava/lang/Runnable;

.field private final mResetDrawRippleEffect:Ljava/lang/Runnable;

.field protected mResourceOffsetX:F

.field protected mResourceOffsetY:F

.field protected mRippleBackground:Lcom/samsung/android/glview/GLCircle;

.field private mRippleDiameter:F

.field protected mRippleEffect:Lcom/samsung/android/glview/GLCircle;

.field protected mRippleEffectColor:I

.field protected mRippleEffectEnabled:Z

.field protected mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

.field private mRippleRadius:F

.field private mRippleSizeGiven:Z

.field protected mSelected:Z

.field private final mSetDrawHighlight:Ljava/lang/Runnable;

.field private final mSetDrawRippleEffect:Ljava/lang/Runnable;

.field protected mShowHighlight:Z

.field protected mShowText:Z

.field protected mText:Lcom/samsung/android/glview/GLText;

.field private final resetButtonPressed:Ljava/lang/Runnable;

.field private final setButtonPressed:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V
    .locals 7
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "normalId"    # I
    .param p7, "pressedId"    # I
    .param p8, "dimmedId"    # I

    .prologue
    .line 359
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    .line 99
    const/16 v0, 0xff

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    .line 104
    const/16 v0, 0xff

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    .line 144
    new-instance v0, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    .line 150
    new-instance v0, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    .line 193
    new-instance v0, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    .line 208
    new-instance v0, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    .line 214
    new-instance v0, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    .line 221
    new-instance v0, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    .line 234
    new-instance v0, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->setButtonPressed:Ljava/lang/Runnable;

    .line 240
    new-instance v0, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->resetButtonPressed:Ljava/lang/Runnable;

    .line 247
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    .line 248
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    .line 361
    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 362
    iput p5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 364
    if-eqz p6, :cond_0

    .line 365
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 366
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    move-object v1, p1

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    .line 372
    :cond_0
    :goto_0
    if-eqz p7, :cond_1

    .line 373
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 374
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    move-object v1, p1

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    .line 379
    :cond_1
    :goto_1
    if-eqz p8, :cond_2

    .line 380
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 381
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    move-object v1, p1

    move v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    .line 387
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    .line 388
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 389
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_4

    .line 390
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 391
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_5

    .line 392
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 394
    :cond_5
    iput p6, p0, Lcom/samsung/android/glview/GLButton;->mNormalId:I

    .line 395
    iput p7, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    .line 396
    iput p8, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    .line 397
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    .line 398
    return-void

    .line 369
    :cond_6
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p6}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    goto :goto_0

    .line 376
    :cond_7
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p7}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    goto :goto_1

    .line 383
    :cond_8
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p8}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    goto :goto_2
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V
    .locals 8
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "normalId"    # I
    .param p7, "pressedId"    # I
    .param p8, "dimmedId"    # I
    .param p9, "npHighlightId"    # I

    .prologue
    .line 414
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 87
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    .line 89
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    .line 99
    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    .line 104
    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    .line 109
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 114
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 119
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 124
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    .line 129
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    .line 134
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    .line 139
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 141
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    .line 143
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    .line 144
    new-instance v1, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    .line 150
    new-instance v1, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    .line 164
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    .line 168
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    .line 178
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    .line 179
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    .line 193
    new-instance v1, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 207
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    .line 208
    new-instance v1, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    .line 214
    new-instance v1, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    .line 221
    new-instance v1, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 233
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    .line 234
    new-instance v1, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->setButtonPressed:Ljava/lang/Runnable;

    .line 240
    new-instance v1, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->resetButtonPressed:Ljava/lang/Runnable;

    .line 247
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    .line 248
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    .line 249
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    .line 416
    if-eqz p6, :cond_0

    .line 417
    new-instance v1, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p6}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    .line 419
    :cond_0
    if-eqz p7, :cond_1

    .line 420
    new-instance v1, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p7}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    .line 421
    :cond_1
    if-eqz p8, :cond_2

    .line 422
    new-instance v1, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p8

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    .line 425
    :cond_2
    if-eqz p9, :cond_3

    .line 426
    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p4

    move v6, p5

    move/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    .line 428
    :cond_3
    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 429
    iput p5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 431
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 432
    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    .line 434
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 435
    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    .line 437
    :cond_5
    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_6

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_9

    .line 438
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_7

    .line 439
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLTexture;->moveLayout(FF)V

    .line 440
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_8

    .line 441
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLTexture;->moveLayout(FF)V

    .line 442
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_9

    .line 443
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLTexture;->moveLayout(FF)V

    .line 446
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_a

    .line 447
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 448
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_b

    .line 449
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 450
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_c

    .line 451
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 452
    :cond_c
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_d

    .line 453
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 454
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 457
    :cond_d
    iput p6, p0, Lcom/samsung/android/glview/GLButton;->mNormalId:I

    .line 458
    iput p7, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    .line 459
    move/from16 v0, p8

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    .line 460
    move/from16 v0, p9

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightId:I

    .line 461
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    .line 462
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V
    .locals 10
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "normalId"    # I
    .param p7, "pressedId"    # I
    .param p8, "dimmedId"    # I
    .param p9, "highlightColor"    # I
    .param p10, "highlightConf"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 480
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 87
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    .line 89
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    .line 99
    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    .line 104
    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    .line 109
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 114
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 119
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 124
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    .line 129
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    .line 134
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    .line 139
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 141
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    .line 143
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    .line 144
    new-instance v1, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    .line 150
    new-instance v1, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    .line 164
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    .line 168
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    .line 178
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    .line 179
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    .line 193
    new-instance v1, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 207
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    .line 208
    new-instance v1, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    .line 214
    new-instance v1, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    .line 221
    new-instance v1, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 233
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    .line 234
    new-instance v1, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->setButtonPressed:Ljava/lang/Runnable;

    .line 240
    new-instance v1, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->resetButtonPressed:Ljava/lang/Runnable;

    .line 247
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    .line 248
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    .line 249
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    .line 482
    if-eqz p6, :cond_0

    .line 483
    new-instance v1, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p6

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    .line 485
    :cond_0
    if-eqz p7, :cond_1

    .line 486
    new-instance v1, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p7

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    .line 487
    :cond_1
    if-eqz p8, :cond_2

    .line 488
    new-instance v1, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p8

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    .line 491
    :cond_2
    if-eqz p9, :cond_3

    .line 492
    new-instance v1, Lcom/samsung/android/glview/GLRectangle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    move-object v2, p1

    move v5, p4

    move v6, p5

    move/from16 v7, p9

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    .line 494
    :cond_3
    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 495
    iput p5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 497
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 498
    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    .line 500
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 501
    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    .line 503
    :cond_5
    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_6

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_9

    .line 504
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_7

    .line 505
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLTexture;->moveLayout(FF)V

    .line 506
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_8

    .line 507
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLTexture;->moveLayout(FF)V

    .line 508
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_9

    .line 509
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLTexture;->moveLayout(FF)V

    .line 512
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_a

    .line 513
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 514
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_b

    .line 515
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 516
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_c

    .line 517
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 518
    :cond_c
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_d

    .line 519
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 520
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 523
    :cond_d
    move/from16 v0, p6

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalId:I

    .line 524
    move/from16 v0, p7

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    .line 525
    move/from16 v0, p8

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    .line 526
    move/from16 v0, p9

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightId:I

    .line 527
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    .line 528
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "normalBitmap"    # Landroid/graphics/Bitmap;
    .param p7, "pressedBitmap"    # Landroid/graphics/Bitmap;
    .param p8, "dimmedBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 296
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 87
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    .line 89
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    .line 99
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    .line 104
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    .line 109
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 114
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 119
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 124
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    .line 129
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    .line 134
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    .line 139
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 141
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    .line 143
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    .line 144
    new-instance v0, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    .line 150
    new-instance v0, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    .line 164
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    .line 168
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    .line 178
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    .line 179
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    .line 193
    new-instance v0, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 207
    iput-object v5, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    .line 208
    new-instance v0, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    .line 214
    new-instance v0, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    .line 221
    new-instance v0, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 233
    iput-object v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    .line 234
    new-instance v0, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->setButtonPressed:Ljava/lang/Runnable;

    .line 240
    new-instance v0, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->resetButtonPressed:Ljava/lang/Runnable;

    .line 247
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    .line 248
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    .line 249
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    .line 298
    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 299
    iput p5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 301
    if-eqz p6, :cond_0

    .line 302
    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-direct {v0, p1, v1, v1, p6}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    .line 304
    :cond_0
    if-eqz p7, :cond_1

    .line 305
    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-direct {v0, p1, v1, v1, p7}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    .line 307
    :cond_1
    if-eqz p8, :cond_2

    .line 308
    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-direct {v0, p1, v1, v1, p8}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    .line 312
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 313
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_4

    .line 314
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 315
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_5

    .line 316
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 318
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    .line 319
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;)V
    .locals 7
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "imagePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 541
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 87
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    .line 89
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    .line 99
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    .line 104
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    .line 109
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 114
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 119
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 124
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    .line 129
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    .line 134
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    .line 139
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 141
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    .line 143
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    .line 144
    new-instance v0, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    .line 150
    new-instance v0, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    .line 164
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    .line 168
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    .line 178
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    .line 179
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    .line 193
    new-instance v0, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 207
    iput-object v5, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    .line 208
    new-instance v0, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    .line 214
    new-instance v0, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    .line 221
    new-instance v0, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 233
    iput-object v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    .line 234
    new-instance v0, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->setButtonPressed:Ljava/lang/Runnable;

    .line 240
    new-instance v0, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->resetButtonPressed:Ljava/lang/Runnable;

    .line 247
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    .line 248
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    .line 249
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    .line 543
    if-eqz p6, :cond_0

    .line 544
    new-instance v0, Lcom/samsung/android/glview/GLFileTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLFileTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    .line 545
    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 546
    iput p5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 550
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 552
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    .line 553
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFF[B)V
    .locals 8
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "image"    # [B

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 332
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 87
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    .line 89
    iput-boolean v7, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    .line 99
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    .line 104
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    .line 109
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 114
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 119
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 124
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    .line 129
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    .line 134
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    .line 139
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 141
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    .line 143
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    .line 144
    new-instance v0, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    .line 150
    new-instance v0, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    .line 164
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    .line 168
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    .line 178
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    .line 179
    iput-boolean v7, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    .line 193
    new-instance v0, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 207
    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    .line 208
    new-instance v0, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    .line 214
    new-instance v0, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    .line 221
    new-instance v0, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 233
    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    .line 234
    new-instance v0, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->setButtonPressed:Ljava/lang/Runnable;

    .line 240
    new-instance v0, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->resetButtonPressed:Ljava/lang/Runnable;

    .line 247
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    .line 248
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    .line 249
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    .line 334
    if-eqz p6, :cond_0

    .line 335
    new-instance v0, Lcom/samsung/android/glview/GLByteArrayTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLByteArrayTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFF[BZ)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    .line 336
    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 337
    iput p5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 343
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    .line 344
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFIIII)V
    .locals 8
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "normalId"    # I
    .param p5, "pressedId"    # I
    .param p6, "dimmedId"    # I
    .param p7, "npHighlightId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/16 v3, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 567
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 87
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    .line 89
    iput-boolean v7, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    .line 99
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    .line 104
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    .line 109
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 114
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 119
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 124
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    .line 129
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    .line 134
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    .line 139
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 141
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    .line 143
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    .line 144
    new-instance v0, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    .line 150
    new-instance v0, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    .line 164
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    .line 168
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    .line 178
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    .line 179
    iput-boolean v7, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    .line 193
    new-instance v0, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 207
    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    .line 208
    new-instance v0, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    .line 214
    new-instance v0, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    .line 221
    new-instance v0, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 233
    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    .line 234
    new-instance v0, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->setButtonPressed:Ljava/lang/Runnable;

    .line 240
    new-instance v0, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->resetButtonPressed:Ljava/lang/Runnable;

    .line 247
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    .line 248
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    .line 249
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    .line 569
    if-eqz p4, :cond_0

    .line 570
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p4}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    .line 571
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 572
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 574
    :cond_0
    if-eqz p5, :cond_1

    .line 575
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p5}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    .line 576
    :cond_1
    if-eqz p6, :cond_2

    .line 577
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p6}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    .line 578
    :cond_2
    if-eqz p7, :cond_3

    .line 579
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_8

    .line 580
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v4

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v5

    move-object v1, p1

    move v3, v2

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    .line 585
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_4

    .line 586
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 587
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_5

    .line 588
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 589
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_6

    .line 590
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 591
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_7

    .line 592
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 593
    iput-boolean v7, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 596
    :cond_7
    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mNormalId:I

    .line 597
    iput p5, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    .line 598
    iput p6, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    .line 599
    iput p7, p0, Lcom/samsung/android/glview/GLButton;->mHighlightId:I

    .line 600
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    .line 601
    return-void

    .line 582
    :cond_8
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFIIIILandroid/graphics/Bitmap$Config;)V
    .locals 10
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "normalId"    # I
    .param p5, "pressedId"    # I
    .param p6, "dimmedId"    # I
    .param p7, "highlightColor"    # I
    .param p8, "highlightConf"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 616
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 87
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    .line 89
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    .line 99
    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    .line 104
    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    .line 109
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 114
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 119
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 124
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    .line 129
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    .line 134
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    .line 139
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 141
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    .line 143
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    .line 144
    new-instance v1, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    .line 150
    new-instance v1, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    .line 164
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    .line 168
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    .line 178
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    .line 179
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    .line 193
    new-instance v1, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 207
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    .line 208
    new-instance v1, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    .line 214
    new-instance v1, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    .line 221
    new-instance v1, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 233
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    .line 234
    new-instance v1, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->setButtonPressed:Ljava/lang/Runnable;

    .line 240
    new-instance v1, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->resetButtonPressed:Ljava/lang/Runnable;

    .line 247
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    .line 248
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    .line 249
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    .line 618
    if-eqz p4, :cond_0

    .line 619
    new-instance v1, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p4}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    .line 620
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 621
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 623
    :cond_0
    if-eqz p5, :cond_1

    .line 624
    new-instance v1, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p5}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    .line 625
    :cond_1
    if-eqz p6, :cond_2

    .line 626
    new-instance v1, Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p6

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    .line 627
    :cond_2
    if-eqz p7, :cond_3

    .line 628
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_8

    .line 629
    new-instance v1, Lcom/samsung/android/glview/GLRectangle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v5

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v6

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    move-object v2, p1

    move/from16 v7, p7

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    .line 634
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_4

    .line 635
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 636
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_5

    .line 637
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 638
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_6

    .line 639
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 640
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_7

    .line 641
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 642
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 645
    :cond_7
    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mNormalId:I

    .line 646
    iput p5, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    .line 647
    move/from16 v0, p6

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    .line 648
    move/from16 v0, p7

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightId:I

    .line 649
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    .line 650
    return-void

    .line 631
    :cond_8
    new-instance v1, Lcom/samsung/android/glview/GLRectangle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    move-object v2, p1

    move/from16 v7, p7

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;)V
    .locals 6
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "imagePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 661
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 87
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    .line 89
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    .line 99
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    .line 104
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    .line 109
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 114
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 119
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 124
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    .line 129
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    .line 134
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    .line 139
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 141
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    .line 143
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    .line 144
    new-instance v0, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    .line 150
    new-instance v0, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    .line 164
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    .line 168
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    .line 178
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    .line 179
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    .line 193
    new-instance v0, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 207
    iput-object v5, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    .line 208
    new-instance v0, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    .line 214
    new-instance v0, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    .line 221
    new-instance v0, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 233
    iput-object v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    .line 234
    new-instance v0, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->setButtonPressed:Ljava/lang/Runnable;

    .line 240
    new-instance v0, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->resetButtonPressed:Ljava/lang/Runnable;

    .line 247
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    .line 248
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    .line 249
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    .line 663
    if-eqz p4, :cond_0

    .line 664
    new-instance v0, Lcom/samsung/android/glview/GLFileTexture;

    invoke-direct {v0, p1, v2, v2, p4}, Lcom/samsung/android/glview/GLFileTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    .line 665
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 666
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 670
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 672
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    .line 673
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FF[B)V
    .locals 6
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "image"    # [B

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 281
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 87
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    .line 89
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    .line 99
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    .line 104
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    .line 109
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 114
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 119
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 124
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    .line 129
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    .line 134
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    .line 139
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 141
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    .line 143
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    .line 144
    new-instance v0, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    .line 150
    new-instance v0, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    .line 164
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    .line 168
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    .line 178
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    .line 179
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    .line 193
    new-instance v0, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 207
    iput-object v5, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    .line 208
    new-instance v0, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    .line 214
    new-instance v0, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    .line 221
    new-instance v0, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 233
    iput-object v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    .line 234
    new-instance v0, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->setButtonPressed:Ljava/lang/Runnable;

    .line 240
    new-instance v0, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->resetButtonPressed:Ljava/lang/Runnable;

    .line 247
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    .line 248
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    .line 249
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    .line 283
    if-eqz p4, :cond_0

    .line 284
    new-instance v0, Lcom/samsung/android/glview/GLByteArrayTexture;

    invoke-direct {v0, p1, v2, v2, p4}, Lcom/samsung/android/glview/GLByteArrayTexture;-><init>(Lcom/samsung/android/glview/GLContext;FF[B)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    .line 285
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 286
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 292
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    .line 293
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;IIII)V
    .locals 8
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "normalId"    # I
    .param p3, "pressedId"    # I
    .param p4, "dimmedId"    # I
    .param p5, "npHighlightId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/16 v3, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 685
    invoke-direct {p0, p1, v2, v2}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 87
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    .line 89
    iput-boolean v7, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    .line 99
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    .line 104
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    .line 109
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 114
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 119
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 124
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    .line 129
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    .line 134
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    .line 139
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 141
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    .line 143
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    .line 144
    new-instance v0, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    .line 150
    new-instance v0, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    .line 164
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    .line 168
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    .line 178
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    .line 179
    iput-boolean v7, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    .line 193
    new-instance v0, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 207
    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    .line 208
    new-instance v0, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    .line 214
    new-instance v0, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    .line 221
    new-instance v0, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 233
    iput-object v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    .line 234
    new-instance v0, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->setButtonPressed:Ljava/lang/Runnable;

    .line 240
    new-instance v0, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->resetButtonPressed:Ljava/lang/Runnable;

    .line 247
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    .line 248
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    .line 249
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    .line 687
    if-eqz p2, :cond_0

    .line 688
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p2}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    .line 689
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 690
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 692
    :cond_0
    if-eqz p3, :cond_1

    .line 693
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p3}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    .line 694
    :cond_1
    if-eqz p4, :cond_2

    .line 695
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p4}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    .line 696
    :cond_2
    if-eqz p5, :cond_3

    .line 697
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_8

    .line 698
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v4

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v5

    move-object v1, p1

    move v3, v2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    .line 703
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_4

    .line 704
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 705
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_5

    .line 706
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 707
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_6

    .line 708
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 709
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_7

    .line 710
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 711
    iput-boolean v7, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 714
    :cond_7
    iput p2, p0, Lcom/samsung/android/glview/GLButton;->mNormalId:I

    .line 715
    iput p3, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    .line 716
    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    .line 717
    iput p5, p0, Lcom/samsung/android/glview/GLButton;->mHighlightId:I

    .line 718
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    .line 719
    return-void

    .line 700
    :cond_8
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;Ljava/lang/String;)V
    .locals 6
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "imagePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 728
    invoke-direct {p0, p1, v1, v1}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 87
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    .line 89
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    .line 99
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    .line 104
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    .line 109
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 114
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 119
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 124
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    .line 129
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    .line 134
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    .line 139
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 141
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    .line 143
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    .line 144
    new-instance v0, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    .line 150
    new-instance v0, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    .line 164
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    .line 168
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    .line 178
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    .line 179
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    .line 193
    new-instance v0, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 207
    iput-object v5, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    .line 208
    new-instance v0, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    .line 214
    new-instance v0, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    .line 221
    new-instance v0, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 233
    iput-object v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    .line 234
    new-instance v0, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->setButtonPressed:Ljava/lang/Runnable;

    .line 240
    new-instance v0, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->resetButtonPressed:Ljava/lang/Runnable;

    .line 247
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    .line 248
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    .line 249
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    .line 730
    if-eqz p2, :cond_0

    .line 731
    new-instance v0, Lcom/samsung/android/glview/GLFileTexture;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/samsung/android/glview/GLFileTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    .line 732
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 733
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 737
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 738
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    .line 739
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;[B)V
    .locals 6
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "image"    # [B

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 258
    invoke-direct {p0, p1, v1, v1}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 87
    iput v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    .line 89
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    .line 99
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    .line 104
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    .line 109
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 114
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 119
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 124
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    .line 129
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    .line 134
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    .line 139
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 141
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    .line 143
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    .line 144
    new-instance v0, Lcom/samsung/android/glview/GLButton$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$1;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    .line 150
    new-instance v0, Lcom/samsung/android/glview/GLButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$2;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawRippleEffect:Ljava/lang/Runnable;

    .line 164
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    .line 168
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    .line 178
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    .line 179
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    .line 193
    new-instance v0, Lcom/samsung/android/glview/GLButton$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$3;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 207
    iput-object v5, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    .line 208
    new-instance v0, Lcom/samsung/android/glview/GLButton$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$4;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    .line 214
    new-instance v0, Lcom/samsung/android/glview/GLButton$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$5;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    .line 221
    new-instance v0, Lcom/samsung/android/glview/GLButton$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$6;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 233
    iput-object v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    .line 234
    new-instance v0, Lcom/samsung/android/glview/GLButton$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$7;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->setButtonPressed:Ljava/lang/Runnable;

    .line 240
    new-instance v0, Lcom/samsung/android/glview/GLButton$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLButton$8;-><init>(Lcom/samsung/android/glview/GLButton;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->resetButtonPressed:Ljava/lang/Runnable;

    .line 247
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    .line 248
    iput v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    .line 249
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    .line 260
    if-eqz p2, :cond_0

    .line 261
    new-instance v0, Lcom/samsung/android/glview/GLByteArrayTexture;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/samsung/android/glview/GLByteArrayTexture;-><init>(Lcom/samsung/android/glview/GLContext;FF[B)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    .line 262
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 263
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 269
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initButton()V

    .line 270
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/glview/GLButton;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/glview/GLButton;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/samsung/android/glview/GLButton;->setDrawRippleEffect(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/glview/GLButton;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/glview/GLButton;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/glview/GLButton;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/glview/GLButton;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/samsung/android/glview/GLButton;->setButtonPressed(Z)V

    return-void
.end method

.method private initButton()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1930
    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLButton;->setFocusable(Z)V

    .line 1931
    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLButton;->setClickable(Z)V

    .line 1933
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isRippleEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mSizeGiven:Z

    if-eqz v0, :cond_0

    .line 1934
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initRippleEffect()V

    .line 1936
    :cond_0
    return-void
.end method

.method private initRippleEffect()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x40000000    # 2.0f

    .line 1942
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getRippleEffectColor()I

    move-result v6

    .line 1943
    .local v6, "color":I
    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    if-eqz v0, :cond_0

    .line 1944
    iget v6, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    .line 1946
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    if-nez v0, :cond_1

    .line 1947
    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    .line 1949
    :cond_1
    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    div-float/2addr v0, v9

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    .line 1953
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_2

    .line 1954
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLCircle;->clear()V

    .line 1956
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_3

    .line 1957
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLCircle;->clear()V

    .line 1959
    :cond_3
    new-instance v0, Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    div-float/2addr v2, v9

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    div-float/2addr v3, v9

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    mul-float/2addr v4, v9

    iget v5, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    mul-float/2addr v5, v9

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLCircle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    .line 1961
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    iput-object p0, v0, Lcom/samsung/android/glview/GLCircle;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1962
    new-instance v0, Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    div-float/2addr v2, v9

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    div-float/2addr v3, v9

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    mul-float/2addr v4, v9

    iget v5, p0, Lcom/samsung/android/glview/GLButton;->mRippleRadius:F

    mul-float/2addr v5, v9

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLCircle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    .line 1964
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    iput-object p0, v0, Lcom/samsung/android/glview/GLCircle;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1968
    return-void
.end method

.method private isPossibleDrawRippleEffect()Z
    .locals 1

    .prologue
    .line 1979
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isRippleEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_0

    .line 1980
    const/4 v0, 0x1

    .line 1982
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setButtonPressed(Z)V
    .locals 2
    .param p1, "isPressed"    # Z

    .prologue
    .line 1987
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->setButtonPressed:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1989
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    if-eqz v0, :cond_0

    .line 1990
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/glview/GLButton$ButtonPressListener;->onButtonPressed(Lcom/samsung/android/glview/GLView;Z)V

    .line 1992
    :cond_0
    return-void
.end method

.method private setDrawHighlight(Z)V
    .locals 2
    .param p1, "draw"    # Z

    .prologue
    .line 1995
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-nez v0, :cond_1

    .line 2013
    :cond_0
    :goto_0
    return-void

    .line 1999
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2000
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    if-eq v0, p1, :cond_0

    .line 2003
    if-eqz p1, :cond_2

    .line 2004
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 2005
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->cancelAnimation()V

    .line 2006
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTexture;->setAlpha(F)V

    .line 2009
    :cond_2
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    .line 2010
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    if-eqz v0, :cond_0

    .line 2011
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;->onButtonHighlightChanged(Lcom/samsung/android/glview/GLView;Z)V

    goto :goto_0
.end method

.method private setDrawRippleEffect(Z)V
    .locals 3
    .param p1, "draw"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2021
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2022
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    if-ne v0, p1, :cond_0

    .line 2036
    :goto_0
    return-void

    .line 2025
    :cond_0
    if-eqz p1, :cond_2

    .line 2026
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_1

    .line 2027
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLCircle;->cancelAnimation()V

    .line 2028
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLCircle;->setAlpha(F)V

    .line 2030
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_2

    .line 2031
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLCircle;->cancelAnimation()V

    .line 2032
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLCircle;->setAlpha(F)V

    .line 2035
    :cond_2
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    goto :goto_0
.end method

.method private startHighlightFadeOutAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2042
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-nez v1, :cond_0

    .line 2052
    :goto_0
    return-void

    .line 2045
    :cond_0
    invoke-direct {p0, v4}, Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V

    .line 2046
    invoke-static {}, Lcom/samsung/android/glview/GLUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 2047
    .local v0, "anim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2048
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2049
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLTexture;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2050
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->startAnimation()V

    .line 2051
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mHighlightAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLTexture;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    goto :goto_0
.end method

.method private startRippleEffectFadeOutAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2058
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    if-nez v1, :cond_0

    .line 2071
    :goto_0
    return-void

    .line 2061
    :cond_0
    invoke-direct {p0, v4}, Lcom/samsung/android/glview/GLButton;->setDrawRippleEffect(Z)V

    .line 2062
    invoke-static {}, Lcom/samsung/android/glview/GLUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 2063
    .local v0, "anim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2064
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2065
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLCircle;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2066
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLCircle;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2068
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLCircle;->startAnimation()V

    .line 2069
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLCircle;->startAnimation()V

    .line 2070
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectFadeOutAnimationListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLCircle;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 746
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 748
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 751
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 752
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    .line 754
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 755
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 756
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    .line 758
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    .line 759
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 760
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    .line 762
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_4

    .line 763
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    .line 764
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    .line 766
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_5

    .line 767
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLCircle;->clear()V

    .line 768
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    .line 770
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_6

    .line 771
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLCircle;->clear()V

    .line 772
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    .line 774
    :cond_6
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 775
    monitor-exit p0

    return-void

    .line 746
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableRippleEffect(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 783
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    .line 784
    return-void
.end method

.method public getLoaded()Z
    .locals 2

    .prologue
    .line 791
    const/4 v0, 0x1

    .line 792
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_0

    .line 793
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->load()Z

    move-result v1

    if-nez v1, :cond_0

    .line 794
    const/4 v0, 0x0

    .line 796
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_1

    .line 797
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->load()Z

    move-result v1

    if-nez v1, :cond_1

    .line 798
    const/4 v0, 0x0

    .line 800
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_2

    .line 801
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->load()Z

    move-result v1

    if-nez v1, :cond_2

    .line 802
    const/4 v0, 0x0

    .line 804
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_3

    .line 805
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->load()Z

    move-result v1

    if-nez v1, :cond_3

    .line 806
    const/4 v0, 0x0

    .line 808
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v1, :cond_4

    .line 809
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLText;->load()Z

    move-result v1

    if-nez v1, :cond_4

    .line 810
    const/4 v0, 0x0

    .line 812
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    if-eqz v1, :cond_5

    .line 813
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLCircle;->load()Z

    move-result v1

    if-nez v1, :cond_5

    .line 814
    const/4 v0, 0x0

    .line 816
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    if-eqz v1, :cond_6

    .line 817
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLCircle;->load()Z

    move-result v1

    if-nez v1, :cond_6

    .line 818
    const/4 v0, 0x0

    .line 820
    :cond_6
    return v0
.end method

.method public getTtsString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 832
    .local v0, "ttsString":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mContentDescription:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 833
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/glview/GLUtil;->isTimeInfo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 839
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 840
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/glview/GLUtil;->convertTimeInfoForTTS(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-nez v1, :cond_2

    .line 843
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/glview/R$string;->button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSubTitle:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 847
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSubTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 851
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/glview/R$string;->disable:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 834
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 835
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public initSize()V
    .locals 3

    .prologue
    .line 862
    const/4 v1, 0x0

    .local v1, "width":F
    const/4 v0, 0x0

    .line 864
    .local v0, "height":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v2, :cond_1

    .line 865
    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    .line 866
    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 868
    :cond_0
    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    .line 869
    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 872
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v2, :cond_3

    .line 873
    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_2

    .line 874
    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 876
    :cond_2
    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_3

    .line 877
    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 880
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v2, :cond_5

    .line 881
    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_4

    .line 882
    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 884
    :cond_4
    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_5

    .line 885
    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 888
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v2, :cond_7

    .line 889
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLText;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_6

    .line 890
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLText;->getWidth()F

    move-result v1

    .line 892
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLText;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_7

    .line 893
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLText;->getHeight()F

    move-result v0

    .line 896
    :cond_7
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/glview/GLButton;->setSize(FF)V

    .line 897
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->isRippleEffectEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 898
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initRippleEffect()V

    .line 900
    :cond_8
    return-void
.end method

.method public isPressed()Z
    .locals 1

    .prologue
    .line 903
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    return v0
.end method

.method public isRippleEffectEnabled()Z
    .locals 1

    .prologue
    .line 919
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectEnabled:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 923
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    return v0
.end method

.method public keyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 933
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/glview/GLButton;->onKeyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public keyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 938
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/glview/GLButton;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public mText()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 946
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->getText()Ljava/lang/String;

    move-result-object v0

    .line 949
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAlphaUpdated()V
    .locals 1

    .prologue
    .line 954
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    .line 955
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->onAlphaUpdated()V

    .line 958
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 959
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->onAlphaUpdated()V

    .line 961
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 962
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->onAlphaUpdated()V

    .line 964
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    .line 965
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->onAlphaUpdated()V

    .line 967
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_4

    .line 968
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->onAlphaUpdated()V

    .line 970
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_5

    .line 971
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLCircle;->onAlphaUpdated()V

    .line 973
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_6

    .line 974
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLCircle;->onAlphaUpdated()V

    .line 976
    :cond_6
    return-void
.end method

.method protected onDraw()V
    .locals 3

    .prologue
    .line 1770
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1771
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 1772
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    .line 1822
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    if-eqz v0, :cond_1

    .line 1823
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1824
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    .line 1827
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->draw([FLandroid/graphics/Rect;)V

    .line 1829
    :cond_1
    return-void

    .line 1773
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 1774
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    goto :goto_0

    .line 1776
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    if-eqz v0, :cond_9

    .line 1777
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    if-eqz v0, :cond_5

    .line 1778
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    .line 1780
    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->isPossibleDrawRippleEffect()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1781
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isClippingForced()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1782
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->clearClip()V

    .line 1784
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLCircle;->draw([FLandroid/graphics/Rect;)V

    .line 1788
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isClippingForced()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1789
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->clip()V

    .line 1792
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_8

    .line 1793
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1794
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 1795
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1797
    :cond_9
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    if-eqz v0, :cond_f

    .line 1798
    :cond_a
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mDrawHighlight:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    if-eqz v0, :cond_b

    .line 1799
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    .line 1801
    :cond_b
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mDrawRipple:Z

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->isPossibleDrawRippleEffect()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1802
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isClippingForced()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1803
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->clearClip()V

    .line 1805
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLCircle;->draw([FLandroid/graphics/Rect;)V

    .line 1809
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isClippingForced()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1810
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->clip()V

    .line 1813
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_e

    .line 1814
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1815
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 1816
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1818
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 1819
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1826
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    goto/16 :goto_1
.end method

.method public onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 980
    sparse-switch p1, :sswitch_data_0

    .line 998
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    if-eqz v0, :cond_2

    .line 999
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    invoke-interface {v0, p0, p2}, Lcom/samsung/android/glview/GLView$KeyListener;->onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1001
    :cond_1
    :goto_1
    return v0

    .line 985
    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 986
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLButton;->setPressed(Z)V

    goto :goto_0

    .line 991
    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v1

    if-nez v1, :cond_1

    .line 994
    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 995
    invoke-direct {p0, v0}, Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V

    goto :goto_0

    .line 1001
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->onKeyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 980
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const-wide/16 v10, 0xc8

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 1006
    sparse-switch p1, :sswitch_data_0

    .line 1030
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    .line 1009
    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1011
    iput-boolean v8, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 1012
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    add-long/2addr v2, v10

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 1013
    invoke-direct {p0, v1}, Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V

    .line 1014
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    sub-long v4, v10, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1018
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    if-eqz v2, :cond_2

    .line 1019
    iget-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    if-nez v2, :cond_1

    .line 1020
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1021
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1023
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    invoke-interface {v2, p0}, Lcom/samsung/android/glview/GLView$ClickListener;->onClick(Lcom/samsung/android/glview/GLView;)Z

    .line 1025
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    if-eqz v2, :cond_0

    .line 1026
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    invoke-interface {v1, p0, p2}, Lcom/samsung/android/glview/GLView$KeyListener;->onKeyUp(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1016
    :cond_3
    invoke-direct {p0, v8}, Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V

    goto :goto_1

    .line 1006
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayoutUpdated()V
    .locals 1

    .prologue
    .line 1836
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    .line 1837
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 1838
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->onLayoutUpdated()V

    .line 1840
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 1841
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->onLayoutUpdated()V

    .line 1843
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 1844
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->onLayoutUpdated()V

    .line 1846
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    .line 1847
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->onLayoutUpdated()V

    .line 1849
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_4

    .line 1850
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->onLayoutUpdated()V

    .line 1852
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_5

    .line 1853
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLCircle;->onLayoutUpdated()V

    .line 1855
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_6

    .line 1856
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLCircle;->onLayoutUpdated()V

    .line 1858
    :cond_6
    return-void
.end method

.method protected onLoad()Z
    .locals 2

    .prologue
    .line 1865
    const/4 v0, 0x1

    .line 1867
    .local v0, "loaded":Z
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_0

    .line 1868
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 1870
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_1

    .line 1871
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 1873
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_2

    .line 1874
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 1876
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v1, :cond_3

    .line 1877
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 1879
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v1, :cond_4

    .line 1880
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLText;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 1882
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    if-eqz v1, :cond_5

    .line 1883
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLCircle;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 1885
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    if-eqz v1, :cond_6

    .line 1886
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLCircle;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 1888
    :cond_6
    return v0
.end method

.method public onReset()V
    .locals 1

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->reset()V

    .line 1038
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 1039
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->reset()V

    .line 1041
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 1042
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->reset()V

    .line 1044
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    .line 1045
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->reset()V

    .line 1047
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_4

    .line 1048
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->reset()V

    .line 1050
    :cond_4
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x3

    const-wide/16 v10, 0xc8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1061
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isClickable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1180
    :goto_0
    return v1

    .line 1064
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1065
    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    if-eqz v3, :cond_1

    .line 1066
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 1067
    invoke-direct {p0, v1}, Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V

    .line 1068
    invoke-direct {p0, v1}, Lcom/samsung/android/glview/GLButton;->setDrawRippleEffect(Z)V

    .line 1070
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 1071
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/glview/GLButton;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1072
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1075
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 1076
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->resetDrag()V

    :cond_3
    move v1, v2

    .line 1078
    goto :goto_0

    .line 1080
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_8

    .line 1084
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 1085
    invoke-direct {p0, v2}, Lcom/samsung/android/glview/GLButton;->setButtonPressed(Z)V

    .line 1086
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->resetButtonPressed:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1088
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    if-eqz v1, :cond_5

    .line 1089
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    .line 1092
    :cond_5
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    if-eqz v1, :cond_6

    .line 1093
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawHighlight:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1095
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->isPossibleDrawRippleEffect()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1096
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    move v1, v2

    .line 1098
    goto/16 :goto_0

    .line 1099
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v4, :cond_d

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    if-eqz v3, :cond_d

    .line 1103
    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mDragging:Z

    if-nez v3, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/glview/GLButton;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1104
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1105
    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    if-eqz v3, :cond_9

    .line 1106
    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    .line 1154
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_18

    .line 1155
    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    if-eqz v3, :cond_c

    .line 1158
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 1159
    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    if-eqz v3, :cond_a

    .line 1160
    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    .line 1162
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    add-long/2addr v4, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_17

    .line 1163
    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v3, :cond_16

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    if-eqz v3, :cond_16

    .line 1164
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->startHighlightFadeOutAnimation()V

    .line 1168
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->isPossibleDrawRippleEffect()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1169
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->startRippleEffectFadeOutAnimation()V

    .line 1175
    :cond_b
    :goto_2
    invoke-direct {p0, v1}, Lcom/samsung/android/glview/GLButton;->setButtonPressed(Z)V

    .line 1176
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->resetDrag()V

    :cond_c
    move v1, v2

    .line 1178
    goto/16 :goto_0

    .line 1108
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_9

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    if-eqz v3, :cond_9

    .line 1109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    add-long/2addr v4, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_e

    .line 1110
    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    if-nez v3, :cond_e

    .line 1111
    invoke-direct {p0, v2}, Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V

    .line 1112
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLButton;->mResetDrawHighlight:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    sub-long v6, v10, v6

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1115
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    add-long/2addr v4, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_15

    .line 1116
    invoke-direct {p0, v2}, Lcom/samsung/android/glview/GLButton;->setButtonPressed(Z)V

    .line 1117
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLButton;->resetButtonPressed:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    sub-long v6, v10, v6

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1122
    :goto_3
    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v3, :cond_f

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    if-eqz v3, :cond_f

    .line 1123
    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    .line 1124
    :cond_f
    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v3, :cond_10

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mHighlightFadeOut:Z

    if-eqz v3, :cond_10

    .line 1125
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->startHighlightFadeOutAnimation()V

    .line 1127
    :cond_10
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->isPossibleDrawRippleEffect()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1128
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->startRippleEffectFadeOutAnimation()V

    .line 1130
    :cond_11
    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    if-eqz v3, :cond_14

    .line 1131
    iget-boolean v3, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    if-nez v3, :cond_12

    .line 1132
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1133
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1135
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_12
    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mTitle:Ljava/lang/String;

    if-eqz v3, :cond_13

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_13

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isTalkBackEnabled()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1136
    new-instance v3, Lcom/samsung/android/glview/GLButton$9;

    invoke-direct {v3, p0}, Lcom/samsung/android/glview/GLButton$9;-><init>(Lcom/samsung/android/glview/GLButton;)V

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLButton$9;->start()V

    .line 1149
    :cond_13
    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    invoke-interface {v3, p0}, Lcom/samsung/android/glview/GLView$ClickListener;->onClick(Lcom/samsung/android/glview/GLView;)Z

    .line 1151
    :cond_14
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    move v1, v2

    .line 1152
    goto/16 :goto_0

    .line 1119
    :cond_15
    invoke-direct {p0, v1}, Lcom/samsung/android/glview/GLButton;->setButtonPressed(Z)V

    goto :goto_3

    .line 1166
    :cond_16
    invoke-direct {p0, v1}, Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V

    goto/16 :goto_1

    .line 1172
    :cond_17
    invoke-direct {p0, v1}, Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V

    .line 1173
    invoke-direct {p0, v1}, Lcom/samsung/android/glview/GLButton;->setDrawRippleEffect(Z)V

    goto/16 :goto_2

    .line 1180
    :cond_18
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method protected onVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 1893
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->onVisibilityChanged(I)V

    .line 1894
    if-eqz p1, :cond_0

    .line 1895
    invoke-direct {p0, v1}, Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V

    .line 1896
    invoke-direct {p0, v1}, Lcom/samsung/android/glview/GLButton;->setDrawRippleEffect(Z)V

    .line 1897
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    if-eqz v0, :cond_0

    .line 1898
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 1899
    invoke-direct {p0, v1}, Lcom/samsung/android/glview/GLButton;->setButtonPressed(Z)V

    .line 1900
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->resetDrag()V

    .line 1901
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    if-eqz v0, :cond_0

    .line 1902
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    .line 1906
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 1907
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->onVisibilityChanged(I)V

    .line 1909
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 1910
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->onVisibilityChanged(I)V

    .line 1912
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    .line 1913
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->onVisibilityChanged(I)V

    .line 1915
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_4

    .line 1916
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->onVisibilityChanged(I)V

    .line 1918
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_5

    .line 1919
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->onVisibilityChanged(I)V

    .line 1921
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_6

    .line 1922
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLCircle;->onVisibilityChanged(I)V

    .line 1924
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_7

    .line 1925
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLCircle;->onVisibilityChanged(I)V

    .line 1927
    :cond_7
    return-void
.end method

.method public setButtonHighlightChangeListener(Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    .prologue
    .line 1184
    iput-object p1, p0, Lcom/samsung/android/glview/GLButton;->mHighlightChangeListener:Lcom/samsung/android/glview/GLButton$ButtonHighlightChangeListener;

    .line 1185
    return-void
.end method

.method public setButtonPressListener(Lcom/samsung/android/glview/GLButton$ButtonPressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    .prologue
    .line 1188
    iput-object p1, p0, Lcom/samsung/android/glview/GLButton;->mButtonPressListener:Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    .line 1189
    return-void
.end method

.method public declared-synchronized setButtonResources(IIII)V
    .locals 7
    .param p1, "normalId"    # I
    .param p2, "pressedId"    # I
    .param p3, "dimmedId"    # I
    .param p4, "npHighlightId"    # I

    .prologue
    .line 1235
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalId:I

    if-eq v0, p1, :cond_1

    .line 1236
    iput p1, p0, Lcom/samsung/android/glview/GLButton;->mNormalId:I

    .line 1237
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 1239
    :cond_0
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    .line 1241
    :cond_1
    if-eqz p2, :cond_c

    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    if-eq v0, p2, :cond_c

    .line 1242
    iput p2, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    .line 1243
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 1244
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 1245
    :cond_2
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    .line 1253
    :cond_3
    :goto_0
    if-eqz p3, :cond_d

    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    if-eq v0, p3, :cond_d

    .line 1254
    iput p3, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    .line 1255
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_4

    .line 1256
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 1257
    :cond_4
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p3}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    .line 1265
    :cond_5
    :goto_1
    if-eqz p4, :cond_e

    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightId:I

    if-eq v0, p4, :cond_e

    .line 1266
    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mHighlightId:I

    .line 1267
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_6

    .line 1268
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 1269
    :cond_6
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v5

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    .line 1278
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_8

    .line 1279
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1280
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    .line 1282
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_9

    .line 1283
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1284
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    .line 1286
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_a

    .line 1287
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1288
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    .line 1290
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_b

    .line 1291
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1292
    :cond_b
    monitor-exit p0

    return-void

    .line 1246
    :cond_c
    if-nez p2, :cond_3

    .line 1247
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    .line 1248
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    .line 1249
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 1250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1235
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1258
    :cond_d
    if-nez p3, :cond_5

    .line 1259
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    .line 1260
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_5

    .line 1261
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 1262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    goto/16 :goto_1

    .line 1270
    :cond_e
    if-nez p4, :cond_7

    .line 1271
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightId:I

    .line 1272
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_7

    .line 1273
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 1274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized setButtonResources(IIIILandroid/graphics/Bitmap$Config;)V
    .locals 9
    .param p1, "normalId"    # I
    .param p2, "pressedId"    # I
    .param p3, "dimmedId"    # I
    .param p4, "highlightColor"    # I
    .param p5, "highlightConf"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 1304
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalId:I

    if-eq v0, p1, :cond_1

    .line 1305
    iput p1, p0, Lcom/samsung/android/glview/GLButton;->mNormalId:I

    .line 1306
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 1307
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 1308
    :cond_0
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    .line 1310
    :cond_1
    if-eqz p2, :cond_c

    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    if-eq v0, p2, :cond_c

    .line 1311
    iput p2, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    .line 1312
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 1313
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 1314
    :cond_2
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    .line 1322
    :cond_3
    :goto_0
    if-eqz p3, :cond_d

    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    if-eq v0, p3, :cond_d

    .line 1323
    iput p3, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    .line 1324
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_4

    .line 1325
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 1326
    :cond_4
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p3}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    .line 1334
    :cond_5
    :goto_1
    if-eqz p4, :cond_e

    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightId:I

    if-eq v0, p4, :cond_e

    .line 1335
    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mHighlightId:I

    .line 1336
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_6

    .line 1337
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 1338
    :cond_6
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v5

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    move v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    .line 1347
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_8

    .line 1348
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1349
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    .line 1351
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_9

    .line 1352
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1353
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    .line 1355
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_a

    .line 1356
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1357
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    .line 1359
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_b

    .line 1360
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1361
    :cond_b
    monitor-exit p0

    return-void

    .line 1315
    :cond_c
    if-nez p2, :cond_3

    .line 1316
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedId:I

    .line 1317
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    .line 1318
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 1319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1327
    :cond_d
    if-nez p3, :cond_5

    .line 1328
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mDimId:I

    .line 1329
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_5

    .line 1330
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 1331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    goto/16 :goto_1

    .line 1339
    :cond_e
    if-nez p4, :cond_7

    .line 1340
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlightId:I

    .line 1341
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_7

    .line 1342
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 1343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized setButtonResources(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "normalBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "pressedBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1199
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 1200
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 1203
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 1204
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 1207
    :cond_1
    if-eqz p1, :cond_2

    .line 1208
    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    .line 1210
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 1211
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1212
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    .line 1216
    :cond_2
    if-eqz p2, :cond_3

    .line 1217
    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    .line 1219
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    .line 1220
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1221
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1224
    :cond_3
    monitor-exit p0

    return-void

    .line 1199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDim(Z)V
    .locals 1
    .param p1, "dim"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1368
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setDim(Z)V

    .line 1369
    invoke-direct {p0, v0}, Lcom/samsung/android/glview/GLButton;->setDrawRippleEffect(Z)V

    .line 1370
    invoke-direct {p0, v0}, Lcom/samsung/android/glview/GLButton;->setButtonPressed(Z)V

    .line 1371
    return-void
.end method

.method public setHeight(F)V
    .locals 2
    .param p1, "height"    # F

    .prologue
    .line 1375
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setHeight(F)V

    .line 1376
    iput p1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 1377
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    if-eqz v0, :cond_4

    .line 1378
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 1379
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTexture;->setHeight(F)V

    .line 1381
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 1382
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTexture;->setHeight(F)V

    .line 1384
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 1385
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTexture;->setHeight(F)V

    .line 1387
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    .line 1388
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTexture;->setHeight(F)V

    .line 1390
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_4

    .line 1391
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setHeight(F)V

    .line 1395
    :cond_4
    return-void
.end method

.method public setHighlightVisibility(Z)V
    .locals 0
    .param p1, "visibility"    # Z

    .prologue
    .line 1403
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLButton;->mShowHighlight:Z

    .line 1404
    return-void
.end method

.method public setMute(Z)V
    .locals 0
    .param p1, "mute"    # Z

    .prologue
    .line 1407
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLButton;->mMute:Z

    .line 1408
    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "paddings"    # Landroid/graphics/Rect;

    .prologue
    .line 1412
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setPaddings(Landroid/graphics/Rect;)V

    .line 1414
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 1415
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->setSize(FF)V

    .line 1416
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    .line 1418
    :cond_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 907
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLButton;->mPressed:Z

    .line 908
    invoke-direct {p0, p1}, Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V

    .line 909
    invoke-direct {p0, p1}, Lcom/samsung/android/glview/GLButton;->setButtonPressed(Z)V

    .line 910
    invoke-direct {p0, p1}, Lcom/samsung/android/glview/GLButton;->setDrawRippleEffect(Z)V

    .line 911
    return-void
.end method

.method public setResourceOffset(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1428
    iput p1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    .line 1429
    iput p2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    .line 1431
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-nez v2, :cond_0

    .line 1432
    const/4 v2, 0x0

    .line 1449
    :goto_0
    return v2

    .line 1434
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v1

    .line 1435
    .local v1, "buttonImageWidth":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v0

    .line 1437
    .local v0, "buttonImageHeight":F
    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    invoke-static {v2, v1}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-static {v2, v0}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1440
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    .line 1442
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v2, :cond_2

    .line 1443
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    .line 1445
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v2, :cond_3

    .line 1446
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iget v3, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    .line 1449
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setRippleDiameter(F)V
    .locals 1
    .param p1, "diameter"    # F

    .prologue
    .line 1458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleSizeGiven:Z

    .line 1459
    iput p1, p0, Lcom/samsung/android/glview/GLButton;->mRippleDiameter:F

    .line 1460
    invoke-direct {p0}, Lcom/samsung/android/glview/GLButton;->initRippleEffect()V

    .line 1461
    return-void
.end method

.method public setRippleEffectColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1469
    iput p1, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffectColor:I

    .line 1470
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_0

    .line 1471
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLCircle;->setColor(I)V

    .line 1473
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_1

    .line 1474
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLCircle;->setColor(I)V

    .line 1476
    :cond_1
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 927
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLButton;->mSelected:Z

    .line 928
    invoke-direct {p0, p1}, Lcom/samsung/android/glview/GLButton;->setDrawHighlight(Z)V

    .line 929
    return-void
.end method

.method public setShaderParameter(F)V
    .locals 1
    .param p1, "parameter"    # F

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 1485
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderParameter(F)V

    .line 1487
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 1488
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderParameter(F)V

    .line 1490
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 1491
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderParameter(F)V

    .line 1493
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    .line 1494
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderParameter(F)V

    .line 1496
    :cond_3
    return-void
.end method

.method public setShaderProgram(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 1504
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderProgram(I)V

    .line 1506
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 1507
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderProgram(I)V

    .line 1509
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 1510
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderProgram(I)V

    .line 1512
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    .line 1513
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderProgram(I)V

    .line 1515
    :cond_3
    return-void
.end method

.method public setShaderStep(F)V
    .locals 1
    .param p1, "step"    # F

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 1524
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderStep(F)V

    .line 1526
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 1527
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderStep(F)V

    .line 1529
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 1530
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderStep(F)V

    .line 1532
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    .line 1533
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderStep(F)V

    .line 1535
    :cond_3
    return-void
.end method

.method public setSize(FF)V
    .locals 4
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 1539
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->setSize(FF)V

    .line 1540
    iput p1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 1541
    iput p2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    .line 1543
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    if-eqz v0, :cond_5

    .line 1544
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 1545
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->setSize(FF)V

    .line 1547
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 1548
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->setSize(FF)V

    .line 1550
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 1551
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->setSize(FF)V

    .line 1553
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    .line 1554
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->setSize(FF)V

    .line 1556
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_4

    .line 1557
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 1580
    :cond_4
    :goto_0
    return-void

    .line 1562
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 1563
    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    .line 1565
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 1566
    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    .line 1568
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_8

    .line 1569
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    .line 1571
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_9

    .line 1572
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    .line 1574
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_a

    .line 1575
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    .line 1577
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_4

    .line 1578
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLButton;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->setSize(FF)V

    goto/16 :goto_0
.end method

.method public setStroke(ZFI)V
    .locals 2
    .param p1, "visibility"    # Z
    .param p2, "width"    # F
    .param p3, "color"    # I

    .prologue
    .line 1584
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1588
    :goto_0
    return-void

    .line 1585
    :catch_0
    move-exception v0

    .line 1586
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setText(Lcom/samsung/android/glview/GLText;)V
    .locals 1
    .param p1, "text"    # Lcom/samsung/android/glview/GLText;

    .prologue
    .line 1596
    if-nez p1, :cond_0

    .line 1597
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1599
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    .line 1600
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    .line 1602
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLText;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mTitle:Ljava/lang/String;

    .line 1603
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLText;->getTextColor()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    .line 1604
    iget v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    iput v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    .line 1605
    iput-object p1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    .line 1606
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iput-object p0, v0, Lcom/samsung/android/glview/GLText;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1607
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    .line 1608
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    .line 1616
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-nez v0, :cond_0

    .line 1617
    new-instance v0, Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    move v3, v2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    .line 1618
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v7, v7}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1619
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iput-object p0, v0, Lcom/samsung/android/glview/GLText;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1620
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    .line 1624
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/glview/GLButton;->mTitle:Ljava/lang/String;

    .line 1625
    return-void

    .line 1622
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;FII)V
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textSize"    # F
    .param p3, "normalColor"    # I
    .param p4, "pressedColor"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v2, 0x0

    .line 1649
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 1650
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    .line 1652
    :cond_0
    new-instance v0, Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    move v3, v2

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    .line 1653
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v9, v9}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1654
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iput-object p0, v0, Lcom/samsung/android/glview/GLText;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1655
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    .line 1656
    iput p3, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    .line 1657
    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    .line 1658
    iput-object p1, p0, Lcom/samsung/android/glview/GLButton;->mTitle:Ljava/lang/String;

    .line 1659
    return-void
.end method

.method public setText(Ljava/lang/String;FIIZZ)V
    .locals 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textSize"    # F
    .param p3, "normalColor"    # I
    .param p4, "pressedColor"    # I
    .param p5, "shadow"    # Z
    .param p6, "bold"    # Z

    .prologue
    .line 1662
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v1, :cond_0

    .line 1663
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLText;->clear()V

    .line 1665
    :cond_0
    new-instance v1, Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v6, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    move-object v7, p1

    move v8, p2

    move v9, p3

    move/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    .line 1666
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1667
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLText;->setBold(Z)V

    .line 1668
    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iput-object p0, v1, Lcom/samsung/android/glview/GLText;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1669
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    .line 1670
    iput p3, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    .line 1671
    iput p4, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    .line 1672
    iput-object p1, p0, Lcom/samsung/android/glview/GLButton;->mTitle:Ljava/lang/String;

    .line 1673
    return-void
.end method

.method public setText(Ljava/lang/String;FIZ)V
    .locals 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textSize"    # F
    .param p3, "color"    # I
    .param p4, "shadow"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v2, 0x0

    .line 1636
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 1637
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    .line 1639
    :cond_0
    new-instance v0, Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    iget v5, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    move v3, v2

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    .line 1640
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v10, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1641
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iput-object p0, v0, Lcom/samsung/android/glview/GLText;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1642
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    .line 1643
    iput p3, p0, Lcom/samsung/android/glview/GLButton;->mNormalTextColor:I

    .line 1644
    iput p3, p0, Lcom/samsung/android/glview/GLButton;->mPressedTextColor:I

    .line 1645
    iput-object p1, p0, Lcom/samsung/android/glview/GLButton;->mTitle:Ljava/lang/String;

    .line 1646
    return-void
.end method

.method public setTextAlign(II)V
    .locals 1
    .param p1, "hAlign"    # I
    .param p2, "vAlign"    # I

    .prologue
    .line 1682
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 1683
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1685
    :cond_0
    return-void
.end method

.method public setTextPosition(FF)V
    .locals 4
    .param p1, "left"    # F
    .param p2, "top"    # F

    .prologue
    .line 1694
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v2, :cond_0

    .line 1695
    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    sub-float v1, v2, p1

    .line 1696
    .local v1, "width":F
    iget v2, p0, Lcom/samsung/android/glview/GLButton;->mButtonHeight:F

    sub-float v0, v2, p2

    .line 1698
    .local v0, "height":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLText;->getWidth()F

    move-result v2

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLText;->getHeight()F

    move-result v2

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_1

    .line 1699
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/glview/GLText;->moveLayoutAbsolute(FF)V

    .line 1705
    .end local v0    # "height":F
    .end local v1    # "width":F
    :cond_0
    :goto_0
    return-void

    .line 1701
    .restart local v0    # "height":F
    .restart local v1    # "width":F
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Lcom/samsung/android/glview/GLText;->moveLayoutAbsolute(FFZ)V

    .line 1702
    iget-object v2, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    goto :goto_0
.end method

.method public setTextVisibility(Z)V
    .locals 0
    .param p1, "visibility"    # Z

    .prologue
    .line 1713
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLButton;->mShowText:Z

    .line 1714
    return-void
.end method

.method public setTint(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 1721
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 1726
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1727
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/glview/GLButton;->setDrawRippleEffect(Z)V

    .line 1728
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setVisibility(I)V

    .line 1729
    return-void
.end method

.method public setVisibility(IZ)V
    .locals 2
    .param p1, "visibility"    # I
    .param p2, "update"    # Z

    .prologue
    .line 1733
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLButton;->mSetDrawRippleEffect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1734
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/glview/GLButton;->setDrawRippleEffect(Z)V

    .line 1735
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->setVisibility(IZ)V

    .line 1736
    return-void
.end method

.method public setWidth(F)V
    .locals 2
    .param p1, "width"    # F

    .prologue
    .line 1740
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setWidth(F)V

    .line 1741
    iput p1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    .line 1742
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLButton;->mIsNinePatchButton:Z

    if-eqz v0, :cond_4

    .line 1743
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 1744
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTexture;->setWidth(F)V

    .line 1746
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 1747
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTexture;->setWidth(F)V

    .line 1749
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 1750
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTexture;->setWidth(F)V

    .line 1752
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_3

    .line 1753
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTexture;->setWidth(F)V

    .line 1755
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_4

    .line 1756
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton;->mText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/samsung/android/glview/GLButton;->mButtonWidth:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setWidth(F)V

    .line 1760
    :cond_4
    return-void
.end method
