.class public Lcom/sec/android/app/camera/util/AnimationUtil;
.super Ljava/lang/Object;
.source "AnimationUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;
    }
.end annotation


# static fields
.field public static final CLOSE:I = 0x1

.field public static final DURATION_NORMAL:I

.field public static final EXPAND_DIRECTION_CENTER:I = 0x4

.field public static final EXPAND_DIRECTION_LEFT_DOWN:I = 0x0

.field public static final EXPAND_DIRECTION_LEFT_UP:I = 0x1

.field public static final EXPAND_DIRECTION_RIGHT_DOWN:I = 0x2

.field public static final EXPAND_DIRECTION_RIGHT_UP:I = 0x3

.field public static final FADE_IN:I = 0x0

.field public static final FADE_OUT:I = 0x1

.field public static final OPEN:I = 0x0

.field public static final SLIDE_DIRECTION_DOWN:I = 0x3

.field public static final SLIDE_DIRECTION_LEFT:I = 0x0

.field public static final SLIDE_DIRECTION_RIGHT:I = 0x1

.field public static final SLIDE_DIRECTION_UP:I = 0x2

.field public static final SWITCH_OFFSET_DIRECTION_DOWN:I = 0x64

.field public static final SWITCH_OFFSET_DIRECTION_UP:I = 0x65


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const v0, 0x7f0a0012

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    return-void
.end method

.method public static getAlphaAnimation(FFI)Landroid/view/animation/Animation;
    .locals 4
    .param p0, "from"    # F
    .param p1, "to"    # F
    .param p2, "duration"    # I

    .prologue
    .line 105
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 106
    .local v0, "showAlphaViewAnimation":Landroid/view/animation/AlphaAnimation;
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 108
    return-object v0
.end method

.method public static getAlphaOffAnimation()Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 118
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 119
    .local v0, "showAlphaViewAnimation":Landroid/view/animation/AlphaAnimation;
    sget v1, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 121
    return-object v0
.end method

.method public static getAlphaOffAnimation(I)Landroid/view/animation/Animation;
    .locals 4
    .param p0, "duration"    # I

    .prologue
    .line 125
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 126
    .local v0, "showAlphaViewAnimation":Landroid/view/animation/AlphaAnimation;
    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 128
    return-object v0
.end method

.method public static getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .locals 4
    .param p0, "duration"    # I
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 132
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 133
    .local v0, "showAlphaViewAnimation":Landroid/view/animation/AlphaAnimation;
    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 134
    invoke-virtual {v0, p1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 136
    return-object v0
.end method

.method public static getAlphaOnAnimation()Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 145
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 146
    .local v0, "showAlphaViewAnimation":Landroid/view/animation/AlphaAnimation;
    sget v1, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 148
    return-object v0
.end method

.method public static getAlphaOnAnimation(F)Landroid/view/animation/Animation;
    .locals 4
    .param p0, "to"    # F

    .prologue
    .line 158
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 159
    .local v0, "showAlphaViewAnimation":Landroid/view/animation/AlphaAnimation;
    sget v1, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 161
    return-object v0
.end method

.method public static getAlphaOnAnimation(FI)Landroid/view/animation/Animation;
    .locals 4
    .param p0, "to"    # F
    .param p1, "duration"    # I

    .prologue
    .line 172
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 173
    .local v0, "showAlphaViewAnimation":Landroid/view/animation/AlphaAnimation;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 174
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 176
    return-object v0
.end method

.method public static getAlphaOnAnimation(I)Landroid/view/animation/Animation;
    .locals 4
    .param p0, "duration"    # I

    .prologue
    .line 165
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 166
    .local v0, "showAlphaViewAnimation":Landroid/view/animation/AlphaAnimation;
    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 168
    return-object v0
.end method

.method public static getAlphaOnAnimation(IILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .locals 4
    .param p0, "duration"    # I
    .param p1, "offset"    # I
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 180
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 181
    .local v0, "showAlphaViewAnimation":Landroid/view/animation/AlphaAnimation;
    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 182
    invoke-virtual {v0, p2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 183
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 185
    return-object v0
.end method

.method public static getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .locals 4
    .param p0, "duration"    # I
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 189
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 190
    .local v0, "showAlphaViewAnimation":Landroid/view/animation/AlphaAnimation;
    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 191
    invoke-virtual {v0, p1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 193
    return-object v0
.end method

.method public static getBlinkAnimation(Z)Landroid/view/animation/Animation;
    .locals 4
    .param p0, "repeat"    # Z

    .prologue
    .line 203
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 204
    .local v0, "blinkAnimation":Landroid/view/animation/AlphaAnimation;
    sget v1, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 205
    if-eqz p0, :cond_0

    .line 206
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 207
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 209
    :cond_0
    return-object v0
.end method

.method public static getExpandAnimation(Lcom/samsung/android/glview/GLView;IIZ)Landroid/view/animation/Animation;
    .locals 12
    .param p0, "view"    # Lcom/samsung/android/glview/GLView;
    .param p1, "to"    # I
    .param p2, "action"    # I
    .param p3, "withAlphaAnimation"    # Z

    .prologue
    .line 221
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 223
    .local v9, "animation":Landroid/view/animation/AnimationSet;
    if-nez p2, :cond_2

    .line 224
    packed-switch p1, :pswitch_data_0

    .line 241
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    const/high16 v2, 0x42700000    # 60.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v3

    neg-float v3, v3

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 267
    .local v0, "anim":Landroid/view/animation/Animation;
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 268
    sget v1, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 269
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 270
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 272
    packed-switch p2, :pswitch_data_1

    .line 285
    :goto_1
    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 287
    sget v1, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 288
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 289
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 292
    :cond_0
    if-eqz p3, :cond_1

    .line 293
    packed-switch p2, :pswitch_data_2

    .line 303
    :goto_2
    sget v1, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 304
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 305
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 307
    :cond_1
    return-object v9

    .line 229
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    neg-float v1, v1

    const/high16 v2, 0x42700000    # 60.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v3

    neg-float v3, v3

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 230
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 232
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    const/high16 v2, 0x42700000    # 60.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v3

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 233
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 235
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    neg-float v1, v1

    const/high16 v2, 0x42700000    # 60.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v3

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 236
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 238
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_4
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 239
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 243
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 244
    packed-switch p1, :pswitch_data_3

    .line 261
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    :pswitch_5
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v2

    neg-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    neg-float v4, v4

    const/high16 v5, 0x41a00000    # 20.0f

    div-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 247
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 249
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_6
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    neg-float v4, v4

    const/high16 v5, 0x41a00000    # 20.0f

    div-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 250
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 252
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_7
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v2

    neg-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    const/high16 v5, 0x41a00000    # 20.0f

    div-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 253
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 255
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_8
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    const/high16 v5, 0x41a00000    # 20.0f

    div-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 256
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 258
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_9
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 259
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 264
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 274
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_a
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const v1, 0x3f733333    # 0.95f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f733333    # 0.95f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getCurrentLeft()F

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getCurrentTop()F

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v8, v10

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 276
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_1

    .line 278
    :pswitch_b
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f733333    # 0.95f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f733333    # 0.95f

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getCurrentLeft()F

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getCurrentTop()F

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v8, v10

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 280
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_1

    .line 295
    :pswitch_c
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 296
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_2

    .line 298
    :pswitch_d
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 299
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_2

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 272
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 293
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 244
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_7
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method

.method public static getFadeAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;
    .locals 12
    .param p0, "view"    # Lcom/samsung/android/glview/GLView;
    .param p1, "to"    # I
    .param p2, "withAlphaAnimation"    # Z

    .prologue
    .line 318
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 320
    .local v9, "animation":Landroid/view/animation/AnimationSet;
    packed-switch p1, :pswitch_data_0

    .line 328
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 322
    :pswitch_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f666666    # 0.9f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v8, v10

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 330
    .local v0, "anim":Landroid/view/animation/Animation;
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 331
    sget v1, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 332
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 333
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 334
    if-eqz p2, :cond_0

    .line 335
    packed-switch p1, :pswitch_data_1

    .line 345
    :goto_1
    sget v1, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 346
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 347
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 349
    :cond_0
    return-object v9

    .line 325
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f666666    # 0.9f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f666666    # 0.9f

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v8, v10

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 326
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 337
    :pswitch_2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 338
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_1

    .line 340
    :pswitch_3
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 341
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_1

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 335
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getProgressWheelTimerFadeAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;
    .locals 12
    .param p0, "view"    # Lcom/samsung/android/glview/GLView;
    .param p1, "to"    # I
    .param p2, "withAlphaAnimation"    # Z

    .prologue
    .line 353
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 354
    .local v9, "animation":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 356
    packed-switch p1, :pswitch_data_0

    .line 364
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 358
    :pswitch_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f4ccccd    # 0.8f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v8, v10

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 366
    .local v0, "anim":Landroid/view/animation/Animation;
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 367
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 368
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 369
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 370
    if-eqz p2, :cond_0

    .line 371
    packed-switch p1, :pswitch_data_1

    .line 381
    :goto_1
    const-wide/16 v2, 0x14a

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 382
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 383
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 385
    :cond_0
    return-object v9

    .line 361
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f4ccccd    # 0.8f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f4ccccd    # 0.8f

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v8, v10

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 362
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 373
    :pswitch_2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/4 v1, 0x0

    const v2, 0x3e99999a    # 0.3f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 374
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_1

    .line 376
    :pswitch_3
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 377
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_1

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 371
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getRotateAnimation(FFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;JJ)Landroid/view/animation/Animation;
    .locals 8
    .param p0, "fromDegrees"    # F
    .param p1, "toDegrees"    # F
    .param p2, "view"    # Lcom/samsung/android/glview/GLView;
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p4, "duration"    # J
    .param p6, "offset"    # J

    .prologue
    const/4 v3, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 394
    new-instance v0, Landroid/view/animation/RotateAnimation;

    invoke-virtual {p2}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v2

    div-float/2addr v2, v5

    add-float v4, v1, v2

    invoke-virtual {p2}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v2

    div-float/2addr v2, v5

    add-float v6, v1, v2

    move v1, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 396
    .local v0, "rotateAnimation":Landroid/view/animation/RotateAnimation;
    invoke-virtual {p2}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;->initialize(IIII)V

    .line 397
    invoke-virtual {v0, p6, p7}, Landroid/view/animation/RotateAnimation;->setStartOffset(J)V

    .line 398
    invoke-virtual {v0, p4, p5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 400
    return-object v0
.end method

.method public static getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;
    .locals 11
    .param p0, "fromX"    # F
    .param p1, "toX"    # F
    .param p2, "fromY"    # F
    .param p3, "toY"    # F
    .param p4, "view"    # Lcom/samsung/android/glview/GLView;
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "duration"    # I
    .param p7, "offset"    # I

    .prologue
    .line 409
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/4 v7, 0x0

    invoke-virtual {p4}, Lcom/samsung/android/glview/GLView;->getCurrentLeft()F

    move-result v3

    invoke-virtual {p4}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float v8, v3, v4

    const/4 v9, 0x0

    invoke-virtual {p4}, Lcom/samsung/android/glview/GLView;->getCurrentTop()F

    move-result v3

    invoke-virtual {p4}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float v10, v3, v4

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 411
    .local v2, "scaleUpAnimation":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {p4}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p4}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p4}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p4}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    .line 412
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 413
    move/from16 v0, p7

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 414
    move/from16 v0, p6

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 416
    return-object v2
.end method

.method public static getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;
    .locals 7
    .param p0, "view"    # Lcom/samsung/android/glview/GLView;
    .param p1, "from"    # I
    .param p2, "withAlphaAnimation"    # Z

    .prologue
    const/4 v6, 0x0

    .line 427
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 429
    .local v1, "animation":Landroid/view/animation/AnimationSet;
    packed-switch p1, :pswitch_data_0

    .line 443
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 431
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v2

    neg-float v2, v2

    invoke-direct {v0, v2, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 445
    .local v0, "anim":Landroid/view/animation/Animation;
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLContext;->getScreenWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLContext;->getScreenHeight()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 446
    sget v2, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 447
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 448
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 449
    if-eqz p2, :cond_0

    .line 450
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v6, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 451
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    sget v2, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 452
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 453
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 455
    :cond_0
    return-object v1

    .line 434
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v2

    invoke-direct {v0, v2, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 435
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 437
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v2

    neg-float v2, v2

    invoke-direct {v0, v6, v6, v2, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 438
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 440
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v2

    invoke-direct {v0, v6, v6, v2, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 441
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 429
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getSlideOutAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;
    .locals 7
    .param p0, "view"    # Lcom/samsung/android/glview/GLView;
    .param p1, "to"    # I
    .param p2, "withAlphaAnimation"    # Z

    .prologue
    const/4 v6, 0x0

    .line 466
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 468
    .local v1, "animation":Landroid/view/animation/AnimationSet;
    packed-switch p1, :pswitch_data_0

    .line 482
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 470
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v2

    neg-float v2, v2

    invoke-direct {v0, v6, v2, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 484
    .local v0, "anim":Landroid/view/animation/Animation;
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLContext;->getScreenWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLContext;->getScreenHeight()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 485
    sget v2, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 486
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 487
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 488
    if-eqz p2, :cond_0

    .line 489
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 490
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    sget v2, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 491
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 492
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 494
    :cond_0
    return-object v1

    .line 473
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v2

    invoke-direct {v0, v6, v2, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 474
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 476
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v2

    neg-float v2, v2

    invoke-direct {v0, v6, v6, v6, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 477
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 479
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v2

    invoke-direct {v0, v6, v6, v6, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 480
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 468
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getSwitchAnimation(Lcom/samsung/android/glview/GLView;IIFFI)Landroid/view/animation/Animation;
    .locals 7
    .param p0, "view"    # Lcom/samsung/android/glview/GLView;
    .param p1, "fromX"    # I
    .param p2, "toX"    # I
    .param p3, "depth"    # F
    .param p4, "maxOffsetY"    # F
    .param p5, "direction"    # I

    .prologue
    .line 498
    new-instance v0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;-><init>()V

    .line 499
    .local v0, "animation":Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v4

    add-float v2, v3, v4

    .line 500
    .local v2, "width":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    add-float v1, v3, v4

    .line 501
    .local v1, "height":F
    float-to-int v3, v2

    float-to-int v4, v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLContext;->getScreenWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLContext;->getScreenHeight()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->initialize(IIII)V

    .line 502
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->setRotation(II)V

    .line 503
    invoke-virtual {v0, p4}, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->setMaxOffsetY(F)V

    .line 504
    invoke-virtual {v0, p3}, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->setDepth(F)V

    .line 505
    invoke-virtual {v0, p5}, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->setDirection(I)V

    .line 506
    sget v3, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->setDuration(J)V

    .line 507
    return-object v0
.end method

.method public static getTimerFadeAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;
    .locals 12
    .param p0, "view"    # Lcom/samsung/android/glview/GLView;
    .param p1, "to"    # I
    .param p2, "withAlphaAnimation"    # Z

    .prologue
    .line 511
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 513
    .local v9, "animation":Landroid/view/animation/AnimationSet;
    packed-switch p1, :pswitch_data_0

    .line 521
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 515
    :pswitch_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f666666    # 0.9f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v8, v10

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 523
    .local v0, "anim":Landroid/view/animation/Animation;
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 524
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 525
    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 526
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 527
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 528
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 529
    if-eqz p2, :cond_0

    .line 530
    packed-switch p1, :pswitch_data_1

    .line 540
    :goto_1
    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 541
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 542
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 543
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 544
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 546
    :cond_0
    return-object v9

    .line 518
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f59999a    # 0.85f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f59999a    # 0.85f

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v8, v10

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 519
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 532
    :pswitch_2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 533
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_1

    .line 535
    :pswitch_3
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 536
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_1

    .line 513
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 530
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;
    .locals 4
    .param p0, "fromX"    # F
    .param p1, "toX"    # F
    .param p2, "fromY"    # F
    .param p3, "toY"    # F
    .param p4, "view"    # Lcom/samsung/android/glview/GLView;
    .param p5, "parentWidth"    # I
    .param p6, "parentHeight"    # I
    .param p7, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p8, "duration"    # I

    .prologue
    .line 556
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 557
    .local v0, "translationAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {p4}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p4}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2, p5, p6}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 558
    invoke-virtual {v0, p7}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 559
    int-to-long v2, p8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 561
    return-object v0
.end method
