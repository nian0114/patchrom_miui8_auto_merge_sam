.class public Lcom/samsung/android/glview/GLText;
.super Lcom/samsung/android/glview/GLView;
.source "GLText.java"


# static fields
.field private static final CHAR_ZERO_WIDTH_SPACE:C = '\u200b'

.field private static final DEFAULT_COLOR:I

.field private static final DEFAULT_TEXTSIZE_IN_DIP:F = 21.0f

.field private static final mDelimiters:[C


# instance fields
.field private mColor:I

.field private mHAlign:I

.field private mHeight:F

.field private mShadow:Z

.field private mSize:F

.field protected mString:Lcom/samsung/android/glview/GLStringTexture;

.field private mStringPosX:F

.field private mStringPosY:F

.field private mText:Ljava/lang/String;

.field private mVAlign:I

.field private mWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/samsung/android/glview/R$color;->default_white_color:I

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/glview/GLText;->mDelimiters:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x20s
        0x200bs
        0x2ds
        0x2fs
    .end array-data
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;)V
    .locals 13
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "text"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 49
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    .line 54
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    .line 59
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    .line 64
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    .line 69
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mStringPosX:F

    .line 74
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mStringPosY:F

    .line 79
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    .line 84
    sget v1, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    .line 89
    const/high16 v1, 0x41a80000    # 21.0f

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    .line 90
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    .line 105
    if-eqz p6, :cond_0

    .line 106
    sget v1, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    .line 107
    const/high16 v1, 0x41a80000    # 21.0f

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLText;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    .line 108
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    .line 109
    move/from16 v0, p4

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    .line 110
    move/from16 v0, p5

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    .line 111
    new-instance v1, Lcom/samsung/android/glview/GLStringTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v7, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    iget v8, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    iget v10, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iget v11, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    iget-boolean v12, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    move-object v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/glview/GLStringTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIILjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    .line 112
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLStringTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 116
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLText;->setClickable(Z)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V
    .locals 13
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "text"    # Ljava/lang/String;
    .param p7, "textSize"    # F

    .prologue
    .line 139
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 49
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    .line 54
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    .line 59
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    .line 64
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    .line 69
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mStringPosX:F

    .line 74
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mStringPosY:F

    .line 79
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    .line 84
    sget v1, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    .line 89
    const/high16 v1, 0x41a80000    # 21.0f

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    .line 90
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    .line 141
    if-eqz p6, :cond_0

    .line 142
    sget v1, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    .line 143
    move/from16 v0, p7

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    .line 144
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    .line 145
    move/from16 v0, p4

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    .line 146
    move/from16 v0, p5

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    .line 147
    new-instance v1, Lcom/samsung/android/glview/GLStringTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v7, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    iget v8, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    iget v10, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iget v11, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    iget-boolean v12, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    move-object v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/glview/GLStringTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIILjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    .line 148
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLStringTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 152
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLText;->setClickable(Z)V

    .line 153
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FI)V
    .locals 13
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "text"    # Ljava/lang/String;
    .param p7, "textSize"    # F
    .param p8, "color"    # I

    .prologue
    .line 168
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 49
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    .line 54
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    .line 59
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    .line 64
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    .line 69
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mStringPosX:F

    .line 74
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mStringPosY:F

    .line 79
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    .line 84
    sget v1, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    .line 89
    const/high16 v1, 0x41a80000    # 21.0f

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    .line 90
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    .line 170
    if-eqz p6, :cond_0

    .line 171
    move/from16 v0, p8

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    .line 172
    move/from16 v0, p7

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    .line 173
    move/from16 v0, p4

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    .line 174
    move/from16 v0, p5

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    .line 175
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    .line 176
    new-instance v1, Lcom/samsung/android/glview/GLStringTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v7, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    iget v8, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    iget v10, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iget v11, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    iget-boolean v12, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    move-object v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/glview/GLStringTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIILjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    .line 177
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLStringTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 181
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLText;->setClickable(Z)V

    .line 182
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V
    .locals 13
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "text"    # Ljava/lang/String;
    .param p7, "textSize"    # F
    .param p8, "color"    # I
    .param p9, "shadow"    # Z

    .prologue
    .line 185
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 49
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    .line 54
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    .line 59
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    .line 64
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    .line 69
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mStringPosX:F

    .line 74
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mStringPosY:F

    .line 79
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    .line 84
    sget v1, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    .line 89
    const/high16 v1, 0x41a80000    # 21.0f

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    .line 90
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    .line 187
    if-eqz p6, :cond_0

    .line 188
    move/from16 v0, p8

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    .line 189
    move/from16 v0, p7

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    .line 190
    move/from16 v0, p4

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    .line 191
    move/from16 v0, p5

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    .line 192
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    .line 193
    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    .line 194
    new-instance v1, Lcom/samsung/android/glview/GLStringTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v7, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    iget v8, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    iget v10, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iget v11, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    iget-boolean v12, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    move-object v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/glview/GLStringTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIILjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    .line 195
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLStringTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 199
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLText;->setClickable(Z)V

    .line 200
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;Z)V
    .locals 13
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "text"    # Ljava/lang/String;
    .param p7, "shadow"    # Z

    .prologue
    .line 120
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 49
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    .line 54
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    .line 59
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    .line 64
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    .line 69
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mStringPosX:F

    .line 74
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mStringPosY:F

    .line 79
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    .line 84
    sget v1, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    .line 89
    const/high16 v1, 0x41a80000    # 21.0f

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    .line 90
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    .line 122
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    .line 124
    if-eqz p6, :cond_0

    .line 125
    sget v1, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    .line 126
    const/high16 v1, 0x41a80000    # 21.0f

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLText;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    .line 127
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    .line 128
    move/from16 v0, p4

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    .line 129
    move/from16 v0, p5

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    .line 130
    new-instance v1, Lcom/samsung/android/glview/GLStringTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v7, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    iget v8, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    iget v10, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iget v11, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    iget-boolean v12, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    move-object v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/glview/GLStringTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIILjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    .line 131
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iput-object p0, v1, Lcom/samsung/android/glview/GLStringTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 135
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLText;->setClickable(Z)V

    .line 136
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;)V
    .locals 9
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    const/high16 v1, 0x41a80000    # 21.0f

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 211
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 49
    iput v2, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    .line 54
    iput v2, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    .line 59
    iput v8, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    .line 64
    iput v8, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    .line 69
    iput v2, p0, Lcom/samsung/android/glview/GLText;->mStringPosX:F

    .line 74
    iput v2, p0, Lcom/samsung/android/glview/GLText;->mStringPosY:F

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    .line 84
    sget v0, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    .line 89
    iput v1, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    .line 90
    iput-boolean v8, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    .line 213
    if-eqz p4, :cond_0

    .line 214
    sget v0, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLText;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    .line 216
    iput-object p4, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    .line 217
    new-instance v0, Lcom/samsung/android/glview/GLStringTexture;

    iget v5, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iget v6, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    iget-boolean v7, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    move-object v1, p1

    move v3, v2

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLStringTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    .line 218
    invoke-virtual {p0, p4}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLStringTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 223
    :cond_1
    invoke-virtual {p0, v8}, Lcom/samsung/android/glview/GLText;->setClickable(Z)V

    .line 224
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;F)V
    .locals 9
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "textSize"    # F

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 227
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 49
    iput v2, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    .line 54
    iput v2, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    .line 59
    iput v8, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    .line 64
    iput v8, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    .line 69
    iput v2, p0, Lcom/samsung/android/glview/GLText;->mStringPosX:F

    .line 74
    iput v2, p0, Lcom/samsung/android/glview/GLText;->mStringPosY:F

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    .line 84
    sget v0, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    .line 89
    const/high16 v0, 0x41a80000    # 21.0f

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    .line 90
    iput-boolean v8, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    .line 229
    if-eqz p4, :cond_0

    .line 230
    sget v0, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    .line 231
    iput p5, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    .line 232
    iput-object p4, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    .line 233
    new-instance v0, Lcom/samsung/android/glview/GLStringTexture;

    iget v5, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iget v6, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    iget-boolean v7, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    move-object v1, p1

    move v3, v2

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLStringTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    .line 234
    invoke-virtual {p0, p4}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLStringTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 238
    :cond_1
    invoke-virtual {p0, v8}, Lcom/samsung/android/glview/GLText;->setClickable(Z)V

    .line 239
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;FI)V
    .locals 9
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "textSize"    # F
    .param p6, "color"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 252
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 49
    iput v2, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    .line 54
    iput v2, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    .line 59
    iput v8, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    .line 64
    iput v8, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    .line 69
    iput v2, p0, Lcom/samsung/android/glview/GLText;->mStringPosX:F

    .line 74
    iput v2, p0, Lcom/samsung/android/glview/GLText;->mStringPosY:F

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    .line 84
    sget v0, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    .line 89
    const/high16 v0, 0x41a80000    # 21.0f

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    .line 90
    iput-boolean v8, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    .line 254
    if-eqz p4, :cond_0

    .line 255
    iput p6, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    .line 256
    iput p5, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    .line 257
    iput-object p4, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    .line 258
    new-instance v0, Lcom/samsung/android/glview/GLStringTexture;

    iget v5, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iget v6, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    iget-boolean v7, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    move-object v1, p1

    move v3, v2

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLStringTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    .line 259
    invoke-virtual {p0, p4}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLStringTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 263
    :cond_1
    invoke-virtual {p0, v8}, Lcom/samsung/android/glview/GLText;->setClickable(Z)V

    .line 264
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;FIZ)V
    .locals 8
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "textSize"    # F
    .param p6, "color"    # I
    .param p7, "shadow"    # Z

    .prologue
    .line 267
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mStringPosX:F

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mStringPosY:F

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    .line 84
    sget v0, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    .line 89
    const/high16 v0, 0x41a80000    # 21.0f

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    .line 269
    if-eqz p4, :cond_0

    .line 270
    iput p6, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    .line 271
    iput p5, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    .line 272
    iput-object p4, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    .line 273
    iput-boolean p7, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    .line 274
    new-instance v0, Lcom/samsung/android/glview/GLStringTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v5, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iget v6, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    iget-boolean v7, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    move-object v1, p1

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLStringTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    .line 275
    invoke-virtual {p0, p4}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLStringTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 279
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLText;->setClickable(Z)V

    .line 280
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;Ljava/lang/String;)V
    .locals 9
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/high16 v1, 0x41a80000    # 21.0f

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 289
    invoke-direct {p0, p1, v2, v2}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 49
    iput v2, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    .line 54
    iput v2, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    .line 59
    iput v8, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    .line 64
    iput v8, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    .line 69
    iput v2, p0, Lcom/samsung/android/glview/GLText;->mStringPosX:F

    .line 74
    iput v2, p0, Lcom/samsung/android/glview/GLText;->mStringPosY:F

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    .line 84
    sget v0, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    .line 89
    iput v1, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    .line 90
    iput-boolean v8, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    .line 291
    if-eqz p2, :cond_0

    .line 292
    sget v0, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    .line 293
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLText;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    .line 294
    new-instance v0, Lcom/samsung/android/glview/GLStringTexture;

    iget v5, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iget v6, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    iget-boolean v7, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLStringTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    .line 295
    invoke-virtual {p0, p2}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLStringTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 300
    :cond_1
    invoke-virtual {p0, v8}, Lcom/samsung/android/glview/GLText;->setClickable(Z)V

    .line 301
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;Ljava/lang/String;FI)V
    .locals 9
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "textSize"    # F
    .param p4, "color"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 312
    invoke-direct {p0, p1, v2, v2}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 49
    iput v2, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    .line 54
    iput v2, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    .line 59
    iput v8, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    .line 64
    iput v8, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    .line 69
    iput v2, p0, Lcom/samsung/android/glview/GLText;->mStringPosX:F

    .line 74
    iput v2, p0, Lcom/samsung/android/glview/GLText;->mStringPosY:F

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    .line 84
    sget v0, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    .line 89
    const/high16 v0, 0x41a80000    # 21.0f

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    .line 90
    iput-boolean v8, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    .line 314
    if-eqz p2, :cond_0

    .line 315
    iput p4, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    .line 316
    iput p3, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    .line 317
    iput-object p2, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    .line 318
    new-instance v0, Lcom/samsung/android/glview/GLStringTexture;

    iget v5, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iget v6, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    iget-boolean v7, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLStringTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    .line 319
    invoke-virtual {p0, p2}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLStringTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 323
    :cond_1
    invoke-virtual {p0, v8}, Lcom/samsung/android/glview/GLText;->setClickable(Z)V

    .line 324
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;Ljava/lang/String;FIZ)V
    .locals 9
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "textSize"    # F
    .param p4, "color"    # I
    .param p5, "shadow"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 327
    invoke-direct {p0, p1, v2, v2}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 49
    iput v2, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    .line 54
    iput v2, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    .line 59
    iput v8, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    .line 64
    iput v8, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    .line 69
    iput v2, p0, Lcom/samsung/android/glview/GLText;->mStringPosX:F

    .line 74
    iput v2, p0, Lcom/samsung/android/glview/GLText;->mStringPosY:F

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    .line 84
    sget v0, Lcom/samsung/android/glview/GLText;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    .line 89
    const/high16 v0, 0x41a80000    # 21.0f

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    .line 90
    iput-boolean v8, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    .line 329
    if-eqz p2, :cond_0

    .line 330
    iput p4, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    .line 331
    iput p3, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    .line 332
    iput-object p2, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    .line 333
    iput-boolean p5, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    .line 334
    new-instance v0, Lcom/samsung/android/glview/GLStringTexture;

    iget v5, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iget v6, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    iget-boolean v7, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLStringTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    .line 335
    invoke-virtual {p0, p2}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLStringTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 339
    :cond_1
    invoke-virtual {p0, v8}, Lcom/samsung/android/glview/GLText;->setClickable(Z)V

    .line 340
    return-void
.end method

.method static getBreakIndex(Landroid/graphics/Paint;Ljava/lang/String;F)I
    .locals 6
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "fieldWidth"    # F

    .prologue
    .line 344
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 345
    .local v0, "end":I
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 346
    .local v1, "stringWidth":I
    const/4 v2, 0x0

    .line 348
    .local v2, "subString":Ljava/lang/String;
    int-to-float v3, v1

    cmpg-float v3, v3, p2

    if-gtz v3, :cond_0

    .line 349
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 358
    :goto_0
    return v3

    .line 353
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 354
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 355
    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 356
    int-to-float v3, v1

    cmpl-float v3, v3, p2

    if-gtz v3, :cond_0

    move v3, v0

    .line 358
    goto :goto_0
.end method

.method public static getIndexOfDelimiters(Ljava/lang/String;I)I
    .locals 6
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "index"    # I

    .prologue
    const/4 v5, -0x1

    .line 362
    const/4 v0, -0x1

    .line 363
    .local v0, "delimiterIndex":I
    const/4 v2, -0x1

    .line 365
    .local v2, "tempIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/samsung/android/glview/GLText;->mDelimiters:[C

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 366
    sget-object v3, Lcom/samsung/android/glview/GLText;->mDelimiters:[C

    aget-char v3, v3, v1

    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 367
    if-eq v2, v5, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_0

    .line 368
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v2, 0x1

    if-ne v3, v4, :cond_2

    .line 369
    const/4 v2, -0x1

    .line 374
    :cond_0
    :goto_1
    if-ne v0, v5, :cond_3

    .line 375
    move v0, v2

    .line 365
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 371
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 376
    :cond_3
    if-eq v2, v5, :cond_1

    if-le v0, v2, :cond_1

    .line 377
    move v0, v2

    goto :goto_2

    .line 380
    :cond_4
    return v0
.end method

.method public static getLastIndexOfDelimiters(Ljava/lang/String;I)I
    .locals 6
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "index"    # I

    .prologue
    const/4 v5, -0x1

    .line 384
    const/4 v0, -0x1

    .line 385
    .local v0, "delimiterIndex":I
    const/4 v2, -0x1

    .line 387
    .local v2, "tempIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/samsung/android/glview/GLText;->mDelimiters:[C

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 388
    sget-object v3, Lcom/samsung/android/glview/GLText;->mDelimiters:[C

    aget-char v3, v3, v1

    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    .line 389
    if-eq v2, v5, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_0

    .line 390
    add-int/lit8 v2, v2, 0x1

    .line 392
    :cond_0
    if-ne v0, v5, :cond_2

    .line 393
    move v0, v2

    .line 387
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 394
    :cond_2
    if-eq v2, v5, :cond_1

    if-ge v0, v2, :cond_1

    .line 395
    move v0, v2

    goto :goto_1

    .line 398
    :cond_3
    return v0
.end method

.method public static measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I
    .locals 12
    .param p0, "width"    # F
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textSize"    # F
    .param p3, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 402
    if-nez p1, :cond_0

    .line 403
    const/4 v4, 0x0

    .line 471
    :goto_0
    return v4

    .line 405
    :cond_0
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 406
    .local v3, "paint":Landroid/graphics/Paint;
    const/4 v7, 0x0

    .line 407
    .local v7, "subString":Ljava/lang/String;
    const/4 v6, 0x0

    .line 408
    .local v6, "stringLength":I
    const/4 v5, 0x0

    .line 409
    .local v5, "start":I
    const/4 v0, 0x0

    .line 410
    .local v0, "end":I
    const/4 v4, 0x0

    .line 411
    .local v4, "row":I
    const/4 v1, 0x0

    .line 412
    .local v1, "index":I
    const/4 v2, 0x0

    .line 414
    .local v2, "isDone":Z
    const/4 v9, 0x0

    cmpl-float v9, p2, v9

    if-eqz v9, :cond_1

    .line 415
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 417
    :cond_1
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 418
    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 422
    :cond_2
    add-int/lit8 v9, v0, 0x1

    invoke-static {p1, v9}, Lcom/samsung/android/glview/GLText;->getIndexOfDelimiters(Ljava/lang/String;I)I

    move-result v0

    .line 423
    const/4 v9, -0x1

    if-eq v0, v9, :cond_8

    .line 424
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 425
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v6, v10

    .line 426
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-eq v9, v10, :cond_3

    .line 427
    add-int/lit8 v0, v0, -0x1

    .line 436
    :cond_3
    :goto_1
    const/16 v9, 0xa

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 437
    const/4 v9, -0x1

    if-eq v1, v9, :cond_4

    .line 438
    add-int v0, v5, v1

    .line 439
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 440
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v6, v10

    .line 443
    :cond_4
    int-to-float v9, v6

    cmpl-float v9, v9, p0

    if-lez v9, :cond_c

    .line 444
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v0, v9, :cond_9

    .line 445
    add-int/lit8 v9, v0, -0x1

    invoke-static {p1, v9}, Lcom/samsung/android/glview/GLText;->getLastIndexOfDelimiters(Ljava/lang/String;I)I

    move-result v0

    .line 446
    const/4 v9, -0x1

    if-eq v0, v9, :cond_5

    add-int/lit8 v9, v0, 0x1

    if-lt v5, v9, :cond_6

    .line 447
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9, p0}, Lcom/samsung/android/glview/GLText;->getBreakIndex(Landroid/graphics/Paint;Ljava/lang/String;F)I

    move-result v9

    add-int v0, v5, v9

    .line 448
    add-int/lit8 v0, v0, -0x1

    .line 461
    :cond_6
    :goto_2
    add-int/lit8 v5, v0, 0x1

    .line 462
    add-int/lit8 v4, v4, 0x1

    .line 470
    :cond_7
    :goto_3
    if-eqz v2, :cond_2

    goto/16 :goto_0

    .line 430
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 431
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 432
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v6, v10

    goto :goto_1

    .line 451
    :cond_9
    move v8, v0

    .line 452
    .local v8, "tempEnd":I
    add-int/lit8 v9, v0, -0x1

    invoke-static {p1, v9}, Lcom/samsung/android/glview/GLText;->getLastIndexOfDelimiters(Ljava/lang/String;I)I

    move-result v0

    .line 453
    const/4 v9, -0x1

    if-eq v0, v9, :cond_a

    add-int/lit8 v9, v0, 0x1

    if-lt v5, v9, :cond_b

    .line 454
    :cond_a
    move v0, v8

    .line 455
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9, p0}, Lcom/samsung/android/glview/GLText;->getBreakIndex(Landroid/graphics/Paint;Ljava/lang/String;F)I

    move-result v9

    add-int v0, v5, v9

    .line 456
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 457
    :cond_b
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-eq v9, v10, :cond_6

    .line 458
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 463
    .end local v8    # "tempEnd":I
    :cond_c
    const/4 v9, -0x1

    if-eq v1, v9, :cond_d

    .line 464
    add-int/lit8 v9, v1, 0x1

    add-int/2addr v5, v9

    .line 465
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 466
    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v0, v9, :cond_7

    .line 467
    add-int/lit8 v4, v4, 0x1

    .line 468
    const/4 v2, 0x1

    goto :goto_3
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 479
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLStringTexture;->clear()V

    .line 481
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    .line 483
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    monitor-exit p0

    return-void

    .line 479
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLoaded()Z
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLStringTexture;->getLoaded()Z

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLStringTexture;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 529
    iget v0, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    return v0
.end method

.method public initSize()V
    .locals 2

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLText;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    .line 538
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLText;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    .line 540
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_1

    .line 541
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLText;->mSizeSpecified:Z

    if-nez v0, :cond_1

    .line 542
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLStringTexture;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLStringTexture;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLStringTexture;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 546
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLStringTexture;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    .line 550
    :cond_1
    iget v0, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    iget v1, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 551
    return-void
.end method

.method public onAlphaUpdated()V
    .locals 1

    .prologue
    .line 555
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    .line 556
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLStringTexture;->onAlphaUpdated()V

    .line 559
    :cond_0
    return-void
.end method

.method protected onDraw()V
    .locals 3

    .prologue
    .line 866
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLText;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLText;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLStringTexture;->draw([FLandroid/graphics/Rect;)V

    .line 869
    :cond_0
    return-void
.end method

.method public onLayoutUpdated()V
    .locals 1

    .prologue
    .line 566
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    .line 567
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLStringTexture;->onLayoutUpdated()V

    .line 570
    :cond_0
    return-void
.end method

.method protected onLoad()Z
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLStringTexture;->load()Z

    move-result v0

    .line 879
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onReset()V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLStringTexture;->reset()V

    .line 576
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 581
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 884
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->onVisibilityChanged(I)V

    .line 885
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->onVisibilityChanged(I)V

    .line 888
    :cond_0
    return-void
.end method

.method public setAlign(II)V
    .locals 10
    .param p1, "hAlign"    # I
    .param p2, "vAlign"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 592
    iput v4, p0, Lcom/samsung/android/glview/GLText;->mStringPosX:F

    .line 593
    iput v4, p0, Lcom/samsung/android/glview/GLText;->mStringPosY:F

    .line 594
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLText;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float v3, v4, v5

    .line 595
    .local v3, "width":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLText;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float v0, v4, v5

    .line 596
    .local v0, "height":F
    iget-object v4, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLStringTexture;->getWidth()F

    move-result v2

    .line 597
    .local v2, "stringWidth":F
    iget-object v4, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLStringTexture;->getHeight()F

    move-result v1

    .line 599
    .local v1, "stringHeight":F
    cmpg-float v4, v3, v2

    if-gez v4, :cond_0

    .line 600
    iget-object v4, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLStringTexture;->getStringWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_2

    .line 601
    iget-object v4, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLStringTexture;->getStringWidth()I

    move-result v4

    int-to-float v2, v4

    .line 606
    :cond_0
    :goto_0
    cmpg-float v4, v0, v1

    if-gez v4, :cond_1

    .line 607
    iget-object v4, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLStringTexture;->getStringHeight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_3

    .line 608
    iget-object v4, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLStringTexture;->getStringHeight()I

    move-result v4

    int-to-float v1, v4

    .line 614
    :cond_1
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 630
    :goto_2
    packed-switch p2, :pswitch_data_1

    .line 646
    :goto_3
    iget-object v4, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v4, p1, p2}, Lcom/samsung/android/glview/GLStringTexture;->setAlign(II)V

    .line 647
    iget-object v4, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iget v5, p0, Lcom/samsung/android/glview/GLText;->mStringPosX:F

    iget v6, p0, Lcom/samsung/android/glview/GLText;->mStringPosY:F

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/glview/GLStringTexture;->moveLayout(FF)V

    .line 648
    return-void

    .line 603
    :cond_2
    move v2, v3

    goto :goto_0

    .line 610
    :cond_3
    move v1, v0

    goto :goto_1

    .line 616
    :pswitch_0
    iput v7, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    goto :goto_2

    .line 619
    :pswitch_1
    sub-float v4, v3, v2

    div-float/2addr v4, v6

    iput v4, p0, Lcom/samsung/android/glview/GLText;->mStringPosX:F

    .line 620
    iput v8, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    goto :goto_2

    .line 623
    :pswitch_2
    sub-float v4, v3, v2

    iput v4, p0, Lcom/samsung/android/glview/GLText;->mStringPosX:F

    .line 624
    iput v9, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    goto :goto_2

    .line 632
    :pswitch_3
    iput v7, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    goto :goto_3

    .line 635
    :pswitch_4
    sub-float v4, v0, v1

    div-float/2addr v4, v6

    iput v4, p0, Lcom/samsung/android/glview/GLText;->mStringPosY:F

    .line 636
    iput v8, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    goto :goto_3

    .line 639
    :pswitch_5
    sub-float v4, v0, v1

    iput v4, p0, Lcom/samsung/android/glview/GLText;->mStringPosY:F

    .line 640
    iput v9, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    goto :goto_3

    .line 614
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 630
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setBold(Z)V
    .locals 1
    .param p1, "bold"    # Z

    .prologue
    .line 651
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->setBold(Z)V

    .line 654
    :cond_0
    return-void
.end method

.method public setBoldColor(ZI)V
    .locals 1
    .param p1, "bold"    # Z
    .param p2, "color"    # I

    .prologue
    .line 657
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLStringTexture;->setBoldColor(ZI)V

    .line 660
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 663
    iget v0, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    if-ne v0, p1, :cond_1

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    .line 667
    iput p1, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    .line 668
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->setColor(I)V

    goto :goto_0
.end method

.method public setFadingEdge(Z)V
    .locals 1
    .param p1, "fading"    # Z

    .prologue
    .line 673
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->setFadingEdge(Z)V

    .line 676
    :cond_0
    return-void
.end method

.method public setFadingEdgeWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 679
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->setFadingEdgeWidth(F)V

    .line 682
    :cond_0
    return-void
.end method

.method public setFontSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 685
    iget v0, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    invoke-static {v0, p1}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    .line 689
    iput p1, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    .line 690
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->setFontSize(F)V

    goto :goto_0
.end method

.method public setHeight(F)V
    .locals 3
    .param p1, "height"    # F

    .prologue
    .line 696
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setHeight(F)V

    .line 697
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    .line 698
    iput p1, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    .line 699
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLStringTexture;->setHeight(F)V

    .line 701
    :cond_0
    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "paddings"    # Landroid/graphics/Rect;

    .prologue
    .line 705
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setPaddings(Landroid/graphics/Rect;)V

    .line 706
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    iget-object v3, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLStringTexture;->setSize(FF)V

    .line 708
    iget v0, p0, Lcom/samsung/android/glview/GLText;->mHAlign:I

    iget v1, p0, Lcom/samsung/android/glview/GLText;->mVAlign:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 710
    :cond_0
    return-void
.end method

.method public setShaderParameter(F)V
    .locals 1
    .param p1, "parameter"    # F

    .prologue
    .line 717
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->setShaderParameter(F)V

    .line 720
    :cond_0
    return-void
.end method

.method public setShaderProgram(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 727
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->setShaderProgram(I)V

    .line 730
    :cond_0
    return-void
.end method

.method public setShaderStep(F)V
    .locals 1
    .param p1, "step"    # F

    .prologue
    .line 737
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->setShaderStep(F)V

    .line 740
    :cond_0
    return-void
.end method

.method public setShadowColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 743
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->setShadowColor(I)V

    .line 746
    :cond_0
    return-void
.end method

.method public setShadowLayer(ZFFFI)V
    .locals 6
    .param p1, "visibility"    # Z
    .param p2, "radius"    # F
    .param p3, "offsetX"    # F
    .param p4, "offsetY"    # F
    .param p5, "color"    # I

    .prologue
    .line 749
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/glview/GLStringTexture;->setShadowLayer(ZFFFI)V

    .line 752
    :cond_0
    return-void
.end method

.method public setShadowOffset(FF)V
    .locals 1
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F

    .prologue
    .line 755
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLStringTexture;->setShadowOffset(FF)V

    .line 758
    :cond_0
    return-void
.end method

.method public setShadowRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .prologue
    .line 761
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->setShadowRadius(F)V

    .line 764
    :cond_0
    return-void
.end method

.method public setShadowVisibility(Z)V
    .locals 1
    .param p1, "visibility"    # Z

    .prologue
    .line 767
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    .line 768
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLText;->mShadow:Z

    .line 769
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->setShadowVisibility(Z)V

    .line 771
    :cond_0
    return-void
.end method

.method public setSize(FF)V
    .locals 4
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 778
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->setSize(FF)V

    .line 779
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    .line 780
    iput p1, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    .line 781
    iput p2, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    .line 782
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    iget-object v3, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLStringTexture;->setSize(FF)V

    .line 784
    :cond_0
    return-void
.end method

.method public setStroke(ZFI)V
    .locals 1
    .param p1, "visibility"    # Z
    .param p2, "width"    # F
    .param p3, "color"    # I

    .prologue
    .line 787
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/glview/GLStringTexture;->setStroke(ZFI)V

    .line 790
    :cond_0
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 793
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->setStrokeColor(I)V

    .line 796
    :cond_0
    return-void
.end method

.method public setStrokeVisibility(Z)V
    .locals 1
    .param p1, "visibility"    # Z

    .prologue
    .line 799
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->setStrokeVisibility(Z)V

    .line 802
    :cond_0
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 805
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->setStrokeWidth(F)V

    .line 808
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 509
    if-nez p1, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    .line 516
    iput-object p1, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    .line 517
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    .line 518
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLText;->mSizeGiven:Z

    if-eqz v0, :cond_2

    .line 519
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 521
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLStringTexture;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    .line 522
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLStringTexture;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    .line 523
    iget v0, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    iget v1, p0, Lcom/samsung/android/glview/GLText;->mHeight:F

    invoke-super {p0, v0, v1}, Lcom/samsung/android/glview/GLView;->setSize(FF)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;FI)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textSize"    # F
    .param p3, "color"    # I

    .prologue
    .line 818
    if-nez p1, :cond_1

    .line 832
    :cond_0
    :goto_0
    return-void

    .line 822
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    invoke-static {v0, p2}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    if-eq v0, p3, :cond_0

    .line 825
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    .line 826
    iput p2, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    .line 827
    iput p3, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    .line 828
    iput-object p1, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    .line 829
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iget-object v1, p0, Lcom/samsung/android/glview/GLText;->mText:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/glview/GLText;->mSize:F

    iget v3, p0, Lcom/samsung/android/glview/GLText;->mColor:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLStringTexture;->setText(Ljava/lang/String;FI)V

    .line 830
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTextFont(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "type"    # Landroid/graphics/Typeface;

    .prologue
    .line 835
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->setTypeface(Landroid/graphics/Typeface;)V

    .line 836
    return-void
.end method

.method public setTextScaleX(F)V
    .locals 1
    .param p1, "scaleX"    # F

    .prologue
    .line 839
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLStringTexture;->setTextScaleX(F)V

    .line 842
    :cond_0
    return-void
.end method

.method public setTint(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 849
    return-void
.end method

.method public setWidth(F)V
    .locals 3
    .param p1, "width"    # F

    .prologue
    .line 854
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setWidth(F)V

    .line 855
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    if-eqz v0, :cond_0

    .line 856
    iput p1, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    .line 857
    iget-object v0, p0, Lcom/samsung/android/glview/GLText;->mString:Lcom/samsung/android/glview/GLStringTexture;

    iget v1, p0, Lcom/samsung/android/glview/GLText;->mWidth:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLText;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLStringTexture;->setWidth(F)V

    .line 859
    :cond_0
    return-void
.end method
