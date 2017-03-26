.class public Lcom/sec/android/app/camera/widget/gl/StepProgressBar;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "StepProgressBar.java"


# static fields
.field private static final DEFAULT_TEXT_COLOR:I

.field private static final PROGRESS_BAR_TEXT_SHADOW_ENABLE:Z

.field private static final PROGRESS_TEXT_STROKE_COLOR:I

.field private static final PROGRESS_TEXT_STROKE_WIDTH:I


# instance fields
.field private mIsProgressStepOn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mMax:I

.field private mPosX:F

.field private mProgress:I

.field private mProgressStep:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLImage;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressStepGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mProgressText:Lcom/samsung/android/glview/GLText;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 31
    const v1, 0x7f0c0011

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->DEFAULT_TEXT_COLOR:I

    .line 32
    const v1, 0x7f0a0023

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->PROGRESS_TEXT_STROKE_WIDTH:I

    .line 33
    const v1, 0x7f0c0010

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->PROGRESS_TEXT_STROKE_COLOR:I

    .line 34
    const v1, 0x7f0a0045

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->PROGRESS_BAR_TEXT_SHADOW_ENABLE:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFFFI)V
    .locals 7
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "stepWidth"    # F
    .param p7, "stepGap"    # F
    .param p8, "stepMax"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 44
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 35
    iput v5, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mMax:I

    .line 36
    iput v5, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgress:I

    .line 37
    iput v6, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mPosX:F

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgressStep:Ljava/util/ArrayList;

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mIsProgressStepOn:Ljava/util/ArrayList;

    .line 40
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgressText:Lcom/samsung/android/glview/GLText;

    .line 45
    iput p8, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mMax:I

    .line 46
    add-float v1, p6, p7

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mPosX:F

    .line 47
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    invoke-direct {v1, p1}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgressStepGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 49
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p8, :cond_0

    .line 50
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgressStep:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mPosX:F

    int-to-float v4, v0

    mul-float/2addr v3, v4

    const v4, 0x7f020082

    invoke-direct {v2, p1, v3, v6, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mIsProgressStepOn:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgressStepGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgressStep:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgressStepGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFFFIFFF)V
    .locals 12
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "stepWidth"    # F
    .param p7, "stepGap"    # F
    .param p8, "stepMax"    # I
    .param p9, "textHeight"    # F
    .param p10, "textBottomPadding"    # F
    .param p11, "fontSize"    # F

    .prologue
    .line 59
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 35
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mMax:I

    .line 36
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgress:I

    .line 37
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mPosX:F

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgressStep:Ljava/util/ArrayList;

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mIsProgressStepOn:Ljava/util/ArrayList;

    .line 40
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgressText:Lcom/samsung/android/glview/GLText;

    .line 60
    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mMax:I

    .line 61
    add-float v1, p6, p7

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mPosX:F

    .line 62
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    invoke-direct {v1, p1}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgressStepGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 64
    new-instance v1, Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgress:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mMax:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v9, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->DEFAULT_TEXT_COLOR:I

    sget-boolean v10, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->PROGRESS_BAR_TEXT_SHADOW_ENABLE:Z

    move-object v2, p1

    move/from16 v5, p4

    move/from16 v6, p9

    move/from16 v8, p11

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgressText:Lcom/samsung/android/glview/GLText;

    .line 66
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 67
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->PROGRESS_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->PROGRESS_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 68
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgressText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 70
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move/from16 v0, p8

    if-ge v11, v0, :cond_0

    .line 71
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgressStep:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mPosX:F

    int-to-float v4, v11

    mul-float/2addr v3, v4

    add-float v4, p9, p10

    const v5, 0x7f020082

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mIsProgressStepOn:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgressStepGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgressStep:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 70
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgressStepGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 76
    return-void
.end method


# virtual methods
.method public clearProgressBar()V
    .locals 3

    .prologue
    .line 79
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgressStep:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgressStepGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_0

    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgressStep:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 81
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgressStepGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgressStep:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgressStep:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgressStep:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgressStepGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 90
    return-void
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgress:I

    return v0
.end method

.method public setProgress(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    .line 102
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mMax:I

    if-le p1, v1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgress:I

    if-eq p1, v1, :cond_0

    .line 109
    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgress:I

    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgressStep:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 112
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgress:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mIsProgressStepOn:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 113
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgressStep:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f020083

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 114
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mIsProgressStepOn:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 115
    :cond_3
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgress:I

    if-lt v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mIsProgressStepOn:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgressStep:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f020082

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 117
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mIsProgressStepOn:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 120
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgressText:Lcom/samsung/android/glview/GLText;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgressText:Lcom/samsung/android/glview/GLText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mProgress:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/StepProgressBar;->mMax:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
