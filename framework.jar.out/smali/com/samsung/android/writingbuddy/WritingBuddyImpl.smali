.class public final Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
.super Ljava/lang/Object;
.source "WritingBuddyImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/writingbuddy/WritingBuddyImpl$WBHandler;,
        Lcom/samsung/android/writingbuddy/WritingBuddyImpl$EventChecker;,
        Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;,
        Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;,
        Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;,
        Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnImageWritingListener;
    }
.end annotation


# static fields
.field public static final BIND_MSG_REQUEST_IME_RECT:I = 0x2

.field public static final BIND_MSG_REQUEST_TARGET_RECT:I = 0x1

.field public static final BIND_MSG_RESULT_IME_CLOSED:I = 0x2

.field public static final BIND_MSG_RESULT_IME_OPENED:I = 0x1

.field public static final BIND_MSG_RESULT_WRITING_TYPE_IMAGE:I = 0x2

.field public static final BIND_MSG_RESULT_WRITING_TYPE_TEXT:I = 0x1

.field private static final CLIENT_SEQUENCE_MASK:I = 0xff

.field private static final CLIENT_UNIQUE_ID_MASK:I = -0x100

.field public static final CMD_ID_RECEIVE_ACTION_BUTTON:I = 0x2

.field public static final CMD_ID_WATCH_ACTION:I = 0x1

.field private static final DEBUG:Z

.field public static final FLAG_HELP_MODE:I = 0x4

.field public static final FLAG_IMAGE_WRITING:I = 0x1

.field public static final FLAG_MATH_WRITING:I = 0x2

.field public static final FLAG_MMS_MODE:I = 0x8

.field public static final FLAG_START_DRAWING_MODE:I = 0x10

.field private static final HELP_MODE_RESULT_CLOSED:Ljava/lang/String; = "CLOSED"

.field private static final HELP_MODE_RESULT_HOVERED:Ljava/lang/String; = "HOVERED"

.field private static final HELP_MODE_RESULT_HOVER_CANCELED:Ljava/lang/String; = "HOVER_CANCELED"

.field private static final HELP_MODE_RESULT_OPENED:Ljava/lang/String; = "OPENED"

.field private static final HELP_MODE_RESULT_TEXT_INSERTED:Ljava/lang/String; = "TEXT_INSERTED"

.field public static final IME_CMD_CANCEL_CLOSE:Ljava/lang/String; = "com.samsung.android.writingbuddy/CANCEL_CLOSE"

.field public static final IME_CMD_SEND_BINDER:Ljava/lang/String; = "com.samsung.android.writingbuddy/SEND_BINDER"

.field private static final MMS_DATA_DELETE:Ljava/lang/String; = "MMS_DATA_DELETE"

.field private static final MSG_CANCEL_WRITINGBUDDY_CUE:I = 0x7

.field private static final MSG_EDITOR_ACTION_DOWN:I = 0x8

.field private static final MSG_SERVICE_IMAGE_ADDED:I = 0x1

.field private static final MSG_SERVICE_RESULT_RECEIVED:I = 0x4

.field private static final MSG_SERVICE_TEXT_DELETED:I = 0x3

.field private static final MSG_SERVICE_TEXT_INSERTED:I = 0x2

.field private static final MSG_SERVICE_UPDATE_DIALOG:I = 0x9

.field private static final MSG_SERVICE_UPDATE_POSITION:I = 0x5

.field private static final MSG_SERVICE_UPDATE_POSITION_CHECK:I = 0xa

.field private static final MSG_SHOW_WRITINGBUDDY_CUE:I = 0x6

.field public static final PRIVATE_CMD_HELP_MODE:Ljava/lang/String; = "HELP_MODE"

.field public static final PRIVATE_CMD_RECEIVE_ACTION_BUTTON:Ljava/lang/String; = "RECEIVE_ACTION_BUTTON"

.field public static final PRIVATE_CMD_WACTH_ACTION:Ljava/lang/String; = "WATCH_ACTION"

.field public static final RESULT_FIELD_DELIMITER:Ljava/lang/String; = "//"

.field public static final RESULT_STRING_DELIMITER:Ljava/lang/String; = "//"

.field public static final SERVICE_CB_CLIENT_CHANGED:Ljava/lang/String; = "service_cb_client_changed"

.field public static final SERVICE_CB_CLOSED:Ljava/lang/String; = "service_cb_closed"

.field public static final SERVICE_CB_DRAWING_MODE_SET:Ljava/lang/String; = "service_cb_drawing_mode_set"

.field public static final SERVICE_CB_HELP_MODE_RESULT:Ljava/lang/String; = "service_cb_help_mode_result"

.field public static final SERVICE_CB_INFLATE_DONE:Ljava/lang/String; = "service_cb_inflate_done"

.field public static final SERVICE_CB_INIT_TEXT:Ljava/lang/String; = "service_cb_init_text"

.field public static final SERVICE_CB_MATH_WRITING_RESULT:Ljava/lang/String; = "service_cb_math_writing_result"

.field public static final SERVICE_CB_MMS_DATA_DELETE:Ljava/lang/String; = "service_cb_mms_data_delete"

.field public static final SERVICE_CB_PERFORM_EDITOR_ACTION:Ljava/lang/String; = "service_cb_perform_editor_action"

.field public static final SERVICE_CB_PRIVATE:Ljava/lang/String; = "service_cb_private"

.field public static final SERVICE_CB_WRITING_DONE:Ljava/lang/String; = "service_cb_writing_done"

.field private static final START_DELAY_TIME_MS:I = 0x96

.field private static final STATE_EVENT_SERVICE_CALLBACK_CLOSED:I = 0x2

.field private static final STATE_EVENT_SERVICE_CALLBACK_INFLATE_DONE:I = 0x1

.field private static final STATE_EVENT_TYPE_MOTION:I = 0x1

.field private static final STATE_EVENT_TYPE_SERVICE_CALLBACK:I = 0x2

.field private static final STATE_RESET_COUNT:I = 0x3

.field private static final STATE_STEP_STANDBY:I = 0x0

.field private static final STATE_STEP_WRITING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WritingBuddyImpl"

.field public static final TEMPLATE_ALARM:I = 0xc

.field public static final TEMPLATE_ALARM_AM:I = 0xd

.field public static final TEMPLATE_ALARM_PM:I = 0xe

.field public static final TEMPLATE_CALCULATOR:I = 0x14

.field public static final TEMPLATE_DATEPICKER:I = 0x12

.field public static final TEMPLATE_DATEPICKER_NO_YEAR:I = 0x13

.field public static final TEMPLATE_DIALER:I = 0x15

.field public static final TEMPLATE_EDITOR:I = 0x16

.field public static final TEMPLATE_NONE:I = 0x0

.field public static final TEMPLATE_TIME:I = 0x1

.field public static final TEMPLATE_TIMEPICKER:I = 0xf

.field public static final TEMPLATE_TIMEPICKER_AM:I = 0x10

.field public static final TEMPLATE_TIMEPICKER_PM:I = 0x11

.field public static final TEMPLATE_TIMER:I = 0xb

.field public static final TYPE_BOARD_EDITOR:I = 0x1

.field public static final TYPE_BOARD_NONE:I = 0x0

.field public static final TYPE_BOARD_TEMPLATE:I = 0x2

.field public static final TYPE_EDITOR_DATETIME:I = 0x3

.field public static final TYPE_EDITOR_NONE:I = 0x0

.field public static final TYPE_EDITOR_NUMBER:I = 0x1

.field public static final TYPE_EDITOR_TEXT:I = 0x2


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mBoardTemplate:I

.field private mBoardType:I

.field private mCanShowAutoCompletePopup:Z

.field private mCanStartWritingBuddy:Z

.field private mEditCount:I

.field private mEditorType:I

.field private mHandler:Landroid/os/Handler;

.field private mIgnoreSizeChange:Z

.field private mImageWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnImageWritingListener;

.field private mInitRect:Landroid/graphics/Rect;

.field private mIsCursorBlinkDisabled:Z

.field private mIsHelpModeEnabled:Z

.field private mIsImageModePenDrawing:Z

.field private mIsImageWritingEnabled:Z

.field private mIsMathWritingEnabled:Z

.field private mIsMultiLineEditor:Z

.field private mIsPerformingAction:Z

.field private mIsPopupCueShowMSGCalled:Z

.field private mIsReceiveActionButtonEnabled:Z

.field private mIsWaitingHideSoftInput:Z

.field private mIsWatchActionEnabled:Z

.field private mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field private mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mParentView:Landroid/view/View;

.field private mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

.field private mPrivateCMD:Ljava/lang/String;

.field private mPrivateCommandListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;

.field private mScrRectUpdated:Landroid/graphics/Rect;

.field mServiceCallback:Lcom/samsung/android/writingbuddy/IWritingBuddyClient;

.field private mShowCnt:I

.field private mState:I

.field private mStateResetCnt:I

.field private mTextUpdateListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;

.field private mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

.field private mViewID:I

.field private mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

.field private mWBRect:Landroid/graphics/Rect;

.field private mWindowMode:I

.field private motionEvent:Landroid/view/MotionEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    iput-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBRect:Landroid/graphics/Rect;

    iput v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditCount:I

    iput-boolean v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsMultiLineEditor:Z

    iput-boolean v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsCursorBlinkDisabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mCanStartWritingBuddy:Z

    iput-boolean v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mCanShowAutoCompletePopup:Z

    iput v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    iput v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mShowCnt:I

    iput v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWindowMode:I

    iput-boolean v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsImageModePenDrawing:Z

    iput-boolean v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPopupCueShowMSGCalled:Z

    iput-boolean v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPerformingAction:Z

    iput-boolean v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIgnoreSizeChange:Z

    iput-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mInitRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsWaitingHideSoftInput:Z

    new-instance v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$5;-><init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    iput v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    iput v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mStateResetCnt:I

    iput-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->motionEvent:Landroid/view/MotionEvent;

    new-instance v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$7;-><init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mServiceCallback:Lcom/samsung/android/writingbuddy/IWritingBuddyClient;

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->initVariable()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setParentView(Landroid/view/View;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/View;->setWritingBuddy(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V

    :cond_0
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardType(I)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardType(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Lcom/samsung/android/writingbuddy/PopupCue;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsWaitingHideSoftInput:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->showWritingBuddy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .prologue
    iget v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .prologue
    iget v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Landroid/view/View;FF)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->pointInView(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPopupCueShowMSGCalled:Z

    return v0
.end method

.method static synthetic access$802(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPopupCueShowMSGCalled:Z

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private canStartTemplateWritingBuddy(Z)Z
    .locals 13
    .param p1, "refresh"    # Z

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-boolean v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mCanStartWritingBuddy:Z

    .local v4, "result":Z
    if-nez p1, :cond_0

    move v5, v4

    .end local v4    # "result":Z
    .local v5, "result":I
    :goto_0
    return v5

    .end local v5    # "result":I
    .restart local v4    # "result":Z
    :cond_0
    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->isWritingBuddyEnabled()Z

    move-result v8

    if-eqz v8, :cond_7

    move v4, v9

    :goto_1
    if-eqz v4, :cond_1

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v12, "pen_writing_buddy"

    invoke-static {v8, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_8

    move v4, v9

    :cond_1
    :goto_2
    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    :goto_3
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getWindowMode()I

    move-result v8

    iput v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWindowMode:I

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    instance-of v8, v1, Landroid/app/Activity;

    if-eqz v8, :cond_a

    if-eqz v4, :cond_2

    iget v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWindowMode:I

    const/high16 v12, 0x2000000

    and-int/2addr v8, v12

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWindowMode:I

    and-int/lit8 v8, v8, 0xf

    if-nez v8, :cond_2

    iget v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWindowMode:I

    and-int/lit16 v8, v8, 0x800

    if-eqz v8, :cond_2

    const/4 v4, 0x0

    :cond_2
    :goto_4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .local v0, "conf":Landroid/content/res/Configuration;
    iget v8, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v8, v9, :cond_b

    move v2, v9

    .local v2, "isMobileKeyboard":Z
    :goto_5
    if-eqz v2, :cond_3

    const/4 v4, 0x0

    .end local v0    # "conf":Landroid/content/res/Configuration;
    .end local v2    # "isMobileKeyboard":Z
    :cond_3
    if-eqz v4, :cond_4

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .local v3, "p":Landroid/view/ViewParent;
    :goto_6
    if-eqz v3, :cond_4

    instance-of v8, v3, Landroid/view/ViewGroup;

    if-eqz v8, :cond_4

    move-object v8, v3

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->isWritingBuddyEnabled()Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v4, 0x0

    .end local v3    # "p":Landroid/view/ViewParent;
    :cond_4
    if-eqz v4, :cond_6

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_7
    invoke-direct {p0, v8, v9}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v7

    .local v7, "visibleRect":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_8
    invoke-direct {p0, v8}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v6

    .local v6, "viewRect":Landroid/graphics/Rect;
    iget v8, v7, Landroid/graphics/Rect;->top:I

    iget v9, v6, Landroid/graphics/Rect;->top:I

    if-eq v8, v9, :cond_6

    const/4 v4, 0x0

    sget-boolean v8, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    if-eqz v8, :cond_5

    const-string v8, "WritingBuddyImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "VisibleRect : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " ViewRect : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {v8}, Lcom/samsung/android/writingbuddy/PopupCue;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {v8, v10}, Lcom/samsung/android/writingbuddy/PopupCue;->dismiss(Z)V

    iput-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    .end local v6    # "viewRect":Landroid/graphics/Rect;
    .end local v7    # "visibleRect":Landroid/graphics/Rect;
    :cond_6
    iput-boolean v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mCanStartWritingBuddy:Z

    const-string v8, "WritingBuddyImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "canStartWritingBuddy() : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .restart local v5    # "result":I
    goto/16 :goto_0

    .end local v1    # "context":Landroid/content/Context;
    .end local v5    # "result":I
    :cond_7
    move v4, v10

    goto/16 :goto_1

    :cond_8
    move v4, v10

    goto/16 :goto_2

    :cond_9
    move-object v1, v11

    goto/16 :goto_3

    .restart local v1    # "context":Landroid/content/Context;
    :cond_a
    instance-of v8, v1, Landroid/content/ContextWrapper;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v8

    const/4 v12, 0x2

    if-ne v8, v12, :cond_2

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v12, 0x800

    invoke-virtual {v8, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-ne v8, v9, :cond_2

    const/4 v4, 0x0

    goto/16 :goto_4

    .restart local v0    # "conf":Landroid/content/res/Configuration;
    :cond_b
    move v2, v10

    goto/16 :goto_5

    .end local v0    # "conf":Landroid/content/res/Configuration;
    .restart local v3    # "p":Landroid/view/ViewParent;
    :cond_c
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto/16 :goto_6

    .end local v3    # "p":Landroid/view/ViewParent;
    :cond_d
    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto/16 :goto_7

    .restart local v7    # "visibleRect":Landroid/graphics/Rect;
    :cond_e
    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto/16 :goto_8
.end method

.method private canStartWritingBuddy(Z)Z
    .locals 21
    .param p1, "refresh"    # Z

    .prologue
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mCanStartWritingBuddy:Z

    .local v11, "result":Z
    if-nez p1, :cond_0

    move v12, v11

    .end local v11    # "result":Z
    .local v12, "result":I
    :goto_0
    return v12

    .end local v12    # "result":I
    .restart local v11    # "result":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->isWritingBuddyEnabled()Z

    move-result v18

    if-eqz v18, :cond_c

    const/4 v11, 0x1

    :goto_1
    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "pen_writing_buddy"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    const/4 v11, 0x1

    :cond_1
    :goto_2
    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->isFocusable()Z

    move-result v18

    if-nez v18, :cond_3

    :cond_2
    const/4 v11, 0x0

    :cond_3
    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .local v8, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v0, v8, Landroid/view/WindowManager$LayoutParams;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v17, v8

    check-cast v17, Landroid/view/WindowManager$LayoutParams;

    .local v17, "wlp":Landroid/view/WindowManager$LayoutParams;
    const-string v18, "WritingBuddyImpl"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "canStartWritingBuddy : window type="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v18, v0

    const/16 v19, 0x3e8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    const/4 v11, 0x0

    .end local v8    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v17    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    .local v4, "context":Landroid/content/Context;
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getWindowMode()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWindowMode:I

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    instance-of v0, v4, Landroid/app/Activity;

    move/from16 v18, v0

    if-eqz v18, :cond_f

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWindowMode:I

    move/from16 v18, v0

    const/high16 v19, 0x2000000

    and-int v18, v18, v19

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWindowMode:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0xf

    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWindowMode:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x800

    move/from16 v18, v0

    if-eqz v18, :cond_5

    const/4 v11, 0x0

    :cond_5
    :goto_4
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .local v3, "conf":Landroid/content/res/Configuration;
    iget v0, v3, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    const/4 v7, 0x1

    .local v7, "isMobileKeyboard":Z
    :goto_5
    if-eqz v7, :cond_6

    const/4 v11, 0x0

    .end local v3    # "conf":Landroid/content/res/Configuration;
    .end local v7    # "isMobileKeyboard":Z
    :cond_6
    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .local v9, "p":Landroid/view/ViewParent;
    :goto_6
    if-eqz v9, :cond_7

    instance-of v0, v9, Landroid/view/ViewGroup;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v18, v9

    check-cast v18, Landroid/view/ViewGroup;

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->isWritingBuddyEnabled()Z

    move-result v18

    if-eqz v18, :cond_11

    const/4 v11, 0x0

    .end local v9    # "p":Landroid/view/ViewParent;
    :cond_7
    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v18, v0

    if-eqz v18, :cond_b

    new-instance v6, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v6}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .local v6, "ei":Landroid/view/inputmethod/EditorInfo;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v10, Landroid/widget/EditText;

    .local v10, "parent":Landroid/widget/EditText;
    invoke-virtual {v10, v6}, Landroid/widget/EditText;->extractEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    iget v0, v6, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v18, v0

    and-int/lit8 v5, v18, 0xf

    .local v5, "editorClass":I
    iget v0, v6, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v13, v0, 0xff0

    .local v13, "variation":I
    const/16 v18, 0x80

    move/from16 v0, v18

    if-eq v13, v0, :cond_8

    const/16 v18, 0x90

    move/from16 v0, v18

    if-eq v13, v0, :cond_8

    const/16 v18, 0xe0

    move/from16 v0, v18

    if-eq v13, v0, :cond_8

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v5, v0, :cond_9

    const/16 v18, 0x10

    move/from16 v0, v18

    if-ne v13, v0, :cond_9

    :cond_8
    const/4 v11, 0x0

    :cond_9
    if-eqz v11, :cond_a

    iget-object v0, v6, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    iget-object v0, v6, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "com.samsung.android/disableDirectPenInput"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_a

    const/4 v11, 0x0

    :cond_a
    iget v0, v6, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0xf

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    iget v0, v6, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v18, v0

    const/high16 v19, 0x20000

    and-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v6, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-lez v18, :cond_12

    const/16 v18, 0x1

    :goto_7
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsMultiLineEditor:Z

    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsMultiLineEditor:Z

    move/from16 v18, v0

    if-nez v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getCurrentWritingBuddyView()Landroid/view/View;

    move-result-object v18

    if-nez v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    move-object/from16 v18, v0

    :goto_8
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v16

    .local v16, "visibleRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    move-object/from16 v18, v0

    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v14

    .local v14, "viewRect":Landroid/graphics/Rect;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v15, v18, v19

    .local v15, "visibleRatio":F
    const v18, 0x3e4ccccd    # 0.2f

    cmpg-float v18, v15, v18

    if-gez v18, :cond_b

    const/4 v11, 0x0

    const-string v18, "WritingBuddyImpl"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "View is scrolled."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "editorClass":I
    .end local v6    # "ei":Landroid/view/inputmethod/EditorInfo;
    .end local v10    # "parent":Landroid/widget/EditText;
    .end local v13    # "variation":I
    .end local v14    # "viewRect":Landroid/graphics/Rect;
    .end local v15    # "visibleRatio":F
    .end local v16    # "visibleRect":Landroid/graphics/Rect;
    :cond_b
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mCanStartWritingBuddy:Z

    const-string v18, "WritingBuddyImpl"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "canStartWritingBuddy() : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v11

    .restart local v12    # "result":I
    goto/16 :goto_0

    .end local v4    # "context":Landroid/content/Context;
    .end local v12    # "result":I
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_3

    .restart local v4    # "context":Landroid/content/Context;
    :cond_f
    instance-of v0, v4, Landroid/content/ContextWrapper;

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    const/16 v19, 0x800

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    const/4 v11, 0x0

    goto/16 :goto_4

    .restart local v3    # "conf":Landroid/content/res/Configuration;
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_5

    .end local v3    # "conf":Landroid/content/res/Configuration;
    .restart local v9    # "p":Landroid/view/ViewParent;
    :cond_11
    invoke-interface {v9}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    goto/16 :goto_6

    .end local v9    # "p":Landroid/view/ViewParent;
    .restart local v5    # "editorClass":I
    .restart local v6    # "ei":Landroid/view/inputmethod/EditorInfo;
    .restart local v10    # "parent":Landroid/widget/EditText;
    .restart local v13    # "variation":I
    :cond_12
    const/16 v18, 0x0

    goto/16 :goto_7

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    move-object/from16 v18, v0

    goto/16 :goto_8

    .restart local v16    # "visibleRect":Landroid/graphics/Rect;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    move-object/from16 v18, v0

    goto/16 :goto_9
.end method

.method private closeWritingBuddy(Z)Z
    .locals 3
    .param p1, "immediate"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    iget v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/writingbuddy/IWritingBuddyManager;->dismiss(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WritingBuddyImpl"

    const-string v2, "Can not close WritingBuddy, RemoteException happened"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private convertDPtoPX(FLandroid/util/DisplayMetrics;)I
    .locals 3
    .param p1, "dp"    # F
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    move-object v0, p2

    .local v0, "dm":Landroid/util/DisplayMetrics;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private createPopupCue()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/writingbuddy/PopupCue;

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/samsung/android/writingbuddy/PopupCue;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    new-instance v1, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;-><init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/writingbuddy/PopupCue;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    new-instance v1, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;-><init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/writingbuddy/PopupCue;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0
.end method

.method private dismissPopupCue(Z)Z
    .locals 3
    .param p1, "animation"    # Z

    .prologue
    const-string v1, "WritingBuddyImpl"

    const-string v2, "dismissPopupCue()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPopupCueShowMSGCalled:Z

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {v1}, Lcom/samsung/android/writingbuddy/PopupCue;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {v1, p1}, Lcom/samsung/android/writingbuddy/PopupCue;->dismiss(Z)V

    :cond_2
    return v0
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$WBHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$WBHandler;-><init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;

    return-object v0

    :cond_1
    const-string v0, "WritingBuddyImpl"

    const-string v1, "Attempting to create Handler from background thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$WBHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$WBHandler;-><init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private getModeFlag()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .local v1, "flag":I
    iget-boolean v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsImageWritingEnabled:Z

    if-eqz v4, :cond_0

    or-int/lit8 v1, v1, 0x1

    :cond_0
    iget-boolean v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsMathWritingEnabled:Z

    if-eqz v4, :cond_1

    or-int/lit8 v1, v1, 0x2

    :cond_1
    iget-boolean v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsHelpModeEnabled:Z

    if-eqz v4, :cond_2

    or-int/lit8 v1, v1, 0x4

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v4, v4, Landroid/widget/EditText;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v4, Landroid/widget/EditText;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .local v0, "b":Landroid/os/Bundle;
    const-string v4, "isMmsMode"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .local v2, "isMmsMode":Z
    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x8

    :cond_3
    const-string v4, "isStartDrawingMode"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .local v3, "isStartDrawingMode":Z
    if-eqz v3, :cond_4

    or-int/lit8 v1, v1, 0x10

    const-string v4, "isStartDrawingMode"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "isMmsMode":Z
    .end local v3    # "isStartDrawingMode":Z
    :cond_4
    return v1
.end method

.method private getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v1, "r":Landroid/graphics/Rect;
    if-eqz p1, :cond_0

    const/4 v2, 0x2

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .local v0, "locInWindow":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .end local v0    # "locInWindow":[I
    :cond_0
    return-object v1

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private getRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v1, "r":Landroid/graphics/Rect;
    if-eqz p1, :cond_0

    const/4 v2, 0x2

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .local v0, "locOnScr":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .end local v0    # "locOnScr":[I
    :cond_0
    return-object v1

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private getTargetWBRect(Landroid/view/View;I)Landroid/graphics/Rect;
    .locals 1
    .param p1, "servedView"    # Landroid/view/View;
    .param p2, "type"    # I

    .prologue
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;
    .locals 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "chechkWidth"    # Z

    .prologue
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v12, v15, Landroid/util/DisplayMetrics;->widthPixels:I

    .local v12, "widthNormalizer":I
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v6

    .local v6, "r":Landroid/graphics/Rect;
    move-object/from16 v10, p1

    .local v10, "v":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    .local v11, "vp":Landroid/view/ViewParent;
    const/4 v9, 0x0

    .local v9, "top":I
    const/4 v1, 0x0

    .local v1, "bottomDiff":I
    const/4 v3, 0x0

    .local v3, "left":I
    const/4 v7, 0x0

    .local v7, "rightDiff":I
    :goto_0
    instance-of v15, v11, Landroid/view/View;

    if-eqz v15, :cond_9

    move-object v4, v11

    check-cast v4, Landroid/view/View;

    .local v4, "parent":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v15

    float-to-int v14, v15

    .local v14, "y":I
    add-int/2addr v9, v14

    if-gez v14, :cond_0

    if-gez v9, :cond_0

    iget v15, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v16

    add-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->top:I

    const/4 v9, 0x0

    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v15

    if-lez v15, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v15

    if-le v15, v9, :cond_5

    iget v15, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v16

    sub-int v16, v16, v9

    add-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->top:I

    const/4 v9, 0x0

    :cond_1
    :goto_1
    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v15

    float-to-int v15, v15

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v16

    add-int v15, v15, v16

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v16

    sub-int v2, v15, v16

    .local v2, "bottomPosY":I
    add-int v15, v2, v1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int v16, v2, v1

    sub-int v15, v15, v16

    neg-int v1, v15

    :goto_2
    if-eqz p2, :cond_4

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v15

    float-to-int v13, v15

    .local v13, "x":I
    rem-int/2addr v13, v12

    add-int/2addr v3, v13

    if-gez v13, :cond_2

    if-gez v3, :cond_2

    iget v15, v6, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v16

    add-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v5

    .local v5, "parentScrollX":I
    rem-int/2addr v5, v12

    if-lez v5, :cond_3

    if-le v5, v3, :cond_7

    iget v15, v6, Landroid/graphics/Rect;->left:I

    sub-int v16, v5, v3

    add-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    :cond_3
    :goto_3
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v15, v13

    sub-int v8, v15, v5

    .local v8, "rightPosX":I
    add-int v15, v8, v7

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int v16, v8, v7

    sub-int v15, v15, v16

    neg-int v7, v15

    .end local v5    # "parentScrollX":I
    .end local v8    # "rightPosX":I
    .end local v13    # "x":I
    :cond_4
    :goto_4
    move-object v10, v4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    goto/16 :goto_0

    .end local v2    # "bottomPosY":I
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v15

    sub-int/2addr v9, v15

    goto :goto_1

    .restart local v2    # "bottomPosY":I
    :cond_6
    iget v15, v6, Landroid/graphics/Rect;->bottom:I

    add-int v16, v2, v1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v17

    sub-int v16, v16, v17

    sub-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->bottom:I

    const/4 v1, 0x0

    goto :goto_2

    .restart local v5    # "parentScrollX":I
    .restart local v13    # "x":I
    :cond_7
    sub-int/2addr v3, v5

    goto :goto_3

    .restart local v8    # "rightPosX":I
    :cond_8
    iget v15, v6, Landroid/graphics/Rect;->right:I

    add-int v16, v8, v7

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v17

    sub-int v16, v16, v17

    sub-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->right:I

    const/4 v7, 0x0

    goto :goto_4

    .end local v2    # "bottomPosY":I
    .end local v4    # "parent":Landroid/view/View;
    .end local v5    # "parentScrollX":I
    .end local v8    # "rightPosX":I
    .end local v13    # "x":I
    .end local v14    # "y":I
    :cond_9
    sget-boolean v15, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    if-eqz v15, :cond_a

    const-string v15, "WritingBuddyImpl"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getVisibleRectInWindow : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-object v6
.end method

.method private getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;
    .locals 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "chechkWidth"    # Z

    .prologue
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v12, v15, Landroid/util/DisplayMetrics;->widthPixels:I

    .local v12, "widthNormalizer":I
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v6

    .local v6, "r":Landroid/graphics/Rect;
    move-object/from16 v10, p1

    .local v10, "v":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    .local v11, "vp":Landroid/view/ViewParent;
    const/4 v9, 0x0

    .local v9, "top":I
    const/4 v1, 0x0

    .local v1, "bottomDiff":I
    const/4 v3, 0x0

    .local v3, "left":I
    const/4 v7, 0x0

    .local v7, "rightDiff":I
    :goto_0
    instance-of v15, v11, Landroid/view/View;

    if-eqz v15, :cond_9

    move-object v4, v11

    check-cast v4, Landroid/view/View;

    .local v4, "parent":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v15

    float-to-int v14, v15

    .local v14, "y":I
    add-int/2addr v9, v14

    if-gez v14, :cond_0

    if-gez v9, :cond_0

    iget v15, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v16

    add-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->top:I

    const/4 v9, 0x0

    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v15

    if-lez v15, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v15

    if-le v15, v9, :cond_5

    iget v15, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v16

    sub-int v16, v16, v9

    add-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->top:I

    const/4 v9, 0x0

    :cond_1
    :goto_1
    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v15

    float-to-int v15, v15

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v16

    add-int v15, v15, v16

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v16

    sub-int v2, v15, v16

    .local v2, "bottomPosY":I
    add-int v15, v2, v1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int v16, v2, v1

    sub-int v15, v15, v16

    neg-int v1, v15

    :goto_2
    if-eqz p2, :cond_4

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v15

    float-to-int v13, v15

    .local v13, "x":I
    rem-int/2addr v13, v12

    add-int/2addr v3, v13

    if-gez v13, :cond_2

    if-gez v3, :cond_2

    iget v15, v6, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v16

    add-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v5

    .local v5, "parentScrollX":I
    rem-int/2addr v5, v12

    if-lez v5, :cond_3

    if-le v5, v3, :cond_7

    iget v15, v6, Landroid/graphics/Rect;->left:I

    sub-int v16, v5, v3

    add-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    :cond_3
    :goto_3
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v15, v13

    sub-int v8, v15, v5

    .local v8, "rightPosX":I
    add-int v15, v8, v7

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int v16, v8, v7

    sub-int v15, v15, v16

    neg-int v7, v15

    .end local v5    # "parentScrollX":I
    .end local v8    # "rightPosX":I
    .end local v13    # "x":I
    :cond_4
    :goto_4
    move-object v10, v4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    goto/16 :goto_0

    .end local v2    # "bottomPosY":I
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v15

    sub-int/2addr v9, v15

    goto :goto_1

    .restart local v2    # "bottomPosY":I
    :cond_6
    iget v15, v6, Landroid/graphics/Rect;->bottom:I

    add-int v16, v2, v1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v17

    sub-int v16, v16, v17

    sub-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->bottom:I

    const/4 v1, 0x0

    goto :goto_2

    .restart local v5    # "parentScrollX":I
    .restart local v13    # "x":I
    :cond_7
    sub-int/2addr v3, v5

    goto :goto_3

    .restart local v8    # "rightPosX":I
    :cond_8
    iget v15, v6, Landroid/graphics/Rect;->right:I

    add-int v16, v8, v7

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v17

    sub-int v16, v16, v17

    sub-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->right:I

    const/4 v7, 0x0

    goto :goto_4

    .end local v2    # "bottomPosY":I
    .end local v4    # "parent":Landroid/view/View;
    .end local v5    # "parentScrollX":I
    .end local v8    # "rightPosX":I
    .end local v13    # "x":I
    .end local v14    # "y":I
    :cond_9
    sget-boolean v15, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    if-eqz v15, :cond_a

    const-string v15, "WritingBuddyImpl"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getVisibleRectOnScreen : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-object v6
.end method

.method private getWindowMode()I
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowMode()I

    move-result v1

    :goto_1
    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    const/high16 v1, 0x1000000

    goto :goto_1
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->onImageInserted(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :pswitch_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    .local v4, "text":Ljava/lang/CharSequence;
    iget v5, p1, Landroid/os/Message;->arg1:I

    .local v5, "where":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .local v1, "nextCursor":I
    invoke-virtual {p0, v5, v4, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->onTextInserted(ILjava/lang/CharSequence;I)V

    goto :goto_0

    .end local v1    # "nextCursor":I
    .end local v4    # "text":Ljava/lang/CharSequence;
    .end local v5    # "where":I
    :pswitch_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    .local v3, "start":I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .local v0, "end":I
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->onTextDeleted(II)V

    goto :goto_0

    .end local v0    # "end":I
    .end local v3    # "start":I
    :pswitch_4
    new-instance v2, Landroid/os/Bundle;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-direct {v2, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .local v2, "result":Landroid/os/Bundle;
    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v2, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->onResultReceived(Landroid/os/Bundle;I)V

    goto :goto_0

    .end local v2    # "result":Landroid/os/Bundle;
    :pswitch_5
    invoke-virtual {p0, v7}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->notifyPositionChanged(I)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->showWritingBuddyCue()V

    goto :goto_0

    :pswitch_7
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    const-string v6, "HOVER_CANCELED"

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->onUpdateDialog()V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0, v7}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->notifyPositionCheck(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private initVariable()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsImageWritingEnabled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mCanShowAutoCompletePopup:Z

    invoke-virtual {p0, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardType(I)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setEditorType(I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    return-void
.end method

.method private isPasswordInputType(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/widget/EditText;

    .local v1, "et":Landroid/widget/EditText;
    new-instance v0, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v0}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .local v0, "ei":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->extractEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/16 v4, 0x80

    if-eq v3, v4, :cond_3

    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/16 v4, 0x90

    if-eq v3, v4, :cond_3

    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/16 v4, 0xe0

    if-eq v3, v4, :cond_3

    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/16 v4, 0x10

    if-eq v3, v4, :cond_3

    :cond_2
    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/16 v4, 0x81

    if-eq v3, v4, :cond_3

    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/16 v4, 0x91

    if-ne v3, v4, :cond_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isWBRunning()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    iget v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isWritingBuddyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getCurrentWritingBuddyView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyPositionCheck(I)V
    .locals 7
    .param p1, "what"    # I

    .prologue
    const/4 v6, 0x0

    const-string v3, "WritingBuddyImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyPositionCheck code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    .local v2, "wndRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .local v1, "scrRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_0
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_1
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

    sget-boolean v3, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "WritingBuddyImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update Position check. wnd : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " scr : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mScrRectUpdated:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .end local v1    # "scrRect":Landroid/graphics/Rect;
    .end local v2    # "wndRect":Landroid/graphics/Rect;
    :cond_1
    :goto_2
    return-void

    .restart local v1    # "scrRect":Landroid/graphics/Rect;
    .restart local v2    # "wndRect":Landroid/graphics/Rect;
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_1

    :cond_4
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    iget v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    invoke-interface {v3, v4, v2, v1}, Lcom/samsung/android/writingbuddy/IWritingBuddyManager;->updatePosition(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WritingBuddyImpl"

    const-string v4, "Can not start WritingBuddy, RemoteException happened"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private pointInView(FF)Z
    .locals 1
    .param p1, "localX"    # F
    .param p2, "localY"    # F

    .prologue
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->pointInView(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method private pointInView(Landroid/view/View;FF)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "localX"    # F
    .param p3, "localY"    # F

    .prologue
    const/4 v2, 0x0

    cmpl-float v0, p2, v2

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    cmpl-float v0, p3, v2

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerEventListener(Landroid/view/View;)V
    .locals 1
    .param p1, "servedView"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    new-instance v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$1;-><init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    new-instance v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$2;-><init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private registerPositionChangeListener()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    iget v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setWBPositionListenerEnalbed(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    goto :goto_0
.end method

.method private resetPenPointerIcon()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    :try_start_0
    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WritingBuddyImpl"

    const-string v2, "Failed to change Pen Point to HOVERING_SPENICON_MORE"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsCursorBlinkDisabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->stopCursorBlink(Z)V

    iput-boolean v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsCursorBlinkDisabled:Z

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->unregisterPositionChangeListener()V

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getCurrentWritingBuddyView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->reportCurrentWritingBuddyView(Landroid/view/View;)V

    const-string v0, "WritingBuddyImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Report current WB : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mCanShowAutoCompletePopup:Z

    iput v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    iput v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mStateResetCnt:I

    return-void
.end method

.method private scheduleState(IILandroid/view/MotionEvent;I)Z
    .locals 2
    .param p1, "eventType"    # I
    .param p2, "event"    # I
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;
    .param p4, "arg1"    # I

    .prologue
    iget v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->scheduleStateForEditor(IILandroid/view/MotionEvent;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->scheduleStateForTemplate(IILandroid/view/MotionEvent;I)Z

    move-result v0

    goto :goto_0
.end method

.method private scheduleStateForEditor(IILandroid/view/MotionEvent;I)Z
    .locals 10
    .param p1, "eventType"    # I
    .param p2, "event"    # I
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;
    .param p4, "arg1"    # I

    .prologue
    iput-object p3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->motionEvent:Landroid/view/MotionEvent;

    const/4 v6, 0x2

    if-ne p1, v6, :cond_3

    const/4 v6, 0x2

    if-ne p2, v6, :cond_3

    iget v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    .local v1, "clientViewID":I
    move v4, p4

    .local v4, "receivedClientID":I
    if-ne v1, v4, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->resetState()V

    :cond_0
    const-string v7, "WritingBuddyImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "state : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ".  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .end local v1    # "clientViewID":I
    .end local v4    # "receivedClientID":I
    :goto_2
    return v6

    .restart local v1    # "clientViewID":I
    .restart local v4    # "receivedClientID":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .end local v1    # "clientViewID":I
    .end local v4    # "receivedClientID":I
    :cond_3
    const/4 v5, 0x1

    .local v5, "showLog":Z
    iget v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    if-nez v6, :cond_d

    const/4 v6, 0x1

    if-ne p1, v6, :cond_6

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    const/16 v6, 0x9

    if-ne v0, v6, :cond_8

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->canStartWritingBuddy(Z)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "WritingBuddyImpl"

    const-string v7, "ACTION_HOVER_ENTER"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "WritingBuddyImpl"

    const-string v7, "ACTION_HOVER_ENTER_1"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "WritingBuddyImpl"

    const-string v7, "ACTION_HOVER_ENTER_2"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x6

    const-wide/16 v8, 0x96

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPopupCueShowMSGCalled:Z

    :cond_5
    :goto_3
    const/4 v6, 0x7

    if-ne v0, v6, :cond_6

    const/4 v5, 0x0

    .end local v0    # "action":I
    :cond_6
    :goto_4
    if-eqz v5, :cond_7

    const-string v7, "WritingBuddyImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "state : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p3, :cond_12

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_5
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ".  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :goto_6
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_2

    .restart local v0    # "action":I
    :cond_8
    const/16 v6, 0xa

    if-ne v0, v6, :cond_b

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->canStartWritingBuddy(Z)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "WritingBuddyImpl"

    const-string v7, "ACTION_HOVER_EXIT"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    .local v2, "im":Landroid/hardware/input/InputManager;
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->pointInView(FF)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "WritingBuddyImpl"

    const-string v7, "ACTION_HOVER_EXIT_1"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "HOVER_CANCELED"

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_9
    if-eqz v2, :cond_a

    const/4 v6, -0x1

    const/16 v7, -0x100

    const/16 v8, 0x140

    invoke-virtual {v2, v6, v7, v8}, Landroid/hardware/input/InputManager;->getScanCodeState(III)I

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "WritingBuddyImpl"

    const-string v7, "ACTION_HOVER_EXIT_2"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "HOVER_CANCELED"

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_a
    const-string v6, "WritingBuddyImpl"

    const-string v7, "ACTION_HOVER_EXIT_4"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x7

    const-wide/16 v8, 0x28

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .end local v2    # "im":Landroid/hardware/input/InputManager;
    :cond_b
    if-nez v0, :cond_c

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->canStartWritingBuddy(Z)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "WritingBuddyImpl"

    const-string v7, "ACTION_DOWN"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    goto/16 :goto_3

    :cond_c
    const/4 v6, 0x1

    if-ne v0, v6, :cond_5

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->canStartWritingBuddy(Z)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "WritingBuddyImpl"

    const-string v7, "ACTION_UP"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x8

    const-wide/16 v8, 0x1e

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .end local v0    # "action":I
    :cond_d
    iget v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    const/4 v6, 0x1

    if-ne p1, v6, :cond_e

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .restart local v0    # "action":I
    const/16 v6, 0x9

    if-ne v0, v6, :cond_e

    iget v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mStateResetCnt:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mStateResetCnt:I

    const/4 v7, 0x3

    if-le v6, v7, :cond_e

    const-string v6, "WritingBuddyImpl"

    const-string v7, "Reset state"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mStateResetCnt:I

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->resetState()V

    .end local v0    # "action":I
    :cond_e
    const/4 v6, 0x2

    if-ne p1, v6, :cond_6

    const/4 v6, 0x1

    if-ne p2, v6, :cond_6

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->resetPenPointerIcon()V

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/EditText;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    :cond_f
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_11

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    :goto_7
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/EditText;

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->stopCursorBlink(Z)V

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsCursorBlinkDisabled:Z

    :cond_10
    const-string v6, "OPENED"

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    const-string v6, "OPENED"

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendWatchActionResult(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x5

    const-wide/16 v8, 0x96

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    :cond_11
    const-string v6, "WritingBuddyImpl"

    const-string v7, "Can not find IMM"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_12
    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_13
    const/4 v6, 0x0

    goto/16 :goto_6
.end method

.method private scheduleStateForTemplate(IILandroid/view/MotionEvent;I)Z
    .locals 8
    .param p1, "eventType"    # I
    .param p2, "event"    # I
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;
    .param p4, "arg1"    # I

    .prologue
    invoke-static {p3}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$EventChecker;->isDuplicated(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    iput-object p3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->motionEvent:Landroid/view/MotionEvent;

    const/4 v3, 0x1

    .local v3, "showLog":Z
    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    const/4 v4, 0x2

    if-ne p2, v4, :cond_2

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->resetState()V

    const-string v5, "WritingBuddyImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ". "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    if-nez v4, :cond_d

    const/4 v4, 0x1

    if-ne p1, v4, :cond_4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    const/16 v4, 0x9

    if-ne v0, v4, :cond_6

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->canStartTemplateWritingBuddy(Z)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "WritingBuddyImpl"

    const-string v5, "ACTION_HOVER_ENTER"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x6

    const-wide/16 v6, 0x96

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPopupCueShowMSGCalled:Z

    :cond_3
    :goto_2
    const/4 v4, 0x7

    if-ne v0, v4, :cond_4

    const/4 v3, 0x0

    .end local v0    # "action":I
    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    const-string v5, "WritingBuddyImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ". "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p3, :cond_10

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_0

    .restart local v0    # "action":I
    :cond_6
    const/4 v4, 0x7

    if-ne v0, v4, :cond_7

    const-string v4, "WritingBuddyImpl"

    const-string v5, "ACTION_HOVER_MOVE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "WritingBuddyImpl"

    const-string v5, "ACTION_HOVER_EXIT_2"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2

    :cond_7
    const/16 v4, 0xa

    if-ne v0, v4, :cond_b

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->canStartTemplateWritingBuddy(Z)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "WritingBuddyImpl"

    const-string v5, "ACTION_HOVER_EXIT"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    .local v1, "im":Landroid/hardware/input/InputManager;
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->pointInView(FF)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "WritingBuddyImpl"

    const-string v5, "ACTION_HOVER_EXIT_1"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "HOVER_CANCELED"

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_8
    if-eqz v1, :cond_9

    const/4 v4, -0x1

    const/16 v5, -0x100

    const/16 v6, 0x140

    invoke-virtual {v1, v4, v5, v6}, Landroid/hardware/input/InputManager;->getScanCodeState(III)I

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "WritingBuddyImpl"

    const-string v5, "ACTION_HOVER_EXIT_2"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "HOVER_CANCELED"

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_9
    iget-object v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {v4}, Lcom/samsung/android/writingbuddy/PopupCue;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "WritingBuddyImpl"

    const-string v5, "ACTION_HOVER_EXIT_3"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x7

    const-wide/16 v6, 0x1e

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    :cond_a
    const-string v4, "WritingBuddyImpl"

    const-string v5, "ACTION_HOVER_EXIT_4"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x7

    const-wide/16 v6, 0x1e

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .end local v1    # "im":Landroid/hardware/input/InputManager;
    :cond_b
    if-nez v0, :cond_c

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->canStartTemplateWritingBuddy(Z)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "WritingBuddyImpl"

    const-string v5, "ACTION_DOWN"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    goto/16 :goto_2

    :cond_c
    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->canStartTemplateWritingBuddy(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "WritingBuddyImpl"

    const-string v5, "ACTION_UP"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x8

    const-wide/16 v6, 0x1e

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .end local v0    # "action":I
    :cond_d
    iget v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    if-ne p1, v4, :cond_e

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .restart local v0    # "action":I
    const/16 v4, 0x9

    if-ne v0, v4, :cond_4

    iget v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mStateResetCnt:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mStateResetCnt:I

    const/4 v5, 0x3

    if-le v4, v5, :cond_4

    const-string v4, "WritingBuddyImpl"

    const-string v5, "Reset state"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iput v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mStateResetCnt:I

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->resetState()V

    goto/16 :goto_3

    .end local v0    # "action":I
    :cond_e
    const/4 v4, 0x2

    if-ne p1, v4, :cond_4

    const/4 v4, 0x1

    if-ne p2, v4, :cond_4

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_f

    new-instance v4, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$6;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$6;-><init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Landroid/os/Handler;)V

    invoke-virtual {v2, v4}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput(Landroid/os/ResultReceiver;)Z

    :goto_5
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    const-string v4, "OPENED"

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    const-string v4, "OPENED"

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendWatchActionResult(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->resetPenPointerIcon()V

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x5

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    :cond_f
    const-string v4, "WritingBuddyImpl"

    const-string v5, "Can not find IMM"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_4
.end method

.method private sendActionButtonResult(I)V
    .locals 4
    .param p1, "action"    # I

    .prologue
    const/4 v3, 0x2

    iget-boolean v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsReceiveActionButtonEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPrivateCommandListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .local v0, "actionString":Ljava/lang/String;
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    const-string v0, "ACTION_SEND"

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPrivateCommandListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;

    const/4 v2, 0x0

    invoke-interface {v1, v3, v0, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;->onPrivateCommand(ILjava/lang/CharSequence;Landroid/os/Bundle;)Z

    .end local v0    # "actionString":Ljava/lang/String;
    :cond_0
    return-void

    .restart local v0    # "actionString":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    const-string v0, "ACTION_SEARCH"

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_3

    const-string v0, "ACTION_GO"

    goto :goto_0

    :cond_3
    const/16 v1, 0x37f

    if-ne p1, v1, :cond_4

    const-string v0, "ACTION_IMAGE"

    goto :goto_0

    :cond_4
    const-string v0, "ACTION_DONE"

    goto :goto_0
.end method

.method private sendHelpModeResult(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/CharSequence;

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsHelpModeEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;->onTextReceived(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private sendMMSDataDelete(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/CharSequence;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;->onTextReceived(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private sendWatchActionResult(Ljava/lang/CharSequence;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/CharSequence;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsWatchActionEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPrivateCommandListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPrivateCommandListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;->onPrivateCommand(ILjava/lang/CharSequence;Landroid/os/Bundle;)Z

    :cond_0
    return-void
.end method

.method private setupInRuntime()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    .local v4, "result":Z
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .local v3, "mCurrentUserId":I
    const-string v0, ""

    .local v0, "CURRENT_SERVICE_NAME":Ljava/lang/String;
    const-string v5, "WritingBuddyImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " setupInRuntime userId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch v3, :sswitch_data_0

    :goto_0
    :try_start_0
    const-string v0, "writingbuddymanagerservice"

    :goto_1
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .local v1, "binder":Landroid/os/IBinder;
    invoke-static {v1}, Lcom/samsung/android/writingbuddy/IWritingBuddyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    const-string v5, "WritingBuddyImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setupInRuntime binder, binder:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", CURRENT_SERVICE_NAME:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    if-nez v5, :cond_0

    const-string v5, "WritingBuddyImpl"

    const-string v6, "Failed to get WritingBuddyService"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditCount:I

    return v4

    .end local v1    # "binder":Landroid/os/IBinder;
    :sswitch_0
    :try_start_1
    const-string v0, "writingbuddymanagerserviceknox0"

    goto :goto_1

    :sswitch_1
    const-string v0, "writingbuddymanagerserviceknox1"

    goto :goto_1

    :sswitch_2
    const-string v0, "writingbuddymanagerserviceknox2"

    goto :goto_1

    :sswitch_3
    const-string v0, "writingbuddymanagerserviceknox3"

    goto :goto_1

    :sswitch_4
    const-string v0, "writingbuddymanagerserviceknox4"

    goto :goto_1

    :sswitch_5
    const-string v0, "writingbuddymanagerserviceknox5"

    goto :goto_1

    :sswitch_6
    const-string v0, "writingbuddymanagerservicerestricted0"

    goto :goto_1

    :sswitch_7
    const-string v0, "writingbuddymanagerservicerestricted1"

    goto :goto_1

    :sswitch_8
    const-string v0, "writingbuddymanagerservicerestricted2"

    goto :goto_1

    :sswitch_9
    const-string v0, "writingbuddymanagerservicerestricted3"

    goto :goto_1

    :sswitch_a
    const-string v0, "writingbuddymanagerservicerestricted4"

    goto :goto_1

    :sswitch_b
    const-string v0, "writingbuddymanagerservicerestricted5"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "WritingBuddyImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get ActivityManager :: get default binder to avoid error, mWBManager:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "writingbuddymanagerservice"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .restart local v1    # "binder":Landroid/os/IBinder;
    iget-object v5, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    if-nez v5, :cond_0

    invoke-static {v1}, Lcom/samsung/android/writingbuddy/IWritingBuddyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_6
        0xb -> :sswitch_7
        0xc -> :sswitch_8
        0xd -> :sswitch_9
        0xe -> :sswitch_a
        0xf -> :sswitch_b
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0x68 -> :sswitch_4
        0x69 -> :sswitch_5
    .end sparse-switch
.end method

.method private showWritingBuddy()Z
    .locals 33

    .prologue
    const/16 v30, 0x0

    .local v30, "result":Z
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setupInRuntime()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    .local v6, "wndToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    .local v5, "appToken":Landroid/os/IBinder;
    const/4 v7, 0x0

    .local v7, "wndRect":Landroid/graphics/Rect;
    const/4 v8, 0x0

    .local v8, "scrRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v8

    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    new-instance v10, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v10}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .local v10, "et":Landroid/view/inputmethod/ExtractedText;
    new-instance v11, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v11}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .local v11, "ei":Landroid/view/inputmethod/EditorInfo;
    new-instance v32, Landroid/view/inputmethod/EditorInfo;

    invoke-direct/range {v32 .. v32}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .local v32, "upView_ei":Landroid/view/inputmethod/EditorInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/EditText;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    move-object/from16 v29, v0

    check-cast v29, Landroid/widget/EditText;

    .local v29, "parent":Landroid/widget/EditText;
    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v10}, Landroid/widget/EditText;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->extractEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v2, Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->getWBTextBuffer(Z)Ljava/lang/CharSequence;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditCount:I

    const/16 v27, 0x0

    .local v27, "flagPrevNext":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v31

    .local v31, "upView":Landroid/view/View;
    if-eqz v31, :cond_3

    move-object/from16 v0, v31

    instance-of v2, v0, Landroid/widget/EditText;

    if-eqz v2, :cond_3

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->isWritingBuddyEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v2, v31

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->extractEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    move-object/from16 v0, v32

    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->isPasswordInputType(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    .local v28, "grandParent":Landroid/view/ViewParent;
    if-eqz v28, :cond_2

    move-object/from16 v0, v28

    instance-of v2, v0, Landroid/widget/NumberPicker;

    if-nez v2, :cond_3

    :cond_2
    or-int/lit8 v27, v27, 0x1

    .end local v28    # "grandParent":Landroid/view/ViewParent;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v25

    .local v25, "downView":Landroid/view/View;
    if-eqz v25, :cond_4

    move-object/from16 v0, v25

    instance-of v2, v0, Landroid/widget/EditText;

    if-eqz v2, :cond_4

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->isWritingBuddyEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, v11, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->isPasswordInputType(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_4

    or-int/lit8 v27, v27, 0x2

    :cond_4
    iget-object v2, v11, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_5

    iget-object v2, v11, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v3, "flagPrevNext"

    move/from16 v0, v27

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .end local v25    # "downView":Landroid/view/View;
    .end local v27    # "flagPrevNext":I
    .end local v29    # "parent":Landroid/widget/EditText;
    .end local v31    # "upView":Landroid/view/View;
    :cond_5
    iget-object v2, v11, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v11, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_7

    iget-object v2, v11, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v3, "hasFocus"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    iget v2, v11, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v2, v2, 0xff0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_10

    const-string v2, "com.sec.android.app.sbrowser"

    iget-object v3, v11, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_10

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIgnoreSizeChange:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mInitRect:Landroid/graphics/Rect;

    :goto_4
    const/4 v9, 0x0

    .local v9, "aniInitRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {v2}, Lcom/samsung/android/writingbuddy/PopupCue;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {v2}, Lcom/samsung/android/writingbuddy/PopupCue;->getRectInAnchor()Landroid/graphics/Rect;

    move-result-object v9

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    and-int/lit16 v2, v2, 0xfff

    shl-int/lit8 v2, v2, 0x14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    and-int/lit16 v3, v3, 0xfff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mShowCnt:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mShowCnt:I

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getModeFlag()I

    move-result v12

    .local v12, "flag":I
    and-int/lit8 v2, v12, 0x8

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    :cond_8
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mServiceCallback:Lcom/samsung/android/writingbuddy/IWritingBuddyClient;

    invoke-interface {v4}, Lcom/samsung/android/writingbuddy/IWritingBuddyClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface/range {v2 .. v12}, Lcom/samsung/android/writingbuddy/IWritingBuddyManager;->show(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/inputmethod/ExtractedText;Landroid/view/inputmethod/EditorInfo;I)V

    const-string v2, "WritingBuddyImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startWritingBuddy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->reportCurrentWritingBuddyView(Landroid/view/View;)V

    const-string v2, "WritingBuddyImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Report current WB : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->registerPositionChangeListener()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/EditText;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->hideCursorControllers()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->clearAllMultiSelection()Z

    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mCanShowAutoCompletePopup:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v30, 0x1

    .end local v9    # "aniInitRect":Landroid/graphics/Rect;
    .end local v10    # "et":Landroid/view/inputmethod/ExtractedText;
    .end local v11    # "ei":Landroid/view/inputmethod/EditorInfo;
    .end local v12    # "flag":I
    .end local v32    # "upView_ei":Landroid/view/inputmethod/EditorInfo;
    :cond_a
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x7

    const-wide/16 v14, 0x3e8

    invoke-virtual {v2, v3, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move/from16 v2, v30

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_7
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_8
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v8

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_7

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_8

    .restart local v10    # "et":Landroid/view/inputmethod/ExtractedText;
    .restart local v11    # "ei":Landroid/view/inputmethod/EditorInfo;
    .restart local v32    # "upView_ei":Landroid/view/inputmethod/EditorInfo;
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIgnoreSizeChange:Z

    goto/16 :goto_4

    .restart local v9    # "aniInitRect":Landroid/graphics/Rect;
    :cond_11
    new-instance v9, Landroid/graphics/Rect;

    .end local v9    # "aniInitRect":Landroid/graphics/Rect;
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .restart local v9    # "aniInitRect":Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_5

    .restart local v12    # "flag":I
    :catch_0
    move-exception v26

    .local v26, "e":Landroid/os/RemoteException;
    const-string v2, "WritingBuddyImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not start WritingBuddy, RemoteException happened "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->resetState()V

    const/16 v30, 0x0

    goto/16 :goto_6

    .end local v9    # "aniInitRect":Landroid/graphics/Rect;
    .end local v10    # "et":Landroid/view/inputmethod/ExtractedText;
    .end local v11    # "ei":Landroid/view/inputmethod/EditorInfo;
    .end local v12    # "flag":I
    .end local v26    # "e":Landroid/os/RemoteException;
    .end local v32    # "upView_ei":Landroid/view/inputmethod/EditorInfo;
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    new-instance v10, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v10}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .restart local v10    # "et":Landroid/view/inputmethod/ExtractedText;
    new-instance v11, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v11}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .restart local v11    # "ei":Landroid/view/inputmethod/EditorInfo;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditorType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    const/4 v2, 0x2

    iput v2, v11, Landroid/view/inputmethod/EditorInfo;->inputType:I

    :goto_9
    const/4 v2, 0x6

    iput v2, v11, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextUpdateListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextUpdateListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;

    iget-object v3, v10, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;->onTextUpdated(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v10, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    :cond_13
    const/4 v9, 0x0

    .restart local v9    # "aniInitRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {v2}, Lcom/samsung/android/writingbuddy/PopupCue;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {v2}, Lcom/samsung/android/writingbuddy/PopupCue;->getRectInAnchor()Landroid/graphics/Rect;

    move-result-object v9

    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    and-int/lit16 v2, v2, 0xfff

    shl-int/lit8 v2, v2, 0x14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    and-int/lit16 v3, v3, 0xfff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mShowCnt:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mShowCnt:I

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getModeFlag()I

    move-result v12

    .restart local v12    # "flag":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->hideCursorControllers(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "WritingBuddyImpl"

    const-string v3, "hideCursorControllers "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mServiceCallback:Lcom/samsung/android/writingbuddy/IWritingBuddyClient;

    invoke-interface {v2}, Lcom/samsung/android/writingbuddy/IWritingBuddyClient;->asBinder()Landroid/os/IBinder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardTemplate:I

    move/from16 v21, v0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move/from16 v24, v12

    invoke-interface/range {v13 .. v24}, Lcom/samsung/android/writingbuddy/IWritingBuddyManager;->showTemplate(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/inputmethod/ExtractedText;Landroid/view/inputmethod/EditorInfo;I)V

    const-string v2, "WritingBuddyImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startWritingBuddy. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->reportCurrentWritingBuddyView(Landroid/view/View;)V

    const-string v2, "WritingBuddyImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Report current WB : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v30, 0x1

    goto/16 :goto_6

    .end local v9    # "aniInitRect":Landroid/graphics/Rect;
    .end local v12    # "flag":I
    :cond_15
    const/4 v2, 0x1

    iput v2, v11, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto/16 :goto_9

    .restart local v9    # "aniInitRect":Landroid/graphics/Rect;
    :cond_16
    new-instance v9, Landroid/graphics/Rect;

    .end local v9    # "aniInitRect":Landroid/graphics/Rect;
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .restart local v9    # "aniInitRect":Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_a

    .restart local v12    # "flag":I
    :catch_1
    move-exception v26

    .restart local v26    # "e":Landroid/os/RemoteException;
    const-string v2, "WritingBuddyImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not start WritingBuddy, RemoteException happened"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->resetState()V

    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private showWritingBuddyCue()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v7, 0x6

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPopupCueShowMSGCalled:Z

    iget-object v5, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-nez v5, :cond_0

    const-string v5, "WritingBuddyImpl"

    const-string v6, "Caencel to show writingbuddy cue because mParentView is null"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    move v2, v6

    .local v2, "isShown":Z
    :cond_1
    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v2

    :cond_2
    if-nez v2, :cond_3

    const-string v5, "WritingBuddyImpl"

    const-string v6, "Caencel to show writingbuddy cue."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget v5, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_7

    iget-object v5, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_1
    invoke-direct {p0, v5, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v4

    .local v4, "visualRect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_2
    invoke-direct {p0, v5}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    .local v3, "viewRect":Landroid/graphics/Rect;
    const/16 v0, 0x64

    .local v0, "bottomOffset":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/lit8 v7, v7, -0x64

    if-lt v5, v7, :cond_4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    if-ge v5, v7, :cond_7

    :cond_4
    const-string v5, "WritingBuddyImpl"

    const-string v6, "Caencel to show writingbuddy cue. viewRect is smaller than wndRect"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "WritingBuddyImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "viewRect : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v0    # "bottomOffset":I
    .end local v3    # "viewRect":Landroid/graphics/Rect;
    .end local v4    # "visualRect":Landroid/graphics/Rect;
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_1

    .restart local v4    # "visualRect":Landroid/graphics/Rect;
    :cond_6
    iget-object v5, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_2

    .end local v4    # "visualRect":Landroid/graphics/Rect;
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->createPopupCue()V

    const/4 v1, 0x0

    .local v1, "cueType":I
    iget v5, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    if-ne v5, v6, :cond_9

    iget-boolean v5, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsMultiLineEditor:Z

    if-eqz v5, :cond_8

    const/4 v1, 0x2

    :goto_3
    iget-object v5, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->motionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5, v1, v6}, Lcom/samsung/android/writingbuddy/PopupCue;->show(ILandroid/view/MotionEvent;)V

    const-string v5, "HOVERED"

    invoke-direct {p0, v5}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x1

    goto :goto_3

    :cond_9
    const/4 v1, 0x3

    goto :goto_3
.end method

.method private startWritingBuddyService()V
    .locals 7

    .prologue
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .local v3, "mCurrentUserId":I
    const-string v4, "WritingBuddyImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting writingbuddy service id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .local v2, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.samsung.android.writingbuddyservice"

    const-string v6, "com.samsung.android.writingbuddyservice.WritingBuddyServiceStarter"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    :goto_0
    if-eqz v0, :cond_0

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "mCurrentUserId":I
    :cond_0
    :goto_1
    return-void

    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "mCurrentUserId":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "mCurrentUserId":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "WritingBuddyImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting writingbuddy service failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private unregisterPositionChangeListener()V
    .locals 3

    .prologue
    iget v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v1, Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setWBPositionListenerEnalbed(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    goto :goto_0
.end method


# virtual methods
.method public canShowAutoCompletePopup()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    if-ne v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mCanShowAutoCompletePopup:Z

    :cond_0
    return v0
.end method

.method public finish()V
    .locals 2

    .prologue
    const-string v0, "WritingBuddyImpl"

    const-string v1, "Finish WritingBuddy"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPerformingAction:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsImageWritingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "WritingBuddyImpl"

    const-string v1, "Cancel finish."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->finish(Z)V

    goto :goto_0
.end method

.method public finish(Z)V
    .locals 3
    .param p1, "immediate"    # Z

    .prologue
    const-string v0, "WritingBuddyImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditorType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditorType:I

    return v0
.end method

.method public getExpectedTargetWBRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getTargetWBRect(Landroid/view/View;I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getImageModePenDrawing()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsImageModePenDrawing:Z

    return v0
.end method

.method public getTargetWBRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsWaitingHideSoftInput:Z

    if-nez v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    const/16 v2, 0x9

    if-ne v0, v2, :cond_2

    const-string v2, "WritingBuddyImpl"

    const-string v3, "handleMotionEvent ACTION_HOVER_ENTER"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setupInRuntime()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->startWritingBuddyService()V

    :cond_2
    const/4 v2, 0x1

    invoke-direct {p0, v2, v1, p2, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->scheduleState(IILandroid/view/MotionEvent;I)Z

    move-result v1

    goto :goto_0
.end method

.method public handleWindowFocusChanged(Z)Z
    .locals 6
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/high16 v3, -0x1000000

    const/4 v2, 0x0

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {v0}, Lcom/samsung/android/writingbuddy/PopupCue;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {v0, v2}, Lcom/samsung/android/writingbuddy/PopupCue;->dismiss(Z)V

    iput-object v5, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPopupCueShowMSGCalled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPopupCueShowMSGCalled:Z

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->isWBRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWindowMode:I

    and-int/2addr v0, v3

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getWindowMode()I

    move-result v1

    and-int/2addr v1, v3

    if-eq v0, v1, :cond_2

    const-string v0, "WritingBuddyImpl"

    const-string v1, "Window mode changed."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->finish(Z)V

    :cond_2
    :goto_0
    return v2

    :cond_3
    iget v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {v0}, Lcom/samsung/android/writingbuddy/PopupCue;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {v0, v2}, Lcom/samsung/android/writingbuddy/PopupCue;->dismiss(Z)V

    iput-object v5, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    :cond_4
    iget v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    if-ne v0, v4, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->isWBRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "WritingBuddyImpl"

    const-string v1, "Update."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->isWBRunning()Z

    move-result v0

    return v0
.end method

.method public notifyPositionChanged(I)V
    .locals 8
    .param p1, "what"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v3, "WritingBuddyImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyPositionChanged code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    .local v2, "wndRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .local v1, "scrRect":Landroid/graphics/Rect;
    iget v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    if-ne v3, v6, :cond_3

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_0
    invoke-direct {p0, v3, v7}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_1
    invoke-direct {p0, v3, v7}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

    :goto_2
    iget-boolean v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIgnoreSizeChange:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mInitRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-eq v3, v4, :cond_6

    .end local v1    # "scrRect":Landroid/graphics/Rect;
    .end local v2    # "wndRect":Landroid/graphics/Rect;
    :cond_0
    :goto_3
    return-void

    .restart local v1    # "scrRect":Landroid/graphics/Rect;
    .restart local v2    # "wndRect":Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_4
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_5
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_4

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_5

    :cond_6
    sget-boolean v3, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string v3, "WritingBuddyImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update Position. wnd : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " scr : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    iget v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    invoke-interface {v3, v4, v2, v1}, Lcom/samsung/android/writingbuddy/IWritingBuddyManager;->updatePosition(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    if-ne v3, v6, :cond_0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mScrRectUpdated:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xa

    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WritingBuddyImpl"

    const-string v4, "Can not start WritingBuddy, RemoteException happened"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public onImageInserted(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsImageWritingEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mImageWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnImageWritingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mImageWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnImageWritingListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnImageWritingListener;->onImageReceived(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onResultReceived(Landroid/os/Bundle;I)V
    .locals 12
    .param p1, "result"    # Landroid/os/Bundle;
    .param p2, "receivedClientID"    # I

    .prologue
    const-string v8, "WritingBuddyImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onResultReceived "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " receivedClientID : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " current ClientID : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v8, "service_cb_client_changed"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_6

    const-string v8, "WritingBuddyImpl"

    const-string v9, "onResultReceived SERVICE_CB_CLIENT_CHANGED "

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v8, v8, Landroid/widget/EditText;

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsCursorBlinkDisabled:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v8, Landroid/widget/EditText;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->stopCursorBlink(Z)V

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsCursorBlinkDisabled:Z

    :cond_2
    iget v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    iget v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditCount:I

    if-lez v8, :cond_3

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->isShown()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWindowVisibility()I

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v8, Landroid/widget/EditText;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->applyWBTextBuffer(Z)Z

    :cond_3
    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v8, Landroid/widget/EditText;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setWBTextBuffer(Ljava/lang/CharSequence;)V

    const/4 v8, 0x0

    iput v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditCount:I

    :cond_4
    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    iget-object v9, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getCurrentWritingBuddyView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->reportCurrentWritingBuddyView(Landroid/view/View;)V

    const-string v8, "WritingBuddyImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Report current WB : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->unregisterPositionChangeListener()V

    const/4 v8, 0x0

    iput v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    :cond_6
    const-string v8, "service_cb_inflate_done"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_7

    const-string v8, "WritingBuddyImpl"

    const-string v9, "onResultReceived SERVICE_CB_INFLATE_DONE "

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, v8, v9, v10, p2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->scheduleState(IILandroid/view/MotionEvent;I)Z

    :cond_7
    const-string v8, "service_cb_writing_done"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .local v7, "resultValue":I
    if-lez v7, :cond_a

    const-string v8, "WritingBuddyImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onResultReceived SERVICE_CB_WRITING_DONE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mCanShowAutoCompletePopup:Z

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v8, v8, Landroid/widget/EditText;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_13

    const/4 v4, 0x1

    .local v4, "isShown":Z
    :goto_1
    if-eqz v4, :cond_8

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    instance-of v8, v8, Landroid/view/View;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->isShown()Z

    move-result v4

    :cond_8
    iget v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditCount:I

    if-lez v8, :cond_9

    if-eqz v4, :cond_9

    const/4 v8, 0x1

    if-ne v7, v8, :cond_14

    const/4 v3, 0x1

    .local v3, "initBuffer":Z
    :goto_2
    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v8, v3}, Landroid/widget/EditText;->applyWBTextBuffer(Z)Z

    .end local v3    # "initBuffer":Z
    :cond_9
    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v8, Landroid/widget/EditText;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setWBTextBuffer(Ljava/lang/CharSequence;)V

    const/4 v8, 0x0

    iput v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditCount:I

    .end local v4    # "isShown":Z
    :cond_a
    const-string v8, "service_cb_perform_editor_action"

    const/4 v9, -0x1

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .local v2, "editorAction":I
    if-ltz v2, :cond_c

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v8, v8, Landroid/widget/EditText;

    if-eqz v8, :cond_b

    const-string v8, "WritingBuddyImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onResultReceived SERVICE_CB_PERFORM_EDITOR_ACTION "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPerformingAction:Z

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v8, v2}, Landroid/widget/EditText;->performWBEditorAction(I)V

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPerformingAction:Z

    :cond_b
    invoke-direct {p0, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendActionButtonResult(I)V

    :cond_c
    const-string v8, "service_cb_closed"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_e

    const-string v8, "WritingBuddyImpl"

    const-string v9, "onResultReceived SERVICE_CB_CLOSED "

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "service_cb_init_text"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "modifedText":Ljava/lang/CharSequence;
    const-string v8, "service_cb_closed"

    const/4 v9, -0x1

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .local v6, "modifyBuffer":I
    const/4 v8, 0x1

    if-ne v6, v8, :cond_d

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setWBTextBuffer(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v8, Landroid/widget/EditText;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->applyWBTextBuffer(Z)Z

    :cond_d
    const/4 v8, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-direct {p0, v8, v9, v10, p2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->scheduleState(IILandroid/view/MotionEvent;I)Z

    const-string v8, "CLOSED"

    invoke-direct {p0, v8}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    const-string v8, "CLOSED"

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendWatchActionResult(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    .end local v5    # "modifedText":Ljava/lang/CharSequence;
    .end local v6    # "modifyBuffer":I
    :cond_e
    const-string v8, "service_cb_private"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_f

    const-string v8, "service_cb_private"

    invoke-direct {p0, v8, p1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendWatchActionResult(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    :cond_f
    iget-boolean v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsMathWritingEnabled:Z

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    if-eqz v8, :cond_10

    const-string v8, "service_cb_math_writing_result"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "cs":Ljava/lang/CharSequence;
    if-eqz v1, :cond_10

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    invoke-interface {v8, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;->onTextReceived(Ljava/lang/CharSequence;)V

    sget-boolean v8, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    if-eqz v8, :cond_10

    const-string v8, "WritingBuddyImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onResultReceived SERVICE_CB_MATH_WRITING_RESULT : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "cs":Ljava/lang/CharSequence;
    :cond_10
    iget-boolean v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsHelpModeEnabled:Z

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    if-eqz v8, :cond_11

    const-string v8, "service_cb_help_mode_result"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1    # "cs":Ljava/lang/CharSequence;
    if-eqz v1, :cond_11

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    invoke-interface {v8, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;->onTextReceived(Ljava/lang/CharSequence;)V

    sget-boolean v8, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    if-eqz v8, :cond_11

    const-string v8, "WritingBuddyImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onResultReceived SERVICE_CB_HELP_MODE_RESULT : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "cs":Ljava/lang/CharSequence;
    :cond_11
    const-string v8, "service_cb_mms_data_delete"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_12

    const-string v8, "WritingBuddyImpl"

    const-string v9, "onResultReceived SERVICE_CB_MMS_DATA_DELETE "

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "MMS_DATA_DELETE"

    invoke-direct {p0, v8}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendMMSDataDelete(Ljava/lang/CharSequence;)V

    :cond_12
    const-string v8, "service_cb_drawing_mode_set"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .local v0, "ImageMode":I
    if-lez v0, :cond_0

    const-string v8, "WritingBuddyImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onResultReceived SERVICE_CB_DRAWING_MODE_SET : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    if-ne v0, v8, :cond_15

    const/4 v8, 0x1

    :goto_3
    iput-boolean v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsImageModePenDrawing:Z

    iget-boolean v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsReceiveActionButtonEnabled:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPrivateCommandListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsImageModePenDrawing:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPrivateCommandListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;

    const/4 v9, 0x2

    const-string v10, "DRAWING_MODE"

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;->onPrivateCommand(ILjava/lang/CharSequence;Landroid/os/Bundle;)Z

    goto/16 :goto_0

    .end local v0    # "ImageMode":I
    .end local v2    # "editorAction":I
    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_1

    .restart local v4    # "isShown":Z
    :cond_14
    const/4 v3, 0x0

    goto/16 :goto_2

    .end local v4    # "isShown":Z
    .restart local v0    # "ImageMode":I
    .restart local v2    # "editorAction":I
    :cond_15
    const/4 v8, 0x0

    goto :goto_3
.end method

.method public onTextDeleted(II)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    sget-boolean v2, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "WritingBuddyImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTextDeleted() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/EditText;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v2, Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->getWBTextBuffer(Z)Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "textBuffer":Ljava/lang/CharSequence;
    sget-boolean v2, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v3, "WritingBuddyImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTextDeleted() : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    instance-of v2, v1, Landroid/text/Editable;

    if-eqz v2, :cond_6

    move-object v0, v1

    check-cast v0, Landroid/text/Editable;

    .local v0, "editable":Landroid/text/Editable;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int v3, p2, p1

    if-ge v2, v3, :cond_4

    .end local v0    # "editable":Landroid/text/Editable;
    .end local v1    # "textBuffer":Ljava/lang/CharSequence;
    :cond_2
    :goto_1
    return-void

    .restart local v1    # "textBuffer":Ljava/lang/CharSequence;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .restart local v0    # "editable":Landroid/text/Editable;
    :cond_4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v2, p2, :cond_5

    const-string v2, "WritingBuddyImpl"

    const-string v3, "onTextDeleted() : end is out of bound textBuffer length"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .end local v0    # "editable":Landroid/text/Editable;
    :cond_6
    iget v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditCount:I

    goto :goto_1
.end method

.method public onTextInserted(ILjava/lang/CharSequence;I)V
    .locals 6
    .param p1, "where"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "nextCursor"    # I

    .prologue
    const/4 v3, 0x0

    sget-boolean v2, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v4, "WritingBuddyImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTextInserted() : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    invoke-interface {v2, p2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;->onTextReceived(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v2, v3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/EditText;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v2, Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->getWBTextBuffer(Z)Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "textBuffer":Ljava/lang/CharSequence;
    sget-boolean v2, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "WritingBuddyImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTextInserted() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    instance-of v2, v1, Landroid/text/Editable;

    if-eqz v2, :cond_8

    move-object v0, v1

    check-cast v0, Landroid/text/Editable;

    .local v0, "editable":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v2, p1, :cond_6

    const-string v2, "WritingBuddyImpl"

    const-string v3, "onTextInserted() : where is out of bound editor length"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v2, p3, :cond_7

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int p3, v2, v3

    const-string v2, "WritingBuddyImpl"

    const-string v3, "onTextInserted() : nextCursor position is more than total text length, set nextCursor to end of text"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-static {v0, p3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .end local v0    # "editable":Landroid/text/Editable;
    :cond_8
    if-eqz p2, :cond_9

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditCount:I

    :cond_9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "TEXT_INSERTED"

    invoke-direct {p0, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public onUpdateDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v3, "WritingBuddyImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUpdateDialog code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    .local v2, "wndRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .local v1, "scrRect":Landroid/graphics/Rect;
    iget v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    if-ne v3, v6, :cond_4

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_0
    invoke-direct {p0, v3, v7}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_1
    invoke-direct {p0, v3, v7}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

    :goto_2
    sget-boolean v3, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "WritingBuddyImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update onUpdateDialog. wnd : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " scr : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    iget v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    invoke-interface {v3, v4, v2, v1}, Lcom/samsung/android/writingbuddy/IWritingBuddyManager;->updateDialog(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "scrRect":Landroid/graphics/Rect;
    .end local v2    # "wndRect":Landroid/graphics/Rect;
    :cond_1
    :goto_3
    return-void

    .restart local v1    # "scrRect":Landroid/graphics/Rect;
    .restart local v2    # "wndRect":Landroid/graphics/Rect;
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_4
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_5
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_5

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WritingBuddyImpl"

    const-string v4, "Can not start WritingBuddy, RemoteException happened"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    return-void
.end method

.method public setBoardTemplate(I)V
    .locals 2
    .param p1, "template"    # I

    .prologue
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-lt p1, v0, :cond_0

    const/16 v0, 0x15

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Template Type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardTemplate:I

    return-void
.end method

.method public setBoardType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The board type should be one of TYPE_BOARD_EDITOR or TYPE_BOARD_TEMPLATE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    return-void
.end method

.method public setEditorType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You should set the Drawable, String, subDescription and Object in Param"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditorType:I

    return-void
.end method

.method public setImageWritingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsImageWritingEnabled:Z

    return-void
.end method

.method public setMathWritingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsMathWritingEnabled:Z

    return-void
.end method

.method public setOnImageWritingListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnImageWritingListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnImageWritingListener;

    .prologue
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setImageWritingEnabled(Z)V

    iput-object p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mImageWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnImageWritingListener;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnPrivateCommandListner(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPrivateCommandListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;

    return-void
.end method

.method public setOnTextUpdateListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextUpdateListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;

    return-void
.end method

.method public setOnTextWritingListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string v0, "WritingBuddyImpl"

    const-string v1, "Reset parent View"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    iput-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    iput-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    iput-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    iput-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_0
.end method

.method public setPrivateCommnad(Ljava/lang/String;)V
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    iput-object p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPrivateCMD:Ljava/lang/String;

    const-string v0, "HELP_MODE"

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPrivateCMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsHelpModeEnabled:Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "WATCH_ACTION"

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPrivateCMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsWatchActionEnabled:Z

    goto :goto_0

    :cond_1
    const-string v0, "RECEIVE_ACTION_BUTTON"

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPrivateCMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsReceiveActionButtonEnabled:Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The privateCommand should be  one of PRIVATE_CMD_HELP_MODE,PRIVATE_CMD_WACTH_ACTION or PRIVATE_CMD_RECEIVE_ACTION_BUTTON."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public show()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public showPopup()V
    .locals 4

    .prologue
    const-string v2, "WritingBuddyImpl"

    const-string v3, "showPopup"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, "style":I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    iget v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    invoke-interface {v2, v3, v1}, Lcom/samsung/android/writingbuddy/IWritingBuddyManager;->showPopup(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WritingBuddyImpl"

    const-string v3, "Can not start showPopup, RemoteException happened"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
