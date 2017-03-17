.class public Landroid/widget/EditText;
.super Landroid/widget/TextView;
.source "EditText.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sKnownAppList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final MSG_TYPE_FOCUSED:I

.field private final MSG_TYPE_NOT_FOCUSED:I

.field private mCfmsService:Landroid/os/CustomFrequencyManager;

.field private mFocused:Z

.field private mHandler:Landroid/os/Handler;

.field private mKnownAppSipScenario:Z

.field private mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

.field private mSipTextLen:I

.field private mSipTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 298
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/widget/EditText;->sKnownAppList:Ljava/util/HashSet;

    .line 301
    sget-object v0, Landroid/widget/EditText;->sKnownAppList:Ljava/util/HashSet;

    const-string v1, "com.google.android.talk"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 302
    sget-object v0, Landroid/widget/EditText;->sKnownAppList:Ljava/util/HashSet;

    const-string v1, "com.facebook.katana"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 307
    const-class v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/EditText;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 192
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/EditText;->MSG_TYPE_FOCUSED:I

    .line 194
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/EditText;->MSG_TYPE_NOT_FOCUSED:I

    .line 276
    iput v1, p0, Landroid/widget/EditText;->mSipTextLen:I

    .line 278
    iput-boolean v1, p0, Landroid/widget/EditText;->mFocused:Z

    .line 280
    new-instance v0, Landroid/widget/EditText$2;

    invoke-direct {v0, p0}, Landroid/widget/EditText$2;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Landroid/widget/EditText;->mSipTextWatcher:Landroid/text/TextWatcher;

    .line 305
    iput-boolean v1, p0, Landroid/widget/EditText;->mKnownAppSipScenario:Z

    .line 97
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Landroid/widget/EditText;->sKnownAppList:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/EditText;)Landroid/text/TextWatcher;
    .locals 1
    .param p0, "x0"    # Landroid/widget/EditText;

    .prologue
    .line 72
    iget-object v0, p0, Landroid/widget/EditText;->mSipTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$202(Landroid/widget/EditText;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/EditText;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Landroid/widget/EditText;->mFocused:Z

    return p1
.end method

.method static synthetic access$300(Landroid/widget/EditText;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/EditText;

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/widget/EditText;->updateSipFocusStatus()V

    return-void
.end method

.method static synthetic access$402(Landroid/widget/EditText;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/EditText;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Landroid/widget/EditText;->mSipTextLen:I

    return p1
.end method

.method private updateSipFocusStatus()V
    .locals 4

    .prologue
    .line 310
    iget-boolean v1, p0, Landroid/widget/EditText;->mFocused:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/widget/EditText;->mSipTextLen:I

    if-lez v1, :cond_2

    const/4 v0, 0x1

    .line 311
    .local v0, "current":Z
    :goto_0
    iget-boolean v1, p0, Landroid/widget/EditText;->mKnownAppSipScenario:Z

    if-eq v1, v0, :cond_1

    .line 312
    iput-boolean v0, p0, Landroid/widget/EditText;->mKnownAppSipScenario:Z

    .line 313
    iget-object v1, p0, Landroid/widget/EditText;->mCfmsService:Landroid/os/CustomFrequencyManager;

    if-nez v1, :cond_0

    .line 314
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "CustomFrequencyManagerService"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/CustomFrequencyManager;

    iput-object v1, p0, Landroid/widget/EditText;->mCfmsService:Landroid/os/CustomFrequencyManager;

    .line 316
    :cond_0
    iget-object v2, p0, Landroid/widget/EditText;->mCfmsService:Landroid/os/CustomFrequencyManager;

    const-string v3, "KNOWN_APP_SIP"

    iget-boolean v1, p0, Landroid/widget/EditText;->mKnownAppSipScenario:Z

    if-eqz v1, :cond_3

    const-string v1, "1"

    :goto_1
    invoke-virtual {v2, v3, v1}, Landroid/os/CustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_1
    return-void

    .line 310
    .end local v0    # "current":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 316
    .restart local v0    # "current":Z
    :cond_3
    const-string v1, "0"

    goto :goto_1
.end method


# virtual methods
.method public dispatchWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 242
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchWindowFocusChanged(Z)V

    .line 245
    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 247
    invoke-virtual {p0}, Landroid/widget/EditText;->getSecClipboardEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Landroid/widget/EditText;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/widget/EditText;->mPasteEventListener:Landroid/widget/TextView$TextViewClipboardEventListener;

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/ClipboardExManager;->updateFilter(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)V

    .line 253
    :cond_0
    return-void
.end method

.method public extendSelection(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 145
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 170
    const-class v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultEditable()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public hideCursorControllers()V
    .locals 0

    .prologue
    .line 273
    invoke-super {p0}, Landroid/widget/TextView;->hideCursorControllers()V

    .line 274
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x2

    .line 201
    if-eqz p1, :cond_0

    .line 203
    invoke-virtual {p0}, Landroid/widget/EditText;->getSecClipboardEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, p0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    invoke-virtual {p0}, Landroid/widget/EditText;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    invoke-virtual {p0}, Landroid/widget/EditText;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/EditText;->mPasteEventListener:Landroid/widget/TextView$TextViewClipboardEventListener;

    invoke-virtual {v2, v1, v3}, Landroid/sec/clipboard/ClipboardExManager;->updateFilter(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)V

    .line 211
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 213
    sget-object v2, Landroid/widget/EditText;->sKnownAppList:Ljava/util/HashSet;

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 214
    iget-object v2, p0, Landroid/widget/EditText;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_1

    .line 215
    new-instance v2, Landroid/widget/EditText$1;

    invoke-direct {v2, p0}, Landroid/widget/EditText$1;-><init>(Landroid/widget/EditText;)V

    iput-object v2, p0, Landroid/widget/EditText;->mHandler:Landroid/os/Handler;

    .line 231
    :cond_1
    iget-object v2, p0, Landroid/widget/EditText;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 232
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 233
    iget-object v1, p0, Landroid/widget/EditText;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 235
    .end local v0    # "msg":Landroid/os/Message;
    :cond_3
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 328
    invoke-virtual {p0}, Landroid/widget/EditText;->isHoveringUIEnabled()Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 330
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->isTextEditable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    new-instance v1, Landroid/widget/EditText$3;

    invoke-direct {v1, p0}, Landroid/widget/EditText$3;-><init>(Landroid/widget/EditText;)V

    iput-object v1, p0, Landroid/widget/EditText;->mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    .line 340
    iget-object v1, p0, Landroid/widget/EditText;->mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 341
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 342
    iget-object v1, p0, Landroid/widget/EditText;->mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 343
    iget-object v1, p0, Landroid/widget/EditText;->mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 344
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/EditText;->mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    .line 346
    :cond_2
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TextView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hover icon is failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 159
    const-class v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 160
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 165
    const-class v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 166
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 176
    packed-switch p1, :pswitch_data_0

    .line 187
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v1

    :goto_0
    return v1

    .line 178
    :pswitch_0
    if-eqz p2, :cond_1

    const-string v1, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 180
    .local v0, "text":Ljava/lang/CharSequence;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 181
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 182
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 184
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 178
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 176
    :pswitch_data_0
    .packed-switch 0x200000
        :pswitch_0
    .end packed-switch
.end method

.method public selectAll()V
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 138
    return-void
.end method

.method public setCursorColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 264
    invoke-super {p0, p1}, Landroid/widget/TextView;->setCursorColor(I)V

    .line 265
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 2
    .param p1, "ellipsis"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 149
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EditText cannot use the ellipsize mode TextUtils.TruncateAt.MARQUEE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 154
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 131
    return-void
.end method

.method public setSelection(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "stop"    # I

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 124
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 116
    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 117
    return-void
.end method
