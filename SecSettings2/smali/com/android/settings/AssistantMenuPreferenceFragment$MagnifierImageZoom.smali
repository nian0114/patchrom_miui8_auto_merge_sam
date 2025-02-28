.class public Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;
.super Landroid/preference/Preference;
.source "AssistantMenuPreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/AssistantMenuPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MagnifierImageZoom"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mEnable:Z

.field mIsLongkeyProcessing:Z

.field private mMinusMagnifier:Landroid/widget/ImageView;

.field private mPlusMagnifier:Landroid/widget/ImageView;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mTitle:Landroid/widget/TextView;

.field private mZoomLayer:Landroid/widget/LinearLayout;

.field textColor:Landroid/content/res/ColorStateList;

.field final synthetic this$0:Lcom/android/settings_ex/AssistantMenuPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/AssistantMenuPreferenceFragment;Landroid/content/Context;Z)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "enabled"    # Z

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/android/settings_ex/AssistantMenuPreferenceFragment;

    .line 598
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 588
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->textColor:Landroid/content/res/ColorStateList;

    .line 592
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mIsLongkeyProcessing:Z

    .line 599
    const v0, 0x7f040131

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->setLayoutResource(I)V

    .line 600
    iput-object p2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mContext:Landroid/content/Context;

    .line 601
    iput-boolean p3, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mEnable:Z

    .line 602
    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v9, 0xff

    const/16 v8, 0x7f

    const/4 v4, 0x0

    const/4 v3, 0x1

    const v7, -0xff6b50

    .line 606
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 607
    const v2, 0x7f0d0340

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mZoomLayer:Landroid/widget/LinearLayout;

    .line 608
    const v2, 0x7f0d033f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mTitle:Landroid/widget/TextView;

    .line 609
    const v2, 0x7f0d0342

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mSeekBar:Landroid/widget/SeekBar;

    .line 610
    const v2, 0x7f0d0343

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    .line 611
    const v2, 0x7f0d0341

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    .line 612
    invoke-virtual {p0}, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "hover_zoom_value"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 613
    .local v0, "defaultProgress":I
    iget-object v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    iget-object v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 615
    iget-object v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 616
    iget-object v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 617
    iget-object v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 618
    iget-object v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 619
    iget-object v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v5, 0x31

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 620
    const-string v2, "AssistantMenuPreferenceFragment"

    const-string v5, "setProgress in onBindDialogView"

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mSeekBar:Landroid/widget/SeekBar;

    mul-int/lit8 v5, v0, 0x7

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 622
    iget-object v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 623
    iget-object v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mTitle:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1060003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 625
    iget-object v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/android/settings_ex/AssistantMenuPreferenceFragment;

    invoke-virtual {v2}, Lcom/android/settings_ex/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "assistant_menu"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mEnable:Z

    .line 626
    iget-boolean v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mEnable:Z

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->setEnabled(Z)V

    .line 627
    iget-object v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mTitle:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mEnable:Z

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 629
    iget-boolean v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mEnable:Z

    if-eqz v2, :cond_1

    .line 631
    iget-object v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v7, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 632
    iget-object v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v7, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 633
    iget-object v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 634
    iget-object v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 643
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 644
    iget-object v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mZoomLayer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 645
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const v2, 0x3e4ccccd    # 0.2f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 646
    iget-object v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mZoomLayer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 652
    :goto_2
    return-void

    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    move v2, v4

    .line 625
    goto :goto_0

    .line 636
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1060008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 637
    iget-object v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v7, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 638
    iget-object v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v7, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 639
    iget-object v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 640
    iget-object v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_1

    .line 648
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mZoomLayer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 649
    .restart local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 650
    iget-object v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mZoomLayer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hover_zoom_value"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 704
    .local v0, "defaultProgress":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 720
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 706
    :pswitch_1
    if-lez v0, :cond_0

    .line 707
    iget-object v1, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/android/settings_ex/AssistantMenuPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hover_zoom_value"

    add-int/lit8 v3, v0, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 708
    iget-object v1, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mSeekBar:Landroid/widget/SeekBar;

    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v2, v2, 0x7

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 712
    :pswitch_2
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 713
    iget-object v1, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/android/settings_ex/AssistantMenuPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hover_zoom_value"

    add-int/lit8 v3, v0, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 714
    iget-object v1, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mSeekBar:Landroid/widget/SeekBar;

    add-int/lit8 v2, v0, 0x1

    mul-int/lit8 v2, v2, 0x7

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 704
    :pswitch_data_0
    .packed-switch 0x7f0d0341
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 724
    invoke-virtual {p0}, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hover_zoom_value"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 725
    .local v0, "defaultProgress":I
    iput-boolean v3, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mIsLongkeyProcessing:Z

    .line 726
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 771
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 728
    :pswitch_1
    if-lez v0, :cond_0

    .line 729
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom$1;-><init>(Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 749
    :pswitch_2
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 750
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom$2;

    invoke-direct {v2, p0, v0}, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom$2;-><init>(Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 726
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0341
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 682
    div-int/lit8 v0, p2, 0x7

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 p2, v0, 0x7

    .line 683
    iget-object v0, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 684
    const-string v0, "AssistantMenuPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scale value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object v0, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/android/settings_ex/AssistantMenuPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hover_zoom_value"

    div-int/lit8 v2, p2, 0x7

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 687
    iget-object v0, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/android/settings_ex/AssistantMenuPreferenceFragment;

    div-int/lit8 v1, p2, 0x7

    # invokes: Lcom/android/settings_ex/AssistantMenuPreferenceFragment;->refreshImageView(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/AssistantMenuPreferenceFragment;->access$300(Lcom/android/settings_ex/AssistantMenuPreferenceFragment;I)V

    .line 688
    const-string v0, "AssistantMenuPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MagnifierImageZoom refreshImageView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit8 v2, p2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 694
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 699
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 777
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 783
    :goto_0
    return v1

    .line 779
    :pswitch_0
    iput-boolean v1, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mIsLongkeyProcessing:Z

    goto :goto_0

    .line 777
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setEnabledZoomButton(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/16 v5, 0xff

    const/16 v4, 0x7f

    const v3, -0xff6b50

    .line 655
    const-string v0, "AssistantMenuPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MagnifierImageZoom setEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v0, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 657
    :cond_0
    const-string v0, "AssistantMenuPreferenceFragment"

    const-string v1, "MagnifierImageZoom is not binded"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :goto_0
    return-void

    .line 661
    :cond_1
    iput-boolean p1, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mEnable:Z

    .line 662
    iget-boolean v0, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mEnable:Z

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->setEnabled(Z)V

    .line 663
    iget-object v0, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mTitle:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mEnable:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 664
    iget-boolean v0, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mEnable:Z

    if-eqz v0, :cond_2

    .line 666
    iget-object v0, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 667
    iget-object v0, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 668
    iget-object v0, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 669
    iget-object v0, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_0

    .line 672
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 673
    iget-object v0, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 674
    iget-object v0, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 675
    iget-object v0, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 676
    iget-object v0, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_0
.end method
