.class public final Lcom/android/providers/media/RingtonePickerActivity;
.super Landroid/app/Activity;
.source "RingtonePickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Ljava/lang/Runnable;


# static fields
.field private static final CALL_SETTING:Ljava/lang/String; = "call_setting"

.field private static final CONTACTS:Ljava/lang/String; = "com.android.contacts"

.field private static final DELAY_MS_SELECTION_PLAYED:I = 0x12c

.field private static final MESSAGE:Ljava/lang/String; = "com.android.mms"

.field private static final POS_UNKNOWN:I = -0x1

.field private static final SAVE_CLICKED_POS:Ljava/lang/String; = "clicked_pos"

.field private static final SPLANNER:Ljava/lang/String; = "splanner"

.field private static final TAG:Ljava/lang/String; = "RingtonePickerActivity"

.field private static mHandler:Landroid/os/Handler;

.field private static sPlayingRingtone:Landroid/media/Ringtone;


# instance fields
.field private mAddItem:Landroid/widget/TextView;

.field private mAddPos:I

.field private mAppName:Ljava/lang/String;

.field private mAttributesFlags:I

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCheckedItem:I

.field private mClickedPos:I

.field private mCurrentRingtone:Landroid/media/Ringtone;

.field private mCursor:Landroid/database/Cursor;

.field private mDefaultItem:Landroid/widget/CheckedTextView;

.field private mDefaultRingtone:Landroid/media/Ringtone;

.field private mDefaultRingtonePos:I

.field private mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private mExistingUri:Landroid/net/Uri;

.field private mHasAddItem:Z

.field private mHasDefaultItem:Z

.field private mHasSilentItem:Z

.field private mListAdapter:Landroid/widget/ListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mOffset:I

.field private mRingtoneClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mRingtoneManager:Landroid/media/RingtoneManager;

.field private mSampleRingtonePos:I

.field private mSaveRingtone:Ljava/lang/Runnable;

.field private mSilentItem:Landroid/widget/CheckedTextView;

.field private mSilentPos:I

.field private mStaticItemCount:I

.field private mStreamType:I

.field private mSync:Z

.field private mType:I

.field private mUriForDefaultItem:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/providers/media/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 94
    iput v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSilentPos:I

    .line 97
    iput v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtonePos:I

    .line 100
    iput v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    .line 103
    iput v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSampleRingtonePos:I

    .line 120
    iput v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mOffset:I

    .line 122
    iput-boolean v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mHasAddItem:Z

    .line 124
    iput v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAddPos:I

    .line 126
    iput-boolean v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSync:Z

    .line 128
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mStreamType:I

    .line 156
    iput-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSilentItem:Landroid/widget/CheckedTextView;

    .line 157
    iput-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultItem:Landroid/widget/CheckedTextView;

    .line 158
    iput-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAddItem:Landroid/widget/TextView;

    .line 159
    iput-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAppName:Ljava/lang/String;

    .line 161
    new-instance v0, Lcom/android/providers/media/RingtonePickerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/providers/media/RingtonePickerActivity$1;-><init>(Lcom/android/providers/media/RingtonePickerActivity;)V

    iput-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 202
    iput-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 204
    new-instance v0, Lcom/android/providers/media/RingtonePickerActivity$2;

    invoke-direct {v0, p0}, Lcom/android/providers/media/RingtonePickerActivity$2;-><init>(Lcom/android/providers/media/RingtonePickerActivity;)V

    iput-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSaveRingtone:Ljava/lang/Runnable;

    .line 599
    new-instance v0, Lcom/android/providers/media/RingtonePickerActivity$5;

    invoke-direct {v0, p0}, Lcom/android/providers/media/RingtonePickerActivity$5;-><init>(Lcom/android/providers/media/RingtonePickerActivity;)V

    iput-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/media/RingtonePickerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/media/RingtonePickerActivity;

    .prologue
    .line 66
    iget v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/providers/media/RingtonePickerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/media/RingtonePickerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/providers/media/RingtonePickerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/media/RingtonePickerActivity;

    .prologue
    .line 66
    iget v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAddPos:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/providers/media/RingtonePickerActivity;Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/media/RingtonePickerActivity;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/net/Uri;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/providers/media/RingtonePickerActivity;->canSetRingtone(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/providers/media/RingtonePickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/media/RingtonePickerActivity;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/providers/media/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/providers/media/RingtonePickerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/media/RingtonePickerActivity;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mHasAddItem:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/providers/media/RingtonePickerActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/media/RingtonePickerActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/providers/media/RingtonePickerActivity;->playRingtone(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/providers/media/RingtonePickerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/media/RingtonePickerActivity;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSync:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/providers/media/RingtonePickerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/media/RingtonePickerActivity;

    .prologue
    .line 66
    iget v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSampleRingtonePos:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/media/RingtonePickerActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAddItem:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/providers/media/RingtonePickerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/media/RingtonePickerActivity;

    .prologue
    .line 66
    iget v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtonePos:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/media/RingtonePickerActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/widget/CheckedTextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/media/RingtonePickerActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultItem:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/providers/media/RingtonePickerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/media/RingtonePickerActivity;

    .prologue
    .line 66
    iget v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSilentPos:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/widget/CheckedTextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/media/RingtonePickerActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSilentItem:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/providers/media/RingtonePickerActivity;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/media/RingtonePickerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/providers/media/RingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/media/RingtoneManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/media/RingtonePickerActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    return-object v0
.end method

.method private addAddItem(Landroid/widget/ListView;)V
    .locals 3
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAddItem:Landroid/widget/TextView;

    .line 540
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAddItem:Landroid/widget/TextView;

    const v1, 0x7f07000d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 542
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAddItem:Landroid/widget/TextView;

    new-instance v1, Lcom/android/providers/media/RingtonePickerActivity$4;

    invoke-direct {v1, p0}, Lcom/android/providers/media/RingtonePickerActivity$4;-><init>(Lcom/android/providers/media/RingtonePickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 553
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAddItem:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 554
    return-void
.end method

.method private addDefaultRingtoneItem(Landroid/widget/ListView;)I
    .locals 3
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultItem:Landroid/widget/CheckedTextView;

    .line 506
    iget v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mType:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_2

    .line 508
    :cond_0
    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/android/providers/media/RingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultItem:Landroid/widget/CheckedTextView;

    const v1, 0x7f07000b

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 519
    :goto_0
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultItem:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 520
    iget v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mStaticItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mStaticItemCount:I

    .line 521
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultItem:Landroid/widget/CheckedTextView;

    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(I)V

    goto :goto_0

    .line 513
    :cond_2
    iget v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 514
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultItem:Landroid/widget/CheckedTextView;

    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(I)V

    goto :goto_0

    .line 516
    :cond_3
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultItem:Landroid/widget/CheckedTextView;

    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(I)V

    goto :goto_0
.end method

.method private addSilentItem(Landroid/widget/ListView;)I
    .locals 3
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSilentItem:Landroid/widget/CheckedTextView;

    .line 529
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSilentItem:Landroid/widget/CheckedTextView;

    const v1, 0x10403a5

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 530
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSilentItem:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 531
    iget v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mStaticItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mStaticItemCount:I

    .line 532
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private canSetRingtone(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 898
    if-eqz p2, :cond_7

    .line 899
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "content://media/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 901
    invoke-direct {p0, p1, p2}, Lcom/android/providers/media/RingtonePickerActivity;->getAudioFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 902
    .local v1, "path":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/providers/media/RingtonePickerActivity;->getDrmMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 903
    .local v0, "mimeType":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-nez v6, :cond_2

    .line 904
    const-string v6, "RingtonePickerActivity"

    const-string v7, "mDrmClient is null!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_0
    :goto_0
    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    .line 925
    .local v3, "rtTemp":Landroid/media/Ringtone;
    if-nez v3, :cond_7

    .line 926
    const-string v5, "RingtonePickerActivity"

    const-string v6, "getRingtone() null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    .end local v0    # "mimeType":Ljava/lang/String;
    .end local v1    # "path":Ljava/lang/String;
    .end local v3    # "rtTemp":Landroid/media/Ringtone;
    :cond_1
    :goto_1
    return v4

    .line 905
    .restart local v0    # "mimeType":Ljava/lang/String;
    .restart local v1    # "path":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    if-nez v0, :cond_4

    .line 906
    :cond_3
    const-string v6, "RingtonePickerActivity"

    const-string v7, "path or mimeType is null!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 907
    :cond_4
    iget-object v6, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v6, v1, v0}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 908
    invoke-direct {p0, p1, v1}, Lcom/android/providers/media/RingtonePickerActivity;->isOmaForwardLockType(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 909
    const-string v6, "RingtonePickerActivity"

    const-string v7, "FL DRM File. Check if RingtoneManager.getRingtone() is null!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 911
    :cond_5
    const-string v6, "DCM"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v0, :cond_1

    const-string v6, "audio/isma"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 913
    iget-object v6, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    const/4 v7, 0x2

    invoke-virtual {v6, p2, v7}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Landroid/net/Uri;I)I

    move-result v2

    .line 915
    .local v2, "rightSts":I
    if-eqz v2, :cond_6

    .line 916
    const-string v5, "RingtonePickerActivity"

    const-string v6, "PR DRM File Ringtone Rights Invalid !!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    move v4, v5

    .line 919
    goto :goto_1

    .end local v0    # "mimeType":Ljava/lang/String;
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "rightSts":I
    :cond_7
    move v4, v5

    .line 931
    goto :goto_1
.end method

.method private getAudioFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 820
    const/4 v7, 0x0

    .line 821
    .local v7, "path":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v9, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v1

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 825
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 826
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 827
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    .line 829
    :cond_0
    if-eqz v6, :cond_1

    if-eqz v3, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 830
    :cond_1
    :goto_0
    return-object v7

    .line 829
    :catch_0
    move-exception v8

    .local v8, "x2":Ljava/lang/Throwable;
    invoke-virtual {v3, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v8    # "x2":Ljava/lang/Throwable;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 821
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 829
    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_1
    if-eqz v6, :cond_3

    if-eqz v3, :cond_4

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_2
    throw v0

    :catch_2
    move-exception v8

    .restart local v8    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v3, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v8    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private getDrmMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 834
    if-nez p1, :cond_1

    .line 859
    :cond_0
    :goto_0
    return-object v0

    .line 837
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 838
    const-string v1, ".dcf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 839
    const-string v0, "application/vnd.oma.drm.content"

    goto :goto_0

    .line 840
    :cond_2
    const-string v1, ".pya"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 841
    const-string v0, "audio/vnd.ms-playready.media.pya"

    goto :goto_0

    .line 842
    :cond_3
    const-string v1, ".wmv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 843
    const-string v0, "video/x-ms-wmv"

    goto :goto_0

    .line 844
    :cond_4
    const-string v1, ".wma"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 845
    const-string v0, "audio/x-ms-wma"

    goto :goto_0

    .line 846
    :cond_5
    const-string v1, ".pyv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 847
    const-string v0, "video/vnd.ms-playready.media.pyv"

    goto :goto_0

    .line 848
    :cond_6
    const-string v1, ".avi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 849
    const-string v0, "video/mux/AVI"

    goto :goto_0

    .line 850
    :cond_7
    const-string v1, ".mkv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 851
    const-string v0, "video/mux/MKV"

    goto :goto_0

    .line 852
    :cond_8
    const-string v1, ".divx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 853
    const-string v0, "video/mux/DivX"

    goto :goto_0

    .line 854
    :cond_9
    const-string v1, ".isma"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 855
    const-string v0, "audio/isma"

    goto :goto_0

    .line 856
    :cond_a
    const-string v1, ".ismv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 857
    const-string v0, "video/ismv"

    goto :goto_0
.end method

.method private getListPosition(I)I
    .locals 1
    .param p1, "ringtoneManagerPos"    # I

    .prologue
    .line 762
    if-gez p1, :cond_0

    .line 764
    .end local p1    # "ringtoneManagerPos":I
    :goto_0
    return p1

    .restart local p1    # "ringtoneManagerPos":I
    :cond_0
    iget v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mStaticItemCount:I

    add-int/2addr p1, v0

    goto :goto_0
.end method

.method private getRingtoneManagerPosition(I)I
    .locals 1
    .param p1, "listPos"    # I

    .prologue
    .line 756
    iget v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mStaticItemCount:I

    sub-int v0, p1, v0

    return v0
.end method

.method private isOmaForwardLockType(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 864
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v6, 0xe

    const-string v7, "application/vnd.oma.drm.content"

    invoke-direct {v2, v6, v7}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 866
    .local v2, "infoRequest":Landroid/drm/DrmInfoRequest;
    const-string v6, "drm_path"

    invoke-virtual {v2, v6, p2}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 867
    iget-object v6, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-nez v6, :cond_1

    const/4 v0, 0x0

    .line 869
    .local v0, "drmInfo":Landroid/drm/DrmInfo;
    :goto_0
    if-eqz v0, :cond_3

    .line 870
    const-string v6, "status"

    invoke-virtual {v0, v6}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 871
    .local v4, "status":Ljava/lang/String;
    const-string v6, "success"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 872
    const-string v6, "RingtonePickerActivity"

    const-string v7, "isOmaForwardLockType: acquireDrmInfo Success"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    const-string v6, "type"

    invoke-virtual {v0, v6}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 883
    .local v3, "objType":Ljava/lang/Object;
    if-nez v3, :cond_4

    .line 884
    const-string v6, "RingtonePickerActivity"

    const-string v7, "isOmaForwardLockType: objType is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    .end local v3    # "objType":Ljava/lang/Object;
    .end local v4    # "status":Ljava/lang/String;
    :cond_0
    :goto_1
    return v5

    .line 867
    .end local v0    # "drmInfo":Landroid/drm/DrmInfo;
    :cond_1
    iget-object v6, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v6, v2}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    goto :goto_0

    .line 874
    .restart local v0    # "drmInfo":Landroid/drm/DrmInfo;
    .restart local v4    # "status":Ljava/lang/String;
    :cond_2
    const-string v6, "RingtonePickerActivity"

    const-string v7, "isOmaForwardLockType: acquireDrmInfo Fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 878
    .end local v4    # "status":Ljava/lang/String;
    :cond_3
    const-string v6, "RingtonePickerActivity"

    const-string v7, "isOmaForwardLockType: acquireDrmInfo Fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 888
    .restart local v3    # "objType":Ljava/lang/Object;
    .restart local v4    # "status":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 889
    .local v1, "drmType":I
    const-string v6, "RingtonePickerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "drmType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    if-nez v1, :cond_0

    .line 891
    const-string v5, "RingtonePickerActivity"

    const-string v6, "isOmaForwardLockType: this is FL"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private isRTL()Z
    .locals 2

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v1, 0x80

    .line 449
    .local v0, "direction":I
    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isUserInCall(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 935
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 936
    .local v0, "audioMode":I
    const-string v1, "RingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUserInCall - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private playRingtone(II)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "delayMs"    # I

    .prologue
    .line 616
    invoke-direct {p0}, Lcom/android/providers/media/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 617
    iget v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSilentPos:I

    if-ne p1, v0, :cond_0

    .line 631
    :goto_0
    return-void

    .line 619
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/media/RingtonePickerActivity;->isUserInCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 620
    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07000e

    invoke-virtual {p0, v1}, Lcom/android/providers/media/RingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 625
    :cond_1
    invoke-direct {p0}, Lcom/android/providers/media/RingtonePickerActivity;->requestAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 626
    sget-object v0, Lcom/android/providers/media/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 627
    iput p1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSampleRingtonePos:I

    .line 628
    sget-object v0, Lcom/android/providers/media/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 630
    :cond_2
    const-string v0, "RingtonePickerActivity"

    const-string v1, "fail to request Audio Focus"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private requestAudioFocus()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 768
    const-string v2, "RingtonePickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestAudioFocus() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mStreamType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const/4 v0, 0x0

    .line 771
    .local v0, "focusResult":I
    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isFMActive()Z

    move-result v2

    if-ne v2, v1, :cond_1

    .line 772
    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mStreamType:I

    invoke-virtual {v2, v3, v4, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 779
    :goto_0
    if-nez v0, :cond_0

    .line 780
    const-string v1, "RingtonePickerActivity"

    const-string v2, "requestAudioFocus is failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const/4 v1, 0x0

    .line 784
    :cond_0
    return v1

    .line 775
    :cond_1
    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mStreamType:I

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    goto :goto_0
.end method

.method private saveAnyPlayingRingtone()V
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    sput-object v0, Lcom/android/providers/media/RingtonePickerActivity;->sPlayingRingtone:Landroid/media/Ringtone;

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mCurrentRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mCurrentRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mCurrentRingtone:Landroid/media/Ringtone;

    sput-object v0, Lcom/android/providers/media/RingtonePickerActivity;->sPlayingRingtone:Landroid/media/Ringtone;

    goto :goto_0
.end method

.method private stopAnyPlayingRingtone()V
    .locals 1

    .prologue
    .line 740
    sget-object v0, Lcom/android/providers/media/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 741
    sget-object v0, Lcom/android/providers/media/RingtonePickerActivity;->sPlayingRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/providers/media/RingtonePickerActivity;->sPlayingRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    sget-object v0, Lcom/android/providers/media/RingtonePickerActivity;->sPlayingRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 744
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/media/RingtonePickerActivity;->sPlayingRingtone:Landroid/media/Ringtone;

    .line 746
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 747
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 750
    :cond_1
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v0, :cond_2

    .line 751
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 753
    :cond_2
    return-void
.end method


# virtual methods
.method public getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 789
    const-string v8, "content://media/internal/audio/media"

    .line 790
    .local v8, "uriString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 791
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 793
    const-string v0, "RingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The path is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const-string v0, "RingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The uri is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    if-eqz v1, :cond_3

    .line 797
    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data= \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 801
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 802
    const-string v0, "RingtonePickerActivity"

    const-string v2, " The path is exist in the DB"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 804
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 805
    .local v7, "j":I
    const-string v0, "RingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The id is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 809
    const-string v0, "RingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The uri is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 812
    if-eqz v6, :cond_0

    if-eqz v4, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    move-object v0, v1

    .line 815
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "j":I
    :goto_1
    return-object v0

    .line 812
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "j":I
    :catch_0
    move-exception v9

    .local v9, "x2":Ljava/lang/Throwable;
    invoke-virtual {v4, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v9    # "x2":Ljava/lang/Throwable;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "j":I
    :cond_2
    if-eqz v6, :cond_3

    if-eqz v4, :cond_4

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 814
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_3
    :goto_2
    const-string v0, "RingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not Found The uri is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    const-string v0, ""

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 812
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v9

    .restart local v9    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v4, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v9    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 797
    :catch_2
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 812
    :catchall_0
    move-exception v2

    move-object v4, v0

    move-object v0, v2

    :goto_3
    if-eqz v6, :cond_5

    if-eqz v4, :cond_6

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_4
    throw v0

    :catch_3
    move-exception v9

    .restart local v9    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v4, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v9    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 558
    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v2}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 559
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 560
    .local v0, "resultIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 562
    .local v1, "uri":Landroid/net/Uri;
    iget v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    iget v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v2, v3, :cond_0

    .line 564
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 572
    :goto_0
    const-string v2, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 574
    invoke-direct {p0, p0, v1}, Lcom/android/providers/media/RingtonePickerActivity;->canSetRingtone(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 575
    const v2, 0x7f070009

    invoke-virtual {p0, v2}, Lcom/android/providers/media/RingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 577
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/providers/media/RingtonePickerActivity;->setResult(I)V

    .line 582
    :goto_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 583
    return-void

    .line 565
    :cond_0
    iget v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    iget v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSilentPos:I

    if-ne v2, v3, :cond_1

    .line 567
    const/4 v1, 0x0

    goto :goto_0

    .line 569
    :cond_1
    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    invoke-direct {p0, v3}, Lcom/android/providers/media/RingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 579
    :cond_2
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/providers/media/RingtonePickerActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 455
    iget-object v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAppName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAppName:Ljava/lang/String;

    const-string v4, "splanner"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "LAND"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_CONFIG_HIDE_STATUS_BAR"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 458
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 459
    .local v1, "orientation":I
    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 460
    .local v2, "window":Landroid/view/Window;
    if-eqz v2, :cond_1

    .line 461
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 462
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_1

    .line 463
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 464
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 465
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 466
    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 475
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "orientation":I
    .end local v2    # "window":Landroid/view/Window;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 476
    return-void

    .line 468
    .restart local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v1    # "orientation":I
    .restart local v2    # "window":Landroid/view/Window;
    :cond_2
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, -0x401

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 469
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v3, v3, -0x3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 470
    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 27
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 216
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 217
    const-string v3, "RingtonePickerActivity"

    const-string v4, "onCreate()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/RingtonePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    .line 222
    .local v15, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/drm/DrmManagerClient;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 228
    const-string v3, "useLightTheme"

    const/4 v4, 0x0

    invoke-virtual {v15, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 229
    .local v16, "isLightTheme":Z
    if-eqz v16, :cond_0

    .line 230
    const-string v3, "RingtonePickerActivity"

    const-string v4, "onCreate() : useLightTheme is true so set light theme"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    const-string v3, "from"

    invoke-virtual {v15, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mAppName:Ljava/lang/String;

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/RingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "current_sec_active_themepackage"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 236
    .local v14, "currentTheme":Ljava/lang/String;
    const-string v3, "RingtonePickerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/media/RingtonePickerActivity;->mAppName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const v23, 0x103012b

    .line 238
    .local v23, "style":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mAppName:Ljava/lang/String;

    if-eqz v3, :cond_2

    if-nez v14, :cond_2

    .line 239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mAppName:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 254
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/providers/media/RingtonePickerActivity;->setTheme(I)V

    .line 256
    const-string v3, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v4, 0x1

    invoke-virtual {v15, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mHasDefaultItem:Z

    .line 257
    const-string v3, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {v15, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 258
    const-string v3, "RingtonePickerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EXTRA_RINGTONE_DEFAULT_URI - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/media/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v3, :cond_3

    .line 260
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 263
    :cond_3
    if-eqz p1, :cond_4

    .line 264
    const-string v3, "clicked_pos"

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    .line 267
    :cond_4
    const-string v3, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v4, 0x1

    invoke-virtual {v15, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mHasSilentItem:Z

    .line 270
    const-string v3, "neutral_button"

    const/4 v4, 0x0

    invoke-virtual {v15, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 271
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mHasAddItem:Z

    .line 274
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mAttributesFlags:I

    const-string v4, "android.intent.extra.ringtone.AUDIO_ATTRIBUTES_FLAGS"

    const/4 v5, 0x0

    invoke-virtual {v15, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    or-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mAttributesFlags:I

    .line 280
    new-instance v3, Landroid/media/RingtoneManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/RingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 281
    const-string v3, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/providers/media/RingtonePickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 284
    const-string v3, "android.intent.extra.ringtone.TYPE"

    const/4 v4, -0x1

    invoke-virtual {v15, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mType:I

    .line 285
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mType:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    .line 286
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mType:I

    invoke-virtual {v3, v4}, Landroid/media/RingtoneManager;->setType(I)V

    .line 289
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v3}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    .line 296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v3}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mStreamType:I

    .line 298
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mStreamType:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/providers/media/RingtonePickerActivity;->setVolumeControlStream(I)V

    .line 301
    const-string v3, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v15, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    .line 302
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-eqz v3, :cond_7

    .line 303
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    const-string v4, "highlight_offset"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 304
    .local v18, "offset":Ljava/lang/String;
    if-eqz v18, :cond_7

    .line 305
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mOffset:I

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?highlight_offset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 307
    .local v20, "paramaterString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    .line 308
    .local v22, "splitUri":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    .line 313
    .end local v18    # "offset":Ljava/lang/String;
    .end local v20    # "paramaterString":Ljava/lang/String;
    .end local v22    # "splitUri":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mAppName:Ljava/lang/String;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mAppName:Ljava/lang/String;

    const-string v4, "splanner"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    const-string v3, "LAND"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_CONFIG_HIDE_STATUS_BAR"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/RingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    .line 317
    .local v19, "orientation":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/RingtonePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v26

    .line 318
    .local v26, "window":Landroid/view/Window;
    if-eqz v26, :cond_9

    .line 319
    invoke-virtual/range {v26 .. v26}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v17

    .line 320
    .local v17, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v17, :cond_9

    .line 321
    const/4 v3, 0x2

    move/from16 v0, v19

    if-ne v0, v3, :cond_12

    .line 322
    move-object/from16 v0, v17

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x400

    move-object/from16 v0, v17

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 323
    move-object/from16 v0, v17

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v17

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 324
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 334
    .end local v17    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v19    # "orientation":I
    .end local v26    # "window":Landroid/view/Window;
    :cond_9
    :goto_2
    const/high16 v3, 0x7f040000

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/providers/media/RingtonePickerActivity;->setContentView(I)V

    .line 336
    const v3, 0x102000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/providers/media/RingtonePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    .line 337
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/RingtonePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 342
    .local v21, "resources":Landroid/content/res/Resources;
    const v3, 0x7f060001

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 344
    .local v6, "divider_inset":I
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/media/RingtonePickerActivity;->isRTL()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 345
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 350
    .local v2, "listDivider":Landroid/graphics/drawable/InsetDrawable;
    :goto_3
    if-eqz v2, :cond_a

    .line 351
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 354
    :cond_a
    const/16 v24, 0x0

    .line 355
    .local v24, "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mAppName:Ljava/lang/String;

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mAppName:Ljava/lang/String;

    const-string v4, "call_setting"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 356
    const v3, 0x7f07000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/providers/media/RingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 360
    :goto_4
    if-nez v24, :cond_b

    .line 361
    const v3, 0x10403a6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/providers/media/RingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 364
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/providers/media/RingtonePickerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/RingtonePickerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v13

    .line 366
    .local v13, "actionBar":Landroid/app/ActionBar;
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 367
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 368
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 369
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_15

    .line 370
    new-instance v7, Landroid/widget/SimpleCursorAdapter;

    const v9, 0x7f040003

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/providers/media/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    new-array v11, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v11, v3

    const/4 v3, 0x1

    new-array v12, v3, [I

    const/4 v3, 0x0

    const v4, 0x1020014

    aput v4, v12, v3

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListAdapter:Landroid/widget/ListAdapter;

    .line 377
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v3, :cond_c

    .line 378
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/media/RingtonePickerActivity;->addDefaultRingtoneItem(Landroid/widget/ListView;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtonePos:I

    .line 380
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 381
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtonePos:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    .line 382
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultItem:Landroid/widget/CheckedTextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 386
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mHasSilentItem:Z

    if-eqz v3, :cond_d

    .line 387
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/media/RingtonePickerActivity;->addSilentItem(Landroid/widget/ListView;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mSilentPos:I

    .line 390
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-nez v3, :cond_d

    .line 391
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mSilentPos:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    .line 392
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mSilentItem:Landroid/widget/CheckedTextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 396
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mHasAddItem:Z

    if-eqz v3, :cond_e

    .line 397
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/media/RingtonePickerActivity;->addAddItem(Landroid/widget/ListView;)V

    .line 400
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    .line 402
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_f

    .line 403
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/media/RingtonePickerActivity;->getListPosition(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    .line 407
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-eqz v3, :cond_10

    .line 408
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_10

    .line 409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/providers/media/RingtonePickerActivity;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    .line 410
    .local v25, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/media/RingtonePickerActivity;->getListPosition(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    .line 411
    const-string v3, "RingtonePickerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrepareListView : mClickedPos : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .end local v25    # "uri":Landroid/net/Uri;
    :cond_10
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mCheckedItem:I

    .line 418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 419
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mCheckedItem:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 420
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mCheckedItem:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 425
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    new-instance v4, Lcom/android/providers/media/RingtonePickerActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/providers/media/RingtonePickerActivity$3;-><init>(Lcom/android/providers/media/RingtonePickerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 441
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mHasAddItem:Z

    if-eqz v3, :cond_11

    .line 442
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mStaticItemCount:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mAddPos:I

    .line 444
    :cond_11
    return-void

    .line 239
    .end local v2    # "listDivider":Landroid/graphics/drawable/InsetDrawable;
    .end local v6    # "divider_inset":I
    .end local v13    # "actionBar":Landroid/app/ActionBar;
    .end local v21    # "resources":Landroid/content/res/Resources;
    .end local v24    # "title":Ljava/lang/CharSequence;
    :sswitch_0
    const-string v5, "splanner"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    goto/16 :goto_0

    :sswitch_1
    const-string v5, "call_setting"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_2
    const-string v5, "com.android.mms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x2

    goto/16 :goto_0

    :sswitch_3
    const-string v5, "com.android.contacts"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x3

    goto/16 :goto_0

    .line 241
    :pswitch_0
    const v23, 0x7f080001

    .line 242
    goto/16 :goto_1

    .line 244
    :pswitch_1
    const v23, 0x7f080004

    .line 245
    goto/16 :goto_1

    .line 247
    :pswitch_2
    const v23, 0x7f080007

    .line 248
    goto/16 :goto_1

    .line 250
    :pswitch_3
    const v23, 0x7f08000a

    goto/16 :goto_1

    .line 326
    .restart local v17    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v19    # "orientation":I
    .restart local v26    # "window":Landroid/view/Window;
    :cond_12
    move-object/from16 v0, v17

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, -0x401

    move-object/from16 v0, v17

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 327
    move-object/from16 v0, v17

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v3, v3, -0x3

    move-object/from16 v0, v17

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 328
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_2

    .line 347
    .end local v17    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v19    # "orientation":I
    .end local v26    # "window":Landroid/view/Window;
    .restart local v6    # "divider_inset":I
    .restart local v21    # "resources":Landroid/content/res/Resources;
    :cond_13
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .restart local v2    # "listDivider":Landroid/graphics/drawable/InsetDrawable;
    goto/16 :goto_3

    .line 358
    .restart local v24    # "title":Ljava/lang/CharSequence;
    :cond_14
    const-string v3, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {v15, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v24

    goto/16 :goto_4

    .line 422
    .restart local v13    # "actionBar":Landroid/app/ActionBar;
    :cond_15
    const-string v3, "RingtonePickerActivity"

    const-string v4, "Cursor is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 239
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7348f601 -> :sswitch_0
        -0x3260a241 -> :sswitch_3
        -0x29760a19 -> :sswitch_2
        0x323f16f -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 707
    const-string v0, "RingtonePickerActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSync:Z

    .line 710
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 713
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 715
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 716
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 719
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 720
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 589
    iget-boolean v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mHasAddItem:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAddPos:I

    if-ne p3, v0, :cond_0

    .line 590
    invoke-direct {p0}, Lcom/android/providers/media/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 594
    :goto_0
    return-void

    .line 592
    :cond_0
    const/16 v0, 0x12c

    invoke-direct {p0, p3, v0}, Lcom/android/providers/media/RingtonePickerActivity;->playRingtone(II)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AdapterView;

    .prologue
    .line 597
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 480
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 481
    sget-object v0, Lcom/android/providers/media/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSaveRingtone:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 482
    sget-object v0, Lcom/android/providers/media/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSaveRingtone:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 483
    const/4 v0, 0x1

    .line 485
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 724
    const-string v0, "RingtonePickerActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 726
    invoke-direct {p0}, Lcom/android/providers/media/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 728
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 729
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 678
    const-string v0, "RingtonePickerActivity"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 680
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 690
    const-string v0, "RingtonePickerActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 692
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 490
    const-string v0, "RingtonePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const-string v0, "clicked_pos"

    iget v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 492
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 493
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 684
    const-string v0, "RingtonePickerActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 686
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 696
    const-string v0, "RingtonePickerActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 698
    invoke-direct {p0}, Lcom/android/providers/media/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 702
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 703
    return-void

    .line 700
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/media/RingtonePickerActivity;->saveAnyPlayingRingtone()V

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 636
    iget v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSampleRingtonePos:I

    iget v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v1, v2, :cond_4

    .line 637
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_0

    .line 638
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 644
    :cond_0
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_1

    .line 645
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v2}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 647
    :cond_1
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 648
    .local v0, "ringtone":Landroid/media/Ringtone;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mCurrentRingtone:Landroid/media/Ringtone;

    .line 655
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 665
    :goto_0
    if-eqz v0, :cond_3

    .line 666
    iget v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAttributesFlags:I

    if-eqz v1, :cond_2

    .line 667
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-virtual {v0}, Landroid/media/Ringtone;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    iget v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAttributesFlags:I

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 672
    :cond_2
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 674
    :cond_3
    return-void

    .line 657
    .end local v0    # "ringtone":Landroid/media/Ringtone;
    :cond_4
    iget v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSampleRingtonePos:I

    iget v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mCheckedItem:I

    if-ne v1, v2, :cond_5

    .line 658
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSampleRingtonePos:I

    invoke-direct {p0, v2}, Lcom/android/providers/media/RingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v2

    iget v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mOffset:I

    invoke-virtual {v1, v2, v3}, Landroid/media/RingtoneManager;->getRingtone(II)Landroid/media/Ringtone;

    move-result-object v0

    .line 659
    .restart local v0    # "ringtone":Landroid/media/Ringtone;
    iput-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mCurrentRingtone:Landroid/media/Ringtone;

    goto :goto_0

    .line 661
    .end local v0    # "ringtone":Landroid/media/Ringtone;
    :cond_5
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSampleRingtonePos:I

    invoke-direct {p0, v2}, Lcom/android/providers/media/RingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/RingtoneManager;->getRingtone(II)Landroid/media/Ringtone;

    move-result-object v0

    .line 662
    .restart local v0    # "ringtone":Landroid/media/Ringtone;
    iput-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mCurrentRingtone:Landroid/media/Ringtone;

    goto :goto_0
.end method
