.class Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;
.super Ljava/lang/Object;
.source "SimPersoLockSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SimPersoLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchInput"
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/TextView;

.field private mEight:Landroid/widget/TextView;

.field private mFive:Landroid/widget/TextView;

.field private mFour:Landroid/widget/TextView;

.field private mNine:Landroid/widget/TextView;

.field private mOne:Landroid/widget/TextView;

.field private mSeven:Landroid/widget/TextView;

.field private mSix:Landroid/widget/TextView;

.field private mThree:Landroid/widget/TextView;

.field private mTwo:Landroid/widget/TextView;

.field private mZero:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings_ex/SimPersoLockSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/SimPersoLockSettings;)V
    .locals 2

    .prologue
    .line 528
    iput-object p1, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->this$0:Lcom/android/settings_ex/SimPersoLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    const v0, 0x7f0d0211

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mZero:Landroid/widget/TextView;

    .line 530
    const v0, 0x7f0d0208

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mOne:Landroid/widget/TextView;

    .line 531
    const v0, 0x7f0d0209

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mTwo:Landroid/widget/TextView;

    .line 532
    const v0, 0x7f0d020a

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mThree:Landroid/widget/TextView;

    .line 533
    const v0, 0x7f0d020b

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mFour:Landroid/widget/TextView;

    .line 534
    const v0, 0x7f0d020c

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mFive:Landroid/widget/TextView;

    .line 535
    const v0, 0x7f0d020d

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mSix:Landroid/widget/TextView;

    .line 536
    const v0, 0x7f0d020e

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mSeven:Landroid/widget/TextView;

    .line 537
    const v0, 0x7f0d020f

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mEight:Landroid/widget/TextView;

    .line 538
    const v0, 0x7f0d0210

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mNine:Landroid/widget/TextView;

    .line 539
    const v0, 0x7f0d00f8

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mCancelButton:Landroid/widget/TextView;

    .line 541
    iget-object v0, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mZero:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v0, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mOne:Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    iget-object v0, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mTwo:Landroid/widget/TextView;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v0, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mThree:Landroid/widget/TextView;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v0, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mFour:Landroid/widget/TextView;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    iget-object v0, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mFive:Landroid/widget/TextView;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    iget-object v0, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mSix:Landroid/widget/TextView;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v0, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mSeven:Landroid/widget/TextView;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v0, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mEight:Landroid/widget/TextView;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    iget-object v0, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mNine:Landroid/widget/TextView;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    iget-object v0, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 553
    iget-object v0, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    iget-object v0, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 555
    iget-object v0, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    iget-object v0, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    iget-object v0, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 558
    iget-object v0, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    iget-object v0, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    iget-object v0, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 561
    iget-object v0, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 562
    iget-object v0, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/SimPersoLockSettings;Lcom/android/settings_ex/SimPersoLockSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/SimPersoLockSettings;
    .param p2, "x1"    # Lcom/android/settings_ex/SimPersoLockSettings$1;

    .prologue
    .line 515
    invoke-direct {p0, p1}, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;-><init>(Lcom/android/settings_ex/SimPersoLockSettings;)V

    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 580
    const/4 v0, -0x1

    .line 581
    .local v0, "digit":I
    iget-object v1, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mZero:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 582
    const/4 v0, 0x0

    .line 602
    :cond_0
    :goto_0
    return v0

    .line 583
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mOne:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    .line 584
    const/4 v0, 0x1

    goto :goto_0

    .line 585
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mTwo:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    .line 586
    const/4 v0, 0x2

    goto :goto_0

    .line 587
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mThree:Landroid/widget/TextView;

    if-ne p1, v1, :cond_4

    .line 588
    const/4 v0, 0x3

    goto :goto_0

    .line 589
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mFour:Landroid/widget/TextView;

    if-ne p1, v1, :cond_5

    .line 590
    const/4 v0, 0x4

    goto :goto_0

    .line 591
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mFive:Landroid/widget/TextView;

    if-ne p1, v1, :cond_6

    .line 592
    const/4 v0, 0x5

    goto :goto_0

    .line 593
    :cond_6
    iget-object v1, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mSix:Landroid/widget/TextView;

    if-ne p1, v1, :cond_7

    .line 594
    const/4 v0, 0x6

    goto :goto_0

    .line 595
    :cond_7
    iget-object v1, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mSeven:Landroid/widget/TextView;

    if-ne p1, v1, :cond_8

    .line 596
    const/4 v0, 0x7

    goto :goto_0

    .line 597
    :cond_8
    iget-object v1, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mEight:Landroid/widget/TextView;

    if-ne p1, v1, :cond_9

    .line 598
    const/16 v0, 0x8

    goto :goto_0

    .line 599
    :cond_9
    iget-object v1, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mNine:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    .line 600
    const/16 v0, 0x9

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 566
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticKTTModel()Z

    move-result v1

    if-eqz v1, :cond_1

    # getter for: Lcom/android/settings_ex/SimPersoLockSettings;->mNum_Retry:I
    invoke-static {}, Lcom/android/settings_ex/SimPersoLockSettings;->access$300()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    .line 570
    iget-object v1, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->this$0:Lcom/android/settings_ex/SimPersoLockSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/SimPersoLockSettings;->finish()V

    .line 573
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .line 574
    .local v0, "digit":I
    if-ltz v0, :cond_0

    .line 575
    iget-object v1, p0, Lcom/android/settings_ex/SimPersoLockSettings$TouchInput;->this$0:Lcom/android/settings_ex/SimPersoLockSettings;

    # invokes: Lcom/android/settings_ex/SimPersoLockSettings;->reportDigit(I)V
    invoke-static {v1, v0}, Lcom/android/settings_ex/SimPersoLockSettings;->access$400(Lcom/android/settings_ex/SimPersoLockSettings;I)V

    goto :goto_0
.end method
