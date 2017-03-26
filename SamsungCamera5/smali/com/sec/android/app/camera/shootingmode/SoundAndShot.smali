.class public Lcom/sec/android/app/camera/shootingmode/SoundAndShot;
.super Ljava/lang/Object;
.source "SoundAndShot.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;


# static fields
.field private static final INDICATOR_EQBAR_BAND_AND_MIC_PADDING:I

.field private static final INDICATOR_EQBAR_BAND_SPACING:I

.field private static final INDICATOR_EQBAR_BAND_WIDTH:I

.field private static final INDICATOR_EQBAR_MIC_WIDTH:I

.field private static final INDICATOR_EQBAR_POS_X_START:I

.field private static final INDICATOR_EQBAR_POS_Y:I

.field private static final INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

.field private static final NUM_OF_EQBAR:I = 0x14

.field private static final NUM_OF_EQ_LEVEL_MAX:I = 0xe

.field private static final PREIVEW_SQUARE_POS_X:I

.field private static final PREIVEW_SQUARE_WIDTH:I

.field private static final PREVIEW_NORMAL_HEIGHT:I

.field private static final PREVIEW_NORMAL_POS_X:I

.field private static final PREVIEW_NORMAL_WIDTH:I

.field private static final PREVIEW_WIDE_HEIGHT:I

.field private static final PREVIEW_WIDE_WIDTH:I

.field private static final PROGRESS_BAR_ADD_VOICE_HEIGHT:I

.field private static final PROGRESS_BAR_ADD_VOICE_POS_Y:I

.field private static final PROGRESS_BAR_ADD_VOICE_SEQ_SPACING:I

.field private static final PROGRESS_BAR_ADD_VOICE_SEQ_WIDTH:I

.field private static final PROGRESS_BAR_HEIGHT:I

.field private static final PROGRESS_BAR_MARGIN_0_180:I

.field private static final PROGRESS_BAR_MARGIN_90_270:I

.field private static final PROGRESS_BAR_SEQ_AND_TIMER_PADDING:I

.field private static final PROGRESS_BAR_SEQ_POS_Y:I

.field private static final PROGRESS_BAR_SEQ_SPACING:I

.field private static final PROGRESS_BAR_SEQ_WIDTH:I

.field private static final PROGRESS_BAR_WIDTH:I

.field private static final PROGRESS_GROUP_HEIGHT:I

.field private static final PROGRESS_GROUP_POS_BOTTOM_MARGIN_PORTRAIT:I

.field private static final PROGRESS_GROUP_WIDTH:I

.field private static final PROGRESS_TEXT_FONT_SIZE:I

.field private static final PROGRESS_TEXT_HEIGHT:I

.field private static final PROGRESS_TEXT_POS_Y:I

.field private static final PROGRESS_TEXT_STROKE_COLOR:I

.field private static final PROGRESS_TEXT_STROKE_WIDTH:I

.field private static final PROGRESS_TEXT_WIDTH:I

.field private static final RATIO_4_3_MARGIN:I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static SOUNDANDSHOT_SCREEN_ADD_VOICE:I = 0x0

.field private static SOUNDANDSHOT_SCREEN_PREVIEWING:I = 0x0

.field private static final SOUND_AND_SHOT_PROGRESS_BAR_TEXT_SHADOW_ENABLE:Z

.field private static final SOUND_RECORD_INDICATOR_UPDATE_DURATION:I = 0x32

.field private static final SOUND_RECORD_INDICATOR_UPDATE_TIMER:I = 0x1

.field private static SOUND_RECORD_MAX_PROGRESSBAR_COUNT:I = 0x0

.field private static final SOUND_RECORD_PROGRESS_INCREASE_DURATION:I = 0x3e8

.field private static final SOUND_RECORD_PROGRESS_INCREASE_TIMER:I = 0x3

.field private static final STOP_BUTTON_POS_X:I

.field private static final STOP_BUTTON_POS_Y:I

.field protected static final TAG:Ljava/lang/String; = "SoundAndShot"

.field private static final UPDATE_REC_MICIMAGE_MSG:I = 0x1


# instance fields
.field private RecordedTime:I

.field private eqBandList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLImage;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private final mEqValueArray:[I

.field private mFull:Z

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mMainHandler:Landroid/os/Handler;

.field private mMicImage:Lcom/samsung/android/glview/GLImage;

.field private final mMicImageArray:[I

.field private mProgessBarSeqFullImage:I

.field private mProgessBarSeqImage:I

.field private mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mProgressText:Lcom/samsung/android/glview/GLText;

.field private mRecAddVoiceProgressBar:Lcom/samsung/android/glview/GLViewGroup;

.field private mRecAddVoiceProgressBarBG:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLImage;",
            ">;"
        }
    .end annotation
.end field

.field private mRecAddVoiceProgressBarSeq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLImage;",
            ">;"
        }
    .end annotation
.end field

.field private mRecIndicatorHandler:Landroid/os/Handler;

.field private mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

.field private mRecProgressBarBG:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLImage;",
            ">;"
        }
    .end annotation
.end field

.field private mRecProgressBarSeq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLImage;",
            ">;"
        }
    .end annotation
.end field

.field private mRecTimerIMG:Lcom/samsung/android/glview/GLImage;

.field private mRecordProgressCounter:I

.field private mRecording:Z

.field private mReviewImage:Lcom/samsung/android/glview/GLImage;

.field private mReviewImageBackground:Lcom/samsung/android/glview/GLNinePatch;

.field private mReviewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mSoundAndShotAddVoice:Lcom/samsung/android/glview/GLViewGroup;

.field private mSoundAndShotMode:I

.field private mSoundAndShotScreen:I

.field private mSoundAndShotSeq:Lcom/samsung/android/glview/GLViewGroup;

.field private mUpdateCnt:I

.field private qar:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

.field private rec_audio:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const v3, 0x7f09015b

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 68
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    .line 69
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    .line 70
    const v0, 0x7f09024c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_WIDTH:I

    .line 71
    const v0, 0x7f09024b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_SPACING:I

    .line 72
    const v0, 0x7f090249

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_AND_TIMER_PADDING:I

    .line 73
    const v0, 0x7f09024a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_POS_Y:I

    .line 74
    const v0, 0x7f090246

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_HEIGHT:I

    .line 75
    const v0, 0x7f090247

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_MARGIN_0_180:I

    .line 76
    const v0, 0x7f090248

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_MARGIN_90_270:I

    .line 77
    const v0, 0x7f0900ed

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->RATIO_4_3_MARGIN:I

    .line 78
    const v0, 0x7f090152

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    .line 81
    const v0, 0x7f090241

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_WIDTH:I

    .line 82
    const v0, 0x7f090240

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_HEIGHT:I

    .line 83
    const v0, 0x7f09023b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_POS_BOTTOM_MARGIN_PORTRAIT:I

    .line 84
    const v0, 0x7f09020a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->STOP_BUTTON_POS_X:I

    .line 85
    const v0, 0x7f09020b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->STOP_BUTTON_POS_Y:I

    .line 86
    const v0, 0x7f090239

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_POS_X_START:I

    .line 87
    const v0, 0x7f09023a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_POS_Y:I

    .line 88
    const v0, 0x7f090237

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_BAND_WIDTH:I

    .line 89
    const v0, 0x7f090236

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_BAND_SPACING:I

    .line 90
    const v0, 0x7f090235

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_BAND_AND_MIC_PADDING:I

    .line 91
    const v0, 0x7f090238

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_MIC_WIDTH:I

    .line 92
    const v0, 0x7f09023d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_ADD_VOICE_POS_Y:I

    .line 93
    const v0, 0x7f09023c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_ADD_VOICE_HEIGHT:I

    .line 94
    const v0, 0x7f09023f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_ADD_VOICE_SEQ_WIDTH:I

    .line 95
    const v0, 0x7f09023e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_ADD_VOICE_SEQ_SPACING:I

    .line 96
    const v0, 0x7f090244

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_POS_Y:I

    .line 97
    const v0, 0x7f090242

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_FONT_SIZE:I

    .line 98
    const v0, 0x7f090245

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_WIDTH:I

    .line 99
    const v0, 0x7f090243

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_HEIGHT:I

    .line 100
    const v0, 0x7f0a0023

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_STROKE_WIDTH:I

    .line 101
    const v0, 0x7f0c0010

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_STROKE_COLOR:I

    .line 102
    const v0, 0x7f09015e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PREVIEW_WIDE_WIDTH:I

    .line 103
    const v0, 0x7f09015d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PREVIEW_WIDE_HEIGHT:I

    .line 104
    const v0, 0x7f090148

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PREVIEW_NORMAL_POS_X:I

    .line 105
    const v0, 0x7f09015c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PREVIEW_NORMAL_WIDTH:I

    .line 106
    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PREVIEW_NORMAL_HEIGHT:I

    .line 107
    const v0, 0x7f09024d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PREIVEW_SQUARE_POS_X:I

    .line 108
    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PREIVEW_SQUARE_WIDTH:I

    .line 109
    const v0, 0x7f0a0056

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUND_AND_SHOT_PROGRESS_BAR_TEXT_SHADOW_ENABLE:Z

    .line 115
    const/16 v0, 0x9

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUND_RECORD_MAX_PROGRESSBAR_COUNT:I

    .line 116
    sget v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUND_RECORD_MAX_PROGRESSBAR_COUNT:I

    mul-int/2addr v0, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_SPACING:I

    sget v4, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUND_RECORD_MAX_PROGRESSBAR_COUNT:I

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_WIDTH:I

    .line 117
    sput v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUNDANDSHOT_SCREEN_PREVIEWING:I

    .line 118
    sput v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUNDANDSHOT_SCREEN_ADD_VOICE:I

    return-void

    :cond_0
    move v0, v2

    .line 109
    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 3
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEqValueArray:[I

    .line 129
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMicImageArray:[I

    .line 130
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 132
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 133
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 137
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->rec_audio:[B

    .line 138
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z

    .line 139
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->RecordedTime:I

    .line 140
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mFull:Z

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarBG:Ljava/util/ArrayList;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarSeq:Ljava/util/ArrayList;

    .line 148
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    .line 149
    sget v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUNDANDSHOT_SCREEN_PREVIEWING:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    .line 150
    const v0, 0x7f020280

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgessBarSeqImage:I

    .line 151
    const v0, 0x7f020281

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgessBarSeqFullImage:I

    .line 152
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecordProgressCounter:I

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarBG:Ljava/util/ArrayList;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarSeq:Ljava/util/ArrayList;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->eqBandList:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;-><init>(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMainHandler:Landroid/os/Handler;

    .line 197
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mUpdateCnt:I

    .line 198
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 199
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$2;-><init>(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 226
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$3;-><init>(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecIndicatorHandler:Landroid/os/Handler;

    .line 239
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 240
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 241
    return-void

    .line 123
    :array_0
    .array-data 4
        0x7f020265
        0x7f020266
        0x7f020267
        0x7f020268
        0x7f020269
        0x7f02026a
        0x7f02026b
        0x7f02026c
        0x7f02026d
        0x7f02026e
        0x7f02026f
        0x7f020270
        0x7f020271
        0x7f020272
        0x7f020273
    .end array-data

    .line 129
    :array_1
    .array-data 4
        0x7f020274
        0x7f020275
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    .prologue
    .line 66
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUNDANDSHOT_SCREEN_PREVIEWING:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setRecordProgressIncreased()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SoundAndShot;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setHRMsensor(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecIndicatorHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    .prologue
    .line 66
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mUpdateCnt:I

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SoundAndShot;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mUpdateCnt:I

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMicImageArray:[I

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)Lcom/samsung/android/glview/GLImage;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMicImage:Lcom/samsung/android/glview/GLImage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->qar:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SoundAndShot;
    .param p1, "x1"    # [I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setAudioRecordIndicatorlevel([I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->updateRecordingAmplevel()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SoundAndShot;
    .param p1, "x1"    # [I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setRecoringAmplitude([I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    .prologue
    .line 66
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->RecordedTime:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SoundAndShot;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->RecordedTime:I

    return p1
.end method

.method static synthetic access$608(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    .prologue
    .line 66
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->RecordedTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->RecordedTime:I

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUND_RECORD_MAX_PROGRESSBAR_COUNT:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mFull:Z

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SoundAndShot;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mFull:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SoundAndShot;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setProgressBar(IZ)V

    return-void
.end method

.method private addAudio(Ljava/lang/String;)V
    .locals 2
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 699
    const-string v0, "SoundAndShot"

    const-string v1, "addAudio"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->qar:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->getRecordedAudioStream()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->rec_audio:[B

    .line 701
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->rec_audio:[B

    invoke-static {p1, v0}, Lcom/sec/android/secvision/sef/SEF;->saveAudioJPEG(Ljava/lang/String;[B)I

    move-result v0

    if-gez v0, :cond_0

    .line 702
    const-string v0, "SoundAndShot"

    const-string v1, "Error while addAudio"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->stopSoundRecording()V

    .line 705
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->soundAndShotAddVoiceCompleted()V

    .line 706
    return-void
.end method

.method private hideProgressBar()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 709
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUND_RECORD_MAX_PROGRESSBAR_COUNT:I

    if-ge v0, v1, :cond_0

    .line 710
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarBG:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 711
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 709
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 713
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecTimerIMG:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 714
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 715
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 716
    :cond_1
    return-void
.end method

.method private hideSoundRecordProgressBar()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 719
    const-string v0, "SoundAndShot"

    const-string v1, "hideSoundRecordProgressBar"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 722
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 723
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 725
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 726
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->setVisibility(I)V

    .line 728
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecordProgressCounter:I

    .line 729
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 732
    :cond_0
    return-void
.end method

.method private initAddVoice()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 735
    const-string v0, "SoundAndShot"

    const-string v1, "initAddVoice"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_POS_BOTTOM_MARGIN_PORTRAIT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 737
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 739
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_POS_BOTTOM_MARGIN_PORTRAIT:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 742
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->qar:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    .line 743
    return-void
.end method

.method private isAddVoiceScreen()Z
    .locals 2

    .prologue
    .line 746
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    sget v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUNDANDSHOT_SCREEN_ADD_VOICE:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRecorded()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 759
    const-string v1, "SoundAndShot"

    const-string v2, "isRecorded"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    if-nez v1, :cond_0

    .line 761
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->qar:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->getRecordedAudioStream()[B

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->rec_audio:[B

    .line 762
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->rec_audio:[B

    if-eqz v1, :cond_1

    .line 767
    :cond_0
    :goto_0
    return v0

    .line 765
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSoundScene(Ljava/lang/String;)Z
    .locals 5
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 244
    const-string v3, "SoundAndShot"

    const-string v4, "isSoundScene"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    if-nez p0, :cond_1

    .line 247
    const-string v3, "SoundAndShot"

    const-string v4, "filepath is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    :goto_0
    return v2

    .line 250
    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEF;->isSEFFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 251
    const/16 v2, 0x800

    invoke-static {p0, v2}, Lcom/sec/android/secvision/sef/SEF;->hasDataType(Ljava/lang/String;I)Z

    move-result v2

    goto :goto_0

    .line 253
    :cond_2
    const/4 v1, 0x0

    .line 255
    .local v1, "qdioData":Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;
    :try_start_0
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEF;->checkAudioInJPEG(Ljava/lang/String;)Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 259
    :goto_1
    if-eqz v1, :cond_0

    .line 260
    const/4 v2, 0x1

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private resetManualMode()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 771
    const-string v1, "SoundAndShot"

    const-string v2, "resetManualMode"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecordProgressCounter:I

    .line 776
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_0

    .line 777
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressText:Lcom/samsung/android/glview/GLText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecordProgressCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUND_RECORD_MAX_PROGRESSBAR_COUNT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0801d7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 780
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 781
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 782
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 785
    :cond_1
    const/16 v1, 0xb

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 786
    .local v0, "MicAmplitude":[I
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setRecoringAmplitude([I)V

    .line 788
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v5}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 789
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v5}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 790
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_2

    .line 791
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v5}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 792
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->rec_audio:[B

    .line 794
    sget v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUNDANDSHOT_SCREEN_PREVIEWING:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->switchScreen(I)V

    .line 795
    return-void

    .line 785
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private saveAudio(Ljava/lang/String;)V
    .locals 3
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 798
    const-string v0, "SoundAndShot"

    const-string v1, "saveAudio"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->rec_audio:[B

    invoke-static {p1, v0}, Lcom/sec/android/secvision/sef/SEF;->saveAudioJPEG(Ljava/lang/String;[B)I

    move-result v0

    if-gez v0, :cond_0

    .line 800
    const-string v0, "SoundAndShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while addAudio"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->soundAndShotAddVoiceCompleted()V

    .line 803
    return-void
.end method

.method private setAudioRecordIndicator(Z)V
    .locals 2
    .param p1, "isAudioRecording"    # Z

    .prologue
    .line 806
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    if-nez v0, :cond_0

    .line 816
    :goto_0
    return-void

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->setRecoring()V

    .line 811
    if-eqz p1, :cond_1

    .line 812
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->setVisibility(I)V

    goto :goto_0

    .line 814
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->setVisibility(I)V

    goto :goto_0
.end method

.method private setAudioRecordIndicatorlevel([I)V
    .locals 1
    .param p1, "MicAmplitude"    # [I

    .prologue
    .line 819
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    if-nez v0, :cond_0

    .line 822
    :goto_0
    return-void

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->setRecoringAmplitude([I)V

    goto :goto_0
.end method

.method private setHRMsensor(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 825
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_HEART_RATE_SENSOR_SHUTTER:Z

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 827
    if-eqz p1, :cond_1

    .line 828
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerHRMShutterListener(Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;)V

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 830
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterHRMShutterListener()V

    goto :goto_0
.end method

.method private setProgressBar(I)V
    .locals 2
    .param p1, "time"    # I

    .prologue
    .line 837
    if-lez p1, :cond_0

    .line 838
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarSeq:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgessBarSeqImage:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 841
    :cond_0
    sget v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUND_RECORD_MAX_PROGRESSBAR_COUNT:I

    if-ge p1, v0, :cond_1

    .line 842
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgessBarSeqFullImage:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 843
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 845
    :cond_1
    return-void
.end method

.method private setProgressBar(IZ)V
    .locals 3
    .param p1, "time"    # I
    .param p2, "full"    # Z

    .prologue
    .line 848
    if-nez p2, :cond_2

    .line 849
    if-lez p1, :cond_0

    .line 850
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarSeq:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgessBarSeqImage:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 852
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgessBarSeqFullImage:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 853
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 862
    :cond_1
    return-void

    .line 855
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUND_RECORD_MAX_PROGRESSBAR_COUNT:I

    if-ge v0, v1, :cond_1

    .line 856
    if-ne v0, p1, :cond_3

    .line 857
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgessBarSeqFullImage:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 855
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 859
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgessBarSeqImage:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto :goto_1
.end method

.method private setRecordProgressIncreased()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 866
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v1, :cond_1

    .line 867
    :cond_0
    const-string v1, "SoundAndShot"

    const-string v2, "setRecordProgressIncreased - Handler or Context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :goto_0
    return-void

    .line 871
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecordProgressCounter:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUND_RECORD_MAX_PROGRESSBAR_COUNT:I

    if-gt v1, v2, :cond_3

    .line 872
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecordProgressCounter:I

    add-int/lit8 v0, v1, 0x1

    .line 873
    .local v0, "progressCountForDisplay":I
    sget v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUND_RECORD_MAX_PROGRESSBAR_COUNT:I

    if-gt v0, v1, :cond_2

    .line 874
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressText:Lcom/samsung/android/glview/GLText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    sget v5, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUND_RECORD_MAX_PROGRESSBAR_COUNT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0801d7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 877
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecordProgressCounter:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setProgressBar(I)V

    .line 880
    .end local v0    # "progressCountForDisplay":I
    :cond_3
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecordProgressCounter:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUND_RECORD_MAX_PROGRESSBAR_COUNT:I

    if-le v1, v2, :cond_4

    .line 882
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecordProgressCounter:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setProgressBar(I)V

    .line 884
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 886
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->soundAndshotAddVoiceRecordingFinished()V

    goto :goto_0

    .line 890
    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecordProgressCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecordProgressCounter:I

    .line 891
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v8, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method private setRecoringAmplitude([I)V
    .locals 6
    .param p1, "MicAmplitude"    # [I

    .prologue
    const/16 v4, 0xe

    const/16 v5, 0x14

    .line 896
    new-array v0, v5, [I

    .line 897
    .local v0, "EqBandLevel":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 898
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 897
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 901
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_5

    .line 902
    div-int/lit8 v2, v1, 0x2

    aget v2, p1, v2

    if-le v2, v4, :cond_1

    .line 903
    div-int/lit8 v2, v1, 0x2

    aput v4, p1, v2

    .line 905
    :cond_1
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_2

    .line 906
    div-int/lit8 v2, v1, 0x2

    aget v2, p1, v2

    aput v2, v0, v1

    .line 901
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 908
    :cond_2
    div-int/lit8 v2, v1, 0x2

    aget v2, p1, v2

    if-eqz v2, :cond_3

    div-int/lit8 v2, v1, 0x2

    aget v2, p1, v2

    if-ne v2, v4, :cond_4

    .line 909
    :cond_3
    div-int/lit8 v2, v1, 0x2

    aget v2, p1, v2

    aput v2, v0, v1

    goto :goto_2

    .line 911
    :cond_4
    div-int/lit8 v2, v1, 0x2

    aget v2, p1, v2

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    goto :goto_2

    .line 916
    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v5, :cond_6

    .line 917
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEqValueArray:[I

    aget v4, v0, v1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 918
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 916
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 921
    :cond_6
    return-void
.end method

.method private setReviewImage(Landroid/graphics/Bitmap;IZ)V
    .locals 11
    .param p1, "data"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I
    .param p3, "is_front_camera"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 924
    const-string v0, "SoundAndShot"

    const-string v1, "showReviewImage"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 928
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    .line 930
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImageBackground:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    .line 931
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImageBackground:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->clear()V

    .line 932
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImageBackground:Lcom/samsung/android/glview/GLNinePatch;

    .line 935
    :cond_1
    if-eqz p3, :cond_3

    const/16 v0, 0x5a

    if-eq p2, v0, :cond_2

    const/16 v0, 0x10e

    if-ne p2, v0, :cond_3

    .line 936
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v0

    if-nez v0, :cond_3

    .line 937
    const/16 v0, 0xb4

    invoke-static {p1, v0, v10}, Lcom/sec/android/app/camera/util/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 941
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isWidePreviewAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 942
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isDeviceScreenWideRatio()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 943
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    .line 952
    :goto_0
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PREVIEW_WIDE_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PREVIEW_NORMAL_HEIGHT:I

    int-to-float v5, v3

    const v6, 0x7f02025d

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImageBackground:Lcom/samsung/android/glview/GLNinePatch;

    .line 953
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImageBackground:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 954
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 956
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v10}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 957
    return-void

    .line 945
    :cond_4
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PREVIEW_WIDE_HEIGHT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PREVIEW_WIDE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PREVIEW_WIDE_HEIGHT:I

    int-to-float v5, v5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    goto :goto_0

    .line 946
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSquarePreviewAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 947
    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    sget v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PREIVEW_SQUARE_POS_X:I

    int-to-float v5, v0

    sget v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PREIVEW_SQUARE_WIDTH:I

    int-to-float v7, v0

    sget v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PREIVEW_SQUARE_WIDTH:I

    int-to-float v8, v0

    move v6, v2

    move-object v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    goto :goto_0

    .line 949
    :cond_6
    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    sget v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PREVIEW_NORMAL_POS_X:I

    int-to-float v5, v0

    sget v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PREVIEW_NORMAL_WIDTH:I

    int-to-float v7, v0

    sget v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PREVIEW_NORMAL_HEIGHT:I

    int-to-float v8, v0

    move v6, v2

    move-object v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    goto/16 :goto_0
.end method

.method private setSoundAndShotType(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 977
    const-string v0, "SoundAndShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SoundAndShotMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    .line 980
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    if-nez v0, :cond_0

    .line 981
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->updateLayoutForRatio()V

    .line 982
    sget v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUNDANDSHOT_SCREEN_PREVIEWING:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->switchScreen(I)V

    .line 983
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->startSoundRecording()V

    .line 988
    :goto_0
    return-void

    .line 985
    :cond_0
    sget v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUNDANDSHOT_SCREEN_ADD_VOICE:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->switchScreen(I)V

    .line 986
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->stopSoundRecording()V

    goto :goto_0
.end method

.method private showProgressBar()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 991
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUND_RECORD_MAX_PROGRESSBAR_COUNT:I

    if-ge v0, v1, :cond_0

    .line 992
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarBG:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 991
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 994
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecTimerIMG:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 995
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 996
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 997
    :cond_1
    return-void
.end method

.method private showSoundRecordProgress()V
    .locals 2

    .prologue
    .line 1000
    const-string v0, "SoundAndShot"

    const-string v1, "showSoundRecordProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1004
    :cond_0
    return-void
.end method

.method private soundAndShotAddVoiceCompleted()V
    .locals 6

    .prologue
    .line 1007
    const-string v1, "SoundAndShot"

    const-string v2, "soundAndShotAddVoiceCompleted()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->captureCompleted()V

    .line 1011
    const-string v1, "SoundAndShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DB update : getLastContentData().getFilePath() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/util/ContentData;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/ContentData;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v1, v2, v4, v5}, Lcom/sec/android/app/camera/util/ImageUtils;->updatePostSavingFile(Landroid/content/ContentResolver;Landroid/net/Uri;J)V

    .line 1014
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.MTP.OBJECT_PROP_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1015
    .local v0, "action":Landroid/content/Intent;
    const-string v1, "Path"

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/ContentData;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1016
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1017
    return-void
.end method

.method private soundAndshotAddVoiceRecordingFinished()V
    .locals 2

    .prologue
    .line 1020
    const-string v0, "SoundAndShot"

    const-string v1, "soundAndshotAddVoiceRecordingFinished()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->isSoundScene(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->addAudio(Ljava/lang/String;)V

    .line 1026
    :cond_0
    return-void
.end method

.method private soundAndshotAddVoiceRecordingPaused()V
    .locals 2

    .prologue
    .line 1029
    const-string v0, "SoundAndShot"

    const-string v1, "soundAndshotAddVoiceRecordingPaused()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->isSoundScene(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1032
    const-string v0, "SoundAndShot"

    const-string v1, "the sound file is not stored. store it again"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->stopSoundRecordingByExternalEvent(Ljava/lang/String;)V

    .line 1036
    :cond_0
    return-void
.end method

.method private startMicAnimation()V
    .locals 2

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecIndicatorHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecIndicatorHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1042
    :cond_0
    return-void
.end method

.method private startRecordingByCreateButton()V
    .locals 2

    .prologue
    .line 1045
    const-string v0, "SoundAndShot"

    const-string v1, "startRecordingByCreateButton"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->startSoundRecording()V

    .line 1047
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->showSoundRecordProgress()V

    .line 1048
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->startMicAnimation()V

    .line 1049
    return-void
.end method

.method private startSoundRecording()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1052
    const-string v0, "SoundAndShot"

    const-string v1, "startSoundRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z

    if-eqz v0, :cond_0

    .line 1054
    const-string v0, "SoundAndShot"

    const-string v1, "startSoundRecording : already recording"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :goto_0
    return-void

    .line 1058
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_1

    .line 1059
    const-string v0, "SoundAndShot"

    const-string v1, "Error occurred"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1062
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/RestrictionPolicyUtil;->isAudioRecordRestricted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1063
    const-string v0, "SoundAndShot"

    const-string v1, "Audio record not allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1068
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->qar:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->startRecorder()V

    .line 1069
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z

    .line 1071
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isMicrophonePlugged()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1072
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0801aa

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1075
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    sget v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUNDANDSHOT_SCREEN_PREVIEWING:I

    if-ne v0, v1, :cond_4

    .line 1076
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->disableAlertSound(Landroid/content/Context;)V

    .line 1077
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.camera.DISABLE_VIBRATOR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1078
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setAudioRecordIndicator(Z)V

    .line 1079
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->updateRecordingAmplevel()V

    .line 1080
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->showProgressBar()V

    .line 1081
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 1083
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1084
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->updateRecordingAmplevel()V

    .line 1085
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setRecordProgressIncreased()V

    goto :goto_0
.end method

.method private stopMicAnimation()V
    .locals 2

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecIndicatorHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecIndicatorHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1093
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mUpdateCnt:I

    .line 1094
    return-void
.end method

.method private stopSoundRecording()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1097
    const-string v0, "SoundAndShot"

    const-string v1, "stopSoundRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    sget v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUNDANDSHOT_SCREEN_PREVIEWING:I

    if-ne v0, v1, :cond_0

    .line 1099
    const-string v0, "SoundAndShot"

    const-string v1, "stopSoundRecording : not recording state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    :goto_0
    return-void

    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_1

    .line 1104
    const-string v0, "SoundAndShot"

    const-string v1, "Error occurred"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1107
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->qar:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->stopRecorder()V

    .line 1108
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z

    .line 1110
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    sget v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUNDANDSHOT_SCREEN_PREVIEWING:I

    if-ne v0, v1, :cond_2

    .line 1111
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->RecordedTime:I

    .line 1112
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mFull:Z

    .line 1113
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->RecordedTime:I

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mFull:Z

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setProgressBar(IZ)V

    .line 1114
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->enableAlertSound(Landroid/content/Context;)V

    .line 1115
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.camera.ENABLE_VIBRATOR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1116
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setAudioRecordIndicator(Z)V

    .line 1120
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 1121
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1122
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1125
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    sget v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUNDANDSHOT_SCREEN_PREVIEWING:I

    if-ne v0, v1, :cond_4

    .line 1126
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->hideProgressBar()V

    goto :goto_0

    .line 1128
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->hideSoundRecordProgressBar()V

    .line 1129
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->resetManualMode()V

    .line 1131
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->enableAlertSound(Landroid/content/Context;)V

    .line 1132
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.camera.ENABLE_VIBRATOR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private stopSoundRecordingByExternalEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 1137
    const-string v0, "SoundAndShot"

    const-string v1, "stopSoundRecrodingByExternalEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    if-nez p1, :cond_1

    .line 1139
    const-string v0, "SoundAndShot"

    const-string v1, "stopSoundRecrodingByExternalEvent filepath is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :cond_0
    :goto_0
    return-void

    .line 1142
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->qar:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->getRecordedAudioStream()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->rec_audio:[B

    .line 1143
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->rec_audio:[B

    invoke-static {p1, v0}, Lcom/sec/android/secvision/sef/SEF;->saveAudioJPEG(Ljava/lang/String;[B)I

    move-result v0

    if-gez v0, :cond_0

    .line 1144
    const-string v0, "SoundAndShot"

    const-string v1, "Error stopSoundRecrodingByExternalEvent while saveAudioJPEG"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private switchScreen(I)V
    .locals 5
    .param p1, "screen"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 1149
    const-string v0, "SoundAndShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchScreen : screen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    .line 1153
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    sget v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUNDANDSHOT_SCREEN_PREVIEWING:I

    if-ne v0, v1, :cond_1

    .line 1154
    const-string v0, "SoundAndShot"

    const-string v1, "switchScreen()- It will show normal menu"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotSeq:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1156
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotAddVoice:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1157
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1164
    :cond_0
    :goto_0
    return-void

    .line 1158
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    sget v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUNDANDSHOT_SCREEN_ADD_VOICE:I

    if-ne v0, v1, :cond_0

    .line 1159
    const-string v0, "SoundAndShot"

    const-string v1, "switchScreen()- It will show addvoice menu"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotSeq:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1161
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotAddVoice:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateLayoutForRatio()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 1171
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_0

    .line 1172
    const-string v0, "SoundAndShot"

    const-string v1, "Error occurred"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    :goto_0
    return-void

    .line 1176
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    if-nez v0, :cond_2

    .line 1177
    const-string v0, "SoundAndShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLayoutForRatio(), SoundAndShotMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isDeviceScreenWideRatio()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1180
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_WIDTH:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v5

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->RATIO_4_3_MARGIN:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_MARGIN_0_180:I

    sget v4, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_HEIGHT:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1182
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->RATIO_4_3_MARGIN:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_MARGIN_0_180:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v7, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1188
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout(Z)V

    goto :goto_0

    .line 1185
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_WIDTH:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v5

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_MARGIN_0_180:I

    sget v4, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_HEIGHT:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1186
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_MARGIN_0_180:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v7, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    goto :goto_1

    .line 1190
    :cond_2
    const-string v0, "SoundAndShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLayoutForRatio(), SoundAndShotMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isDeviceScreenWideRatio()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1193
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v5

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->RATIO_4_3_MARGIN:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v5

    invoke-virtual {v0, v6, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1194
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->RATIO_4_3_MARGIN:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_HEIGHT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-virtual {v0, v7, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1201
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    .line 1197
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v5

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v5

    invoke-virtual {v0, v6, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1198
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_HEIGHT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-virtual {v0, v7, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    goto :goto_2
.end method

.method private updateRecordingAmplevel()V
    .locals 4

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1207
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1208
    :cond_0
    return-void
.end method


# virtual methods
.method public getMaxFileSizeOfImage()J
    .locals 2

    .prologue
    .line 270
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isCapturing()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->isAddVoiceScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZoomAvailable()Z
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x1

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 5
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x3

    .line 285
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 287
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 288
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "camera.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    const-string v1, "camera.action.COVER_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    const-string v1, "camera.action.COVER_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 293
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 294
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v1, :cond_2

    .line 295
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    .line 299
    :goto_0
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_HEART_RATE_SENSOR_SHUTTER:Z

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 301
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerHRMShutterListener(Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;)V

    .line 318
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 320
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestTransientAudioFocus()V

    .line 322
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 323
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->sendOrientationInfotoHAL()V

    .line 325
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    if-nez v1, :cond_1

    .line 326
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->startSoundRecording()V

    .line 328
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->updateLayoutForRatio()V

    .line 329
    return-void

    .line 297
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v2, v4, [I

    fill-array-data v2, :array_1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    goto :goto_0

    .line 305
    :cond_3
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FLASH:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v1, :cond_4

    .line 306
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    goto :goto_1

    .line 308
    :cond_4
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FLASH:Z

    if-eqz v1, :cond_5

    .line 309
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    goto :goto_1

    .line 311
    :cond_5
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v1, :cond_6

    .line 312
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    goto :goto_1

    .line 315
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v2, v4, [I

    fill-array-data v2, :array_5

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    goto :goto_1

    .line 295
    nop

    :array_0
    .array-data 4
        0xc
        0x4d
        0x4
    .end array-data

    .line 297
    :array_1
    .array-data 4
        0x4d
        0x4
    .end array-data

    .line 306
    :array_2
    .array-data 4
        0xc
        0x3
        0x4d
        0x4
    .end array-data

    .line 309
    :array_3
    .array-data 4
        0x3
        0x4d
        0x4
    .end array-data

    .line 312
    :array_4
    .array-data 4
        0xc
        0x4d
        0x4
    .end array-data

    .line 315
    :array_5
    .array-data 4
        0x4d
        0x4
    .end array-data
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public onChangeShootingModeParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V
    .locals 0
    .param p1, "parameters"    # Lcom/sec/android/seccamera/SecCamera$Parameters;

    .prologue
    .line 339
    return-void
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 2
    .param p1, "v"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 344
    const-string v0, "SoundAndShot"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    const-string v0, "SoundAndShot"

    const-string v1, "mCaptureStopButton onClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 350
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->soundAndshotAddVoiceRecordingFinished()V

    .line 352
    const/4 v0, 0x1

    .line 354
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 14
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 359
    const-string v1, "SoundAndShot"

    const-string v2, "SoundAndShot"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 362
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSoundAndShotMode()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    .line 363
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v6

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotSeq:Lcom/samsung/android/glview/GLViewGroup;

    .line 364
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v2, v3

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_MARGIN_0_180:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_HEIGHT:I

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    int-to-float v4, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_WIDTH:I

    int-to-float v5, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_HEIGHT:I

    int-to-float v6, v2

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    .line 366
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 367
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setBypassTouch(Z)V

    .line 368
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isDeviceScreenWideRatio()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->RATIO_4_3_MARGIN:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_MARGIN_0_180:I

    sget v6, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_HEIGHT:I

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 372
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->RATIO_4_3_MARGIN:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_MARGIN_0_180:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 378
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_MARGIN_90_270:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 379
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x3

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_MARGIN_90_270:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_WIDTH:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 381
    const/4 v12, 0x0

    .local v12, "progressSeqPosX":I
    const/4 v13, 0x0

    .line 382
    .local v13, "timerPosX":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    sget v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUND_RECORD_MAX_PROGRESSBAR_COUNT:I

    if-ge v10, v1, :cond_3

    .line 384
    if-nez v10, :cond_1

    .line 385
    const/4 v12, 0x0

    .line 393
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarBG:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    int-to-float v3, v12

    sget v4, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f020282

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarBG:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 395
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarBG:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 397
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarSeq:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    int-to-float v3, v12

    sget v4, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_POS_Y:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgessBarSeqImage:I

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 399
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 382
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 375
    .end local v10    # "i":I
    .end local v12    # "progressSeqPosX":I
    .end local v13    # "timerPosX":I
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_MARGIN_0_180:I

    sget v6, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_HEIGHT:I

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 376
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_MARGIN_0_180:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    goto/16 :goto_0

    .line 386
    .restart local v10    # "i":I
    .restart local v12    # "progressSeqPosX":I
    .restart local v13    # "timerPosX":I
    :cond_1
    const/16 v1, 0x8

    if-ne v10, v1, :cond_2

    .line 387
    sget v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_WIDTH:I

    add-int/2addr v1, v12

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_SPACING:I

    add-int v12, v1, v2

    .line 388
    sget v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_WIDTH:I

    add-int/2addr v1, v12

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_AND_TIMER_PADDING:I

    add-int v13, v1, v2

    goto/16 :goto_2

    .line 390
    :cond_2
    sget v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_WIDTH:I

    add-int/2addr v1, v12

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_SPACING:I

    add-int v12, v1, v2

    goto/16 :goto_2

    .line 402
    :cond_3
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    int-to-float v2, v13

    const/4 v3, 0x0

    const v4, 0x7f020276

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecTimerIMG:Lcom/samsung/android/glview/GLImage;

    .line 403
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecTimerIMG:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 404
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecTimerIMG:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 405
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 407
    new-instance v1, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    .line 408
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->setClipping(Z)V

    .line 409
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->setVisibility(I)V

    .line 411
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotSeq:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 412
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotSeq:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 414
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotSeq:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 420
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v6

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotAddVoice:Lcom/samsung/android/glview/GLViewGroup;

    .line 422
    new-instance v1, Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->STOP_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->STOP_BUTTON_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f020109

    const v6, 0x7f02010a

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    .line 424
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 425
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080142

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 426
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 427
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 428
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, p0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 429
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setFocusable(Z)V

    .line 430
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 431
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 433
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v2, v3

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_HEIGHT:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v2, v4

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_WIDTH:I

    int-to-float v5, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v6, v2

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 435
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 436
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 438
    const/4 v9, 0x0

    .local v9, "eqBarPosX":I
    const/4 v11, 0x0

    .line 439
    .local v11, "micPosX":I
    const/4 v10, 0x0

    :goto_3
    const/16 v1, 0x14

    if-ge v10, v1, :cond_6

    .line 440
    if-nez v10, :cond_4

    .line 441
    sget v9, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_POS_X_START:I

    .line 448
    :goto_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->eqBandList:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    int-to-float v3, v9

    sget v4, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f020265

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 439
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 442
    :cond_4
    const/16 v1, 0xa

    if-ne v10, v1, :cond_5

    .line 443
    sget v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_BAND_WIDTH:I

    add-int/2addr v1, v9

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_BAND_AND_MIC_PADDING:I

    add-int v11, v1, v2

    .line 444
    sget v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_MIC_WIDTH:I

    add-int/2addr v1, v11

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_BAND_AND_MIC_PADDING:I

    add-int v9, v1, v2

    goto :goto_4

    .line 446
    :cond_5
    sget v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_BAND_WIDTH:I

    add-int/2addr v1, v9

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_BAND_SPACING:I

    add-int v9, v1, v2

    goto :goto_4

    .line 452
    :cond_6
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    int-to-float v3, v11

    const/4 v4, 0x0

    const v5, 0x7f020274

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMicImage:Lcom/samsung/android/glview/GLImage;

    .line 453
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMicImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 455
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_ADD_VOICE_POS_Y:I

    int-to-float v4, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_WIDTH:I

    int-to-float v5, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_ADD_VOICE_HEIGHT:I

    int-to-float v6, v2

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    .line 457
    const/4 v10, 0x0

    :goto_5
    sget v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUND_RECORD_MAX_PROGRESSBAR_COUNT:I

    if-ge v10, v1, :cond_8

    .line 458
    if-nez v10, :cond_7

    .line 459
    const/4 v12, 0x0

    .line 464
    :goto_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarBG:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    int-to-float v3, v12

    const/4 v4, 0x0

    const v5, 0x7f020282

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarBG:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 466
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarBG:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 468
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarSeq:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    int-to-float v3, v12

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgessBarSeqImage:I

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 457
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 461
    :cond_7
    sget v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_ADD_VOICE_SEQ_WIDTH:I

    add-int/2addr v1, v12

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_ADD_VOICE_SEQ_SPACING:I

    add-int v12, v1, v2

    goto :goto_6

    .line 471
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 473
    new-instance v1, Lcom/samsung/android/glview/GLText;

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_WIDTH:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_WIDTH:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v3, v2, v3

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_POS_Y:I

    int-to-float v4, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_WIDTH:I

    int-to-float v5, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_HEIGHT:I

    int-to-float v6, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0/"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v7, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUND_RECORD_MAX_PROGRESSBAR_COUNT:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0801d7

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_FONT_SIZE:I

    int-to-float v8, v2

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressText:Lcom/samsung/android/glview/GLText;

    .line 476
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 477
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 478
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 479
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressText:Lcom/samsung/android/glview/GLText;

    sget-boolean v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUND_AND_SHOT_PROGRESS_BAR_TEXT_SHADOW_ENABLE:Z

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 480
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 482
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->initAddVoice()V

    .line 484
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 485
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotAddVoice:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 486
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotAddVoice:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 487
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotAddVoice:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 489
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotAddVoice:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 490
    return-void
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;)Z
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->isRecorded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    const-string v0, "sef_file_type"

    const/16 v1, 0x800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 498
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    sget v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUNDANDSHOT_SCREEN_PREVIEWING:I

    if-eq v0, v1, :cond_1

    .line 499
    const-string v0, "date_modified"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 501
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onHRMShutterDetected()V
    .locals 2

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z

    if-eqz v0, :cond_0

    .line 507
    const-string v0, "SoundAndShot"

    const-string v1, "onHRMShutterDetected returned - Recording"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :goto_0
    return-void

    .line 511
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->isAddVoiceScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 512
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 515
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->soundAndshotAddVoiceRecordingFinished()V

    goto :goto_0

    .line 517
    :cond_2
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->onShutterKeyReleased(I)Z

    goto :goto_0
.end method

.method public onImageStoringCompleted()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 523
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    if-ne v0, v4, :cond_2

    .line 525
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    sget v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUNDANDSHOT_SCREEN_PREVIEWING:I

    if-ne v0, v1, :cond_0

    .line 526
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/util/ContentData;->getReviewBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentOrientation()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setReviewImage(Landroid/graphics/Bitmap;IZ)V

    .line 528
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->showSoundAndShowAddVoice()V

    .line 529
    sget v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUNDANDSHOT_SCREEN_ADD_VOICE:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->switchScreen(I)V

    .line 536
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/ContentData;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/ContentData;->getOrientation()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 539
    :cond_1
    return v4

    .line 532
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    if-nez v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->saveAudio(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onInactivate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->clearSideQuickSetting()V

    .line 546
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 547
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_HEART_RATE_SENSOR_SHUTTER:Z

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 549
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterHRMShutterListener()V

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 555
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->stopSoundRecording()V

    .line 557
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 562
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 563
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 565
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->soundAndshotAddVoiceRecordingPaused()V

    .line 566
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 570
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 571
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 572
    :cond_0
    const/4 v0, 0x1

    .line 574
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 579
    packed-switch p1, :pswitch_data_0

    .line 601
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 602
    const/16 v1, 0x52

    if-ne p1, v1, :cond_4

    .line 607
    :cond_0
    :goto_1
    return v0

    .line 581
    :pswitch_0
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUNDANDSHOT_SCREEN_PREVIEWING:I

    if-ne v1, v2, :cond_1

    .line 582
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->stopSoundRecording()V

    goto :goto_0

    .line 584
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 585
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 588
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_0

    .line 589
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 590
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 592
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->soundAndshotAddVoiceRecordingFinished()V

    goto :goto_1

    .line 607
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 579
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuSelected(II)Z
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 612
    packed-switch p1, :pswitch_data_0

    .line 617
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 614
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setSoundAndShotType(I)V

    goto :goto_0

    .line 612
    nop

    :pswitch_data_0
    .packed-switch 0x4d
        :pswitch_0
    .end packed-switch
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    .line 623
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 628
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    .prologue
    .line 633
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyReleased(I)Z
    .locals 2
    .param p1, "captureMethod"    # I

    .prologue
    .line 638
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    sget v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUNDANDSHOT_SCREEN_PREVIEWING:I

    if-ne v0, v1, :cond_0

    .line 639
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleSingleShutterReleased(I)V

    .line 641
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 646
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 650
    return-void
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    .prologue
    .line 654
    const/4 v0, 0x0

    return v0
.end method

.method protected showSoundAndShowAddVoice()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 658
    const-string v2, "SoundAndShot"

    const-string v3, "showSoundAndShowAddVoice()"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v3, -0x181

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 661
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 662
    const-string v2, "SoundAndShot"

    const-string v3, "stop onShow by pausing main activity"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :goto_0
    return-void

    .line 665
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v2, :cond_1

    .line 666
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 667
    :cond_1
    const/16 v2, 0xb

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 668
    .local v0, "MicAmplitude":[I
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setRecoringAmplitude([I)V

    .line 670
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 672
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMicImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 674
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v2, 0x14

    if-ge v1, v2, :cond_2

    .line 676
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 674
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 679
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 680
    const/4 v1, 0x0

    :goto_2
    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUND_RECORD_MAX_PROGRESSBAR_COUNT:I

    if-ge v1, v2, :cond_3

    .line 681
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarBG:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 680
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 684
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 686
    const/4 v1, 0x0

    :goto_3
    sget v2, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUND_RECORD_MAX_PROGRESSBAR_COUNT:I

    if-ge v1, v2, :cond_4

    .line 687
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 686
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 690
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 691
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->startRecordingByCreateButton()V

    .line 692
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    .line 693
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 695
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->updateLayoutForRatio()V

    goto/16 :goto_0

    .line 667
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
