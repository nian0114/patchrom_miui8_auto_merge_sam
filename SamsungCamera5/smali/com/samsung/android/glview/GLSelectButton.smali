.class public Lcom/samsung/android/glview/GLSelectButton;
.super Lcom/samsung/android/glview/GLButton;
.source "GLSelectButton.java"


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V
    .locals 0
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "normalId"    # I
    .param p7, "pressedId"    # I
    .param p8, "dimmedId"    # I

    .prologue
    .line 61
    invoke-direct/range {p0 .. p8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "offBitmap"    # Landroid/graphics/Bitmap;
    .param p7, "onBitmap"    # Landroid/graphics/Bitmap;
    .param p8, "dimmedBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 45
    invoke-direct/range {p0 .. p8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;)V
    .locals 0
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "path"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFII)V
    .locals 8
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "offId"    # I
    .param p5, "onId"    # I

    .prologue
    const/4 v6, 0x0

    .line 84
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFIII)V
    .locals 8
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "offId"    # I
    .param p5, "onId"    # I
    .param p6, "highlightId"    # I

    .prologue
    .line 98
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFIIII)V
    .locals 0
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "normalId"    # I
    .param p5, "pressedId"    # I
    .param p6, "dimmedId"    # I
    .param p7, "npHighlightId"    # I

    .prologue
    .line 113
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    .line 114
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;II)V
    .locals 6
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "offId"    # I
    .param p3, "onId"    # I

    .prologue
    const/4 v4, 0x0

    .line 124
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;IIII)V

    .line 125
    return-void
.end method


# virtual methods
.method public getSelected()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mSelected:Z

    return v0
.end method

.method public getTtsString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v0, "ttsString":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/samsung/android/glview/GLSelectButton;->mContentDescription:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 158
    iget-object v1, p0, Lcom/samsung/android/glview/GLSelectButton;->mContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/glview/GLUtil;->isTimeInfo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 165
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/glview/GLUtil;->convertTimeInfoForTTS(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLSelectButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-nez v1, :cond_2

    .line 168
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/glview/R$string;->button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/glview/GLSelectButton;->mSubTitle:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 172
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object v1, p0, Lcom/samsung/android/glview/GLSelectButton;->mSubTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLSelectButton;->mSelected:Z

    if-eqz v1, :cond_6

    .line 176
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/glview/R$string;->tts_selected:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->isDim()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 183
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/glview/R$string;->disable:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 159
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/glview/GLSelectButton;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/samsung/android/glview/GLSelectButton;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 179
    :cond_6
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/glview/R$string;->tts_not_selected:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method protected onDraw()V
    .locals 3

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->isDim()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 228
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    .line 259
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mShowText:Z

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->draw([FLandroid/graphics/Rect;)V

    .line 262
    :cond_1
    return-void

    .line 231
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mSelected:Z

    if-eqz v0, :cond_3

    .line 232
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    goto :goto_0

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    goto :goto_0

    .line 241
    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mPressed:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mSelected:Z

    if-eqz v0, :cond_8

    .line 242
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mShowHighlight:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mDrawHighlight:Z

    if-eqz v0, :cond_6

    .line 243
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    .line 245
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_7

    .line 246
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    goto :goto_0

    .line 247
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 250
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_9

    .line 251
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 252
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mShowHighlight:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mDrawHighlight:Z

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    .line 254
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mHighlightFadeOut:Z

    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mDrawHighlight:Z

    goto/16 :goto_0
.end method

.method public onKeyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 266
    sparse-switch p1, :sswitch_data_0

    .line 287
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLButton;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    .line 269
    :sswitch_0
    iget-boolean v2, p0, Lcom/samsung/android/glview/GLSelectButton;->mSelected:Z

    if-eqz v2, :cond_3

    .line 270
    invoke-virtual {p0, v5}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    .line 271
    invoke-virtual {p0, v5}, Lcom/samsung/android/glview/GLSelectButton;->setPressed(Z)V

    .line 275
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLSelectButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    if-eqz v2, :cond_0

    .line 276
    iget-boolean v2, p0, Lcom/samsung/android/glview/GLSelectButton;->mMute:Z

    if-nez v2, :cond_1

    .line 277
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 278
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 280
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLSelectButton;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isTalkBackEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 281
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLSelectButton;->mTitle:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 283
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/glview/GLSelectButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    invoke-interface {v2, p0}, Lcom/samsung/android/glview/GLView$ClickListener;->onClick(Lcom/samsung/android/glview/GLView;)Z

    goto :goto_0

    .line 273
    :cond_3
    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    goto :goto_1

    .line 266
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->isClickable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 219
    :goto_0
    return v1

    .line 198
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 199
    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_6

    .line 202
    iget-boolean v3, p0, Lcom/samsung/android/glview/GLSelectButton;->mSelected:Z

    if-eqz v3, :cond_5

    .line 203
    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    .line 207
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/glview/GLSelectButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    if-eqz v3, :cond_4

    .line 208
    iget-boolean v3, p0, Lcom/samsung/android/glview/GLSelectButton;->mMute:Z

    if-nez v3, :cond_2

    .line 209
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 210
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 212
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/glview/GLSelectButton;->mTitle:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isTalkBackEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLSelectButton;->mTitle:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 215
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/glview/GLSelectButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    invoke-interface {v1, p0}, Lcom/samsung/android/glview/GLView$ClickListener;->onClick(Lcom/samsung/android/glview/GLView;)Z

    :cond_4
    move v1, v2

    .line 217
    goto :goto_0

    .line 205
    :cond_5
    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    goto :goto_1

    .line 219
    :cond_6
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mSelected:Z

    if-eq v0, p1, :cond_0

    .line 144
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLSelectButton;->mSelected:Z

    .line 146
    :cond_0
    return-void
.end method
