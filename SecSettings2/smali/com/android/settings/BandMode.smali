.class public Lcom/android/settings_ex/BandMode;
.super Landroid/app/Activity;
.source "BandMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/BandMode$BandListItem;
    }
.end annotation


# static fields
.field private static final BAND_NAMES:[Ljava/lang/String;


# instance fields
.field private mBandList:Landroid/widget/ListView;

.field private mBandListAdapter:Landroid/widget/ArrayAdapter;

.field private mBandSelectionHandler:Landroid/widget/AdapterView$OnItemClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mProgressPanel:Landroid/content/DialogInterface;

.field private mTargetBand:Lcom/android/settings_ex/BandMode$BandListItem;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Automatic"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EURO Band"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "USA Band"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "JAPAN Band"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AUS Band"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "AUS2 Band"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/BandMode;->BAND_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/android/settings_ex/BandMode;->mTargetBand:Lcom/android/settings_ex/BandMode$BandListItem;

    .line 54
    iput-object v0, p0, Lcom/android/settings_ex/BandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 79
    new-instance v0, Lcom/android/settings_ex/BandMode$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/BandMode$1;-><init>(Lcom/android/settings_ex/BandMode;)V

    iput-object v0, p0, Lcom/android/settings_ex/BandMode;->mBandSelectionHandler:Landroid/widget/AdapterView$OnItemClickListener;

    .line 192
    new-instance v0, Lcom/android/settings_ex/BandMode$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/BandMode$2;-><init>(Lcom/android/settings_ex/BandMode;)V

    iput-object v0, p0, Lcom/android/settings_ex/BandMode;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/BandMode;)Lcom/android/settings_ex/BandMode$BandListItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/BandMode;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ex/BandMode;->mTargetBand:Lcom/android/settings_ex/BandMode$BandListItem;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/BandMode;Lcom/android/settings_ex/BandMode$BandListItem;)Lcom/android/settings_ex/BandMode$BandListItem;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/BandMode;
    .param p1, "x1"    # Lcom/android/settings_ex/BandMode$BandListItem;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/settings_ex/BandMode;->mTargetBand:Lcom/android/settings_ex/BandMode$BandListItem;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/BandMode;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/BandMode;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ex/BandMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/BandMode;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/BandMode;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ex/BandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/settings_ex/BandMode;->BAND_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/BandMode;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/BandMode;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings_ex/BandMode;->bandListLoaded(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/BandMode;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/BandMode;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings_ex/BandMode;->displayBandSelectionResult(Ljava/lang/Throwable;)V

    return-void
.end method

.method private bandListLoaded(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "result"    # Landroid/os/AsyncResult;

    .prologue
    .line 134
    iget-object v5, p0, Lcom/android/settings_ex/BandMode;->mProgressPanel:Landroid/content/DialogInterface;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings_ex/BandMode;->mProgressPanel:Landroid/content/DialogInterface;

    invoke-interface {v5}, Landroid/content/DialogInterface;->dismiss()V

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/BandMode;->clearList()V

    .line 138
    const/4 v0, 0x0

    .line 141
    .local v0, "addBandSuccess":Z
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_2

    .line 142
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object v1, v5

    check-cast v1, [I

    .line 143
    .local v1, "bands":[I
    const/4 v5, 0x0

    aget v4, v1, v5

    .line 145
    .local v4, "size":I
    if-lez v4, :cond_2

    .line 146
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 147
    new-instance v3, Lcom/android/settings_ex/BandMode$BandListItem;

    aget v5, v1, v2

    invoke-direct {v3, v5}, Lcom/android/settings_ex/BandMode$BandListItem;-><init>(I)V

    .line 148
    .local v3, "item":Lcom/android/settings_ex/BandMode$BandListItem;
    iget-object v5, p0, Lcom/android/settings_ex/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    .end local v3    # "item":Lcom/android/settings_ex/BandMode$BandListItem;
    :cond_1
    const/4 v0, 0x1

    .line 155
    .end local v1    # "bands":[I
    .end local v2    # "i":I
    .end local v4    # "size":I
    :cond_2
    if-nez v0, :cond_3

    .line 157
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    const/4 v5, 0x6

    if-ge v2, v5, :cond_3

    .line 158
    new-instance v3, Lcom/android/settings_ex/BandMode$BandListItem;

    invoke-direct {v3, v2}, Lcom/android/settings_ex/BandMode$BandListItem;-><init>(I)V

    .line 159
    .restart local v3    # "item":Lcom/android/settings_ex/BandMode$BandListItem;
    iget-object v5, p0, Lcom/android/settings_ex/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 163
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/android/settings_ex/BandMode$BandListItem;
    :cond_3
    iget-object v5, p0, Lcom/android/settings_ex/BandMode;->mBandList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->requestFocus()Z

    .line 164
    return-void
.end method

.method private clearList()V
    .locals 3

    .prologue
    .line 182
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings_ex/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    goto :goto_0

    .line 186
    :cond_0
    return-void
.end method

.method private displayBandSelectionResult(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0e01a1

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/BandMode;->mTargetBand:Lcom/android/settings_ex/BandMode$BandListItem;

    invoke-virtual {v2}, Lcom/android/settings_ex/BandMode$BandListItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "status":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0e01a2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/BandMode;->mProgressPanel:Landroid/content/DialogInterface;

    .line 179
    return-void

    .line 173
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0e01a3

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadBandList()V
    .locals 4

    .prologue
    .line 116
    const v2, 0x7f0e01a0

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "str":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/BandMode;->mProgressPanel:Landroid/content/DialogInterface;

    .line 126
    iget-object v2, p0, Lcom/android/settings_ex/BandMode;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 127
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/settings_ex/BandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/Phone;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 129
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/BandMode;->requestWindowFeature(I)Z

    .line 62
    const v0, 0x7f04003f

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/BandMode;->setContentView(I)V

    .line 64
    const v0, 0x7f0e019f

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/BandMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings_ex/BandMode;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 68
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/BandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 70
    const v0, 0x7f0d00e5

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/BandMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings_ex/BandMode;->mBandList:Landroid/widget/ListView;

    .line 71
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    invoke-direct {v0, p0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings_ex/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/BandMode;->mBandList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings_ex/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/BandMode;->mBandList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings_ex/BandMode;->mBandSelectionHandler:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    invoke-direct {p0}, Lcom/android/settings_ex/BandMode;->loadBandList()V

    .line 77
    return-void
.end method
