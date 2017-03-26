.class public Lcom/sec/android/app/camera/widget/gl/QRCodeReader;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "QRCodeReader.java"


# static fields
.field private static final MESSAGE_HIDE_QRBUTTON:I = 0x1

.field private static final QR_BUTTON_BOTTOM_MARGIN:F

.field private static final QR_BUTTON_FONT_COLOR:I

.field private static final QR_BUTTON_ICON_WIDTH:F

.field private static final QR_BUTTON_TEXT_BOTTOM_MARGIN:F

.field private static final QR_BUTTON_TEXT_FONT_SIZE:F

.field private static final QR_BUTTON_TEXT_LEFT_MARGIN:F

.field private static final QR_BUTTON_TEXT_PADDING:F

.field private static final QR_BUTTON_TEXT_RIGHT_MARGIN:F

.field private static final QR_BUTTON_TEXT_TOP_MARGIN:F

.field private static final QR_SHUTTER_BUTTON_MARGIN:F

.field private static final SCREEN_HEIGHT:F

.field private static final SCREEN_WIDTH:F

.field private static final TAG:Ljava/lang/String; = "QRCodeReader"


# instance fields
.field private mBinder:Lcom/samsung/android/app/qragent/service/IQRService;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mErrorToast:Landroid/widget/Toast;

.field private mFoundURL:Ljava/lang/String;

.field private mOrientation:I

.field private mQRButton:Lcom/samsung/android/glview/GLButton;

.field private mQRFoundText:Lcom/samsung/android/glview/GLText;

.field private mQRMsgHandler:Landroid/os/Handler;

.field private mQRSecureButton:Lcom/samsung/android/glview/GLButton;

.field private mQRSecureText:Lcom/samsung/android/glview/GLText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const v0, 0x7f09018f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->SCREEN_WIDTH:F

    .line 48
    const v0, 0x7f09018e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->SCREEN_HEIGHT:F

    .line 50
    const v0, 0x7f09018c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_FONT_SIZE:F

    .line 51
    const v0, 0x7f09018a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_LEFT_MARGIN:F

    .line 52
    const v0, 0x7f09018b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_RIGHT_MARGIN:F

    .line 53
    const v0, 0x7f09018d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_TOP_MARGIN:F

    .line 54
    const v0, 0x7f090189

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_BOTTOM_MARGIN:F

    .line 55
    sget v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_FONT_SIZE:F

    sput v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_PADDING:F

    .line 56
    const v0, 0x7f0c0024

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_FONT_COLOR:I

    .line 57
    const v0, 0x7f090188

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_ICON_WIDTH:F

    .line 58
    const v0, 0x7f090187

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_BOTTOM_MARGIN:F

    .line 59
    const v0, 0x7f090190

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_SHUTTER_BUTTON_MARGIN:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FF)V
    .locals 33
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    .line 108
    invoke-interface/range {p1 .. p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 61
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 66
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mOrientation:I

    .line 67
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mErrorToast:Landroid/widget/Toast;

    .line 68
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mFoundURL:Ljava/lang/String;

    .line 70
    new-instance v3, Lcom/sec/android/app/camera/widget/gl/QRCodeReader$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader$1;-><init>(Lcom/sec/android/app/camera/widget/gl/QRCodeReader;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRMsgHandler:Landroid/os/Handler;

    .line 83
    new-instance v3, Lcom/sec/android/app/camera/widget/gl/QRCodeReader$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader$2;-><init>(Lcom/sec/android/app/camera/widget/gl/QRCodeReader;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mConnection:Landroid/content/ServiceConnection;

    .line 109
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 110
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mOrientation:I

    .line 112
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f080198

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 113
    .local v9, "qrText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f080199

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 114
    .local v22, "qrSecureText":Ljava/lang/String;
    sget v3, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_FONT_SIZE:F

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {v9, v3, v4}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_PADDING:F

    add-float v7, v3, v4

    .line 115
    .local v7, "qrTextWidth":F
    sget v3, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_FONT_SIZE:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_PADDING:F

    add-float v8, v3, v4

    .line 116
    .local v8, "qrTextHeight":F
    sget v3, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_LEFT_MARGIN:F

    add-float/2addr v3, v7

    sget v4, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_RIGHT_MARGIN:F

    add-float v14, v3, v4

    .line 117
    .local v14, "qrButtonWidth":F
    sget v3, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_TOP_MARGIN:F

    add-float/2addr v3, v8

    sget v4, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_BOTTOM_MARGIN:F

    add-float v15, v3, v4

    .line 118
    .local v15, "qrButtonHeight":F
    sget v3, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_FONT_SIZE:F

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-static {v0, v3, v4}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_PADDING:F

    add-float v20, v3, v4

    .line 119
    .local v20, "qrSecureTextWidth":F
    sget v3, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_LEFT_MARGIN:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    add-float v27, v20, v3

    .line 121
    .local v27, "qrSecureButtonWidth":F
    new-instance v3, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget v10, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_FONT_SIZE:F

    sget v11, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_FONT_COLOR:I

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRFoundText:Lcom/samsung/android/glview/GLText;

    .line 122
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRFoundText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRFoundText:Lcom/samsung/android/glview/GLText;

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 125
    new-instance v10, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const v16, 0x7f02025e

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRButton:Lcom/samsung/android/glview/GLButton;

    .line 126
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRButton:Lcom/samsung/android/glview/GLButton;

    const v4, 0x7f02025f

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setNinePatchBackground(I)Z

    .line 127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRFoundText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRButton:Lcom/samsung/android/glview/GLButton;

    sget v4, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_LEFT_MARGIN:F

    sget v5, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_TOP_MARGIN:F

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setTextPosition(FF)V

    .line 129
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRFoundText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLText;->getCurrentRight()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRFoundText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLText;->getCurrentTop()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRFoundText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLText;->getHeight()F

    move-result v6

    sget v10, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_ICON_WIDTH:F

    sub-float/2addr v6, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v6, v10

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    .line 130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRButton:Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 131
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRButton:Lcom/samsung/android/glview/GLButton;

    new-instance v4, Lcom/sec/android/app/camera/widget/gl/QRCodeReader$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader$3;-><init>(Lcom/sec/android/app/camera/widget/gl/QRCodeReader;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 142
    new-instance v16, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    sget v23, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_FONT_SIZE:F

    sget v24, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_FONT_COLOR:I

    const/16 v25, 0x0

    move/from16 v21, v8

    invoke-direct/range {v16 .. v25}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRSecureText:Lcom/samsung/android/glview/GLText;

    .line 143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRSecureText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRSecureText:Lcom/samsung/android/glview/GLText;

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 147
    new-instance v23, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v28, v15

    invoke-direct/range {v23 .. v32}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRSecureButton:Lcom/samsung/android/glview/GLButton;

    .line 148
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRSecureButton:Lcom/samsung/android/glview/GLButton;

    const v4, 0x7f02025f

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setNinePatchBackground(I)Z

    .line 149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRSecureButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRSecureText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRSecureButton:Lcom/samsung/android/glview/GLButton;

    sget v4, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_LEFT_MARGIN:F

    sget v5, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_TEXT_TOP_MARGIN:F

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setTextPosition(FF)V

    .line 151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRSecureButton:Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 153
    cmpl-float v3, v14, v27

    if-lez v3, :cond_0

    .line 154
    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->SCREEN_WIDTH:F

    sub-float/2addr v4, v14

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->SCREEN_HEIGHT:F

    sub-float/2addr v5, v15

    sget v6, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_BOTTOM_MARGIN:F

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->setLeftTop(IFF)V

    .line 155
    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_SHUTTER_BUTTON_MARGIN:F

    sget v5, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_BOTTOM_MARGIN:F

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->SCREEN_HEIGHT:F

    sub-float/2addr v5, v14

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->setLeftTop(IFF)V

    .line 156
    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->SCREEN_WIDTH:F

    sub-float/2addr v4, v14

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v14

    sget v5, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_BOTTOM_MARGIN:F

    add-float/2addr v5, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->setLeftTop(IFF)V

    .line 157
    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->SCREEN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_SHUTTER_BUTTON_MARGIN:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_BOTTOM_MARGIN:F

    sub-float/2addr v4, v5

    sub-float/2addr v4, v15

    sget v5, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->SCREEN_HEIGHT:F

    sub-float/2addr v5, v14

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v5, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->setLeftTop(IFF)V

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRSecureButton:Lcom/samsung/android/glview/GLButton;

    sub-float v4, v14, v27

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    .line 166
    :goto_0
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->setRotatable(Z)V

    .line 167
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mOrientation:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->setOrientation(I)V

    .line 169
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRButton:Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 170
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRSecureButton:Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 171
    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->setVisibility(I)V

    .line 173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRSecureButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 175
    return-void

    .line 160
    :cond_0
    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->SCREEN_WIDTH:F

    sub-float v4, v4, v27

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->SCREEN_HEIGHT:F

    sub-float/2addr v5, v15

    sget v6, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_BOTTOM_MARGIN:F

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->setLeftTop(IFF)V

    .line 161
    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_SHUTTER_BUTTON_MARGIN:F

    sget v5, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_BOTTOM_MARGIN:F

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->SCREEN_HEIGHT:F

    sub-float v5, v5, v27

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->setLeftTop(IFF)V

    .line 162
    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->SCREEN_WIDTH:F

    sub-float v4, v4, v27

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float v4, v4, v27

    sget v5, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_BOTTOM_MARGIN:F

    add-float/2addr v5, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->setLeftTop(IFF)V

    .line 163
    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->SCREEN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_SHUTTER_BUTTON_MARGIN:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->QR_BUTTON_BOTTOM_MARGIN:F

    sub-float/2addr v4, v5

    sub-float/2addr v4, v15

    sget v5, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->SCREEN_HEIGHT:F

    sub-float v5, v5, v27

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v5, v5, v27

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->setLeftTop(IFF)V

    .line 164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRButton:Lcom/samsung/android/glview/GLButton;

    sub-float v4, v27, v14

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/gl/QRCodeReader;)Lcom/samsung/android/app/qragent/service/IQRService;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mBinder:Lcom/samsung/android/app/qragent/service/IQRService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/widget/gl/QRCodeReader;Lcom/samsung/android/app/qragent/service/IQRService;)Lcom/samsung/android/app/qragent/service/IQRService;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/QRCodeReader;
    .param p1, "x1"    # Lcom/samsung/android/app/qragent/service/IQRService;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mBinder:Lcom/samsung/android/app/qragent/service/IQRService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/gl/QRCodeReader;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mFoundURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/widget/gl/QRCodeReader;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/widget/gl/QRCodeReader;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/widget/gl/QRCodeReader;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->bindQRAgentService()V

    return-void
.end method

.method private bindQRAgentService()V
    .locals 4

    .prologue
    .line 226
    const-string v1, "QRCodeReader"

    const-string v2, "bindQRAgentService"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 229
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.app.qragent"

    const-string v2, "com.samsung.android.app.qragent.service.QRService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 232
    return-void
.end method

.method private isShowingQRErrorToast()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mErrorToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mErrorToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mErrorToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    :cond_0
    const/4 v0, 0x0

    .line 238
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRMsgHandler:Landroid/os/Handler;

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->hideQRErrorToast()V

    .line 184
    return-void
.end method

.method public hideQRButton()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 187
    const-string v0, "QRCodeReader"

    const-string v1, "hideQRButton"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRSecureButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 190
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 194
    :cond_0
    return-void
.end method

.method public hideQRErrorToast()V
    .locals 2

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->isShowingQRErrorToast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mErrorToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "QRCodeReader"

    const-string v1, "onQRErrorToast cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mErrorToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mErrorToast:Landroid/widget/Toast;

    .line 204
    :cond_0
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mFoundURL:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public showQRButton(Z)V
    .locals 5
    .param p1, "isSecure"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 211
    const-string v0, "QRCodeReader"

    const-string v1, "showQRButton"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->hideQRErrorToast()V

    .line 213
    if-eqz p1, :cond_1

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRSecureButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 218
    :goto_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRMsgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 223
    :cond_0
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->mQRButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto :goto_0
.end method
