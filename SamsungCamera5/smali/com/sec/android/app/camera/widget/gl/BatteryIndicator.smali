.class public Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "BatteryIndicator.java"


# static fields
.field private static final BATTERY_INDICATOR_ICON_POS_X:I

.field public static final CHARGING:I = 0x3

.field public static final LEVEL_0_TO_4:I = 0x0

.field public static final LEVEL_16_TO_28:I = 0x2

.field public static final LEVEL_5_TO_15:I = 0x1

.field public static final LEVEL_INVISIBLE:I = 0x4

.field public static final MAX_LEVEL:I = 0x3


# instance fields
.field private mLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const v0, 0x7f090150

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->BATTERY_INDICATOR_ICON_POS_X:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FF)V
    .locals 6
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 34
    iput v5, p0, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->mLevel:I

    .line 39
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    sget v2, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->BATTERY_INDICATOR_ICON_POS_X:I

    int-to-float v2, v2

    const v3, 0x7f020283

    invoke-direct {v1, p1, v2, v4, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 40
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    sget v2, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->BATTERY_INDICATOR_ICON_POS_X:I

    int-to-float v2, v2

    const v3, 0x7f020284

    invoke-direct {v1, p1, v2, v4, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 41
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    sget v2, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->BATTERY_INDICATOR_ICON_POS_X:I

    int-to-float v2, v2

    const v3, 0x7f020285

    invoke-direct {v1, p1, v2, v4, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 42
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    sget v2, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->BATTERY_INDICATOR_ICON_POS_X:I

    int-to-float v2, v2

    const v3, 0x7f020286

    invoke-direct {v1, p1, v2, v4, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 45
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v5}, Lcom/samsung/android/glview/GLView;->setVisibility(IZ)V

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public setLevel(I)V
    .locals 5
    .param p1, "level"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 50
    if-ltz p1, :cond_0

    if-le p1, v4, :cond_1

    .line 51
    :cond_0
    if-ne p1, v3, :cond_2

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gt v0, v4, :cond_2

    .line 53
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/glview/GLView;->setVisibility(IZ)V

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "i":I
    :cond_1
    :try_start_0
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->mLevel:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLView;->setVisibility(IZ)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setVisibility(I)V

    .line 61
    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->mLevel:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_2
    :goto_1
    return-void

    .line 62
    :catch_0
    move-exception v1

    goto :goto_1
.end method
