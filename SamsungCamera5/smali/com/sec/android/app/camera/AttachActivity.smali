.class public Lcom/sec/android/app/camera/AttachActivity;
.super Landroid/app/Activity;
.source "AttachActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static MAX_FONT_SCALE:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "AttachActivity"


# instance fields
.field private mAttachVideo:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCustomView:Landroid/view/View;

.field private mImageView:Landroid/widget/ImageView;

.field private mLatestMedia:Lcom/sec/android/app/camera/util/LatestMedia;

.field private mOkay:Landroid/widget/TextView;

.field private mPlayAttachVideo:Landroid/widget/ImageView;

.field private mRetry:Landroid/widget/TextView;

.field private mSaveUri:Landroid/net/Uri;

.field private mSaving:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const v0, 0x3f99999a    # 1.2f

    sput v0, Lcom/sec/android/app/camera/AttachActivity;->MAX_FONT_SCALE:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mOkay:Landroid/widget/TextView;

    .line 74
    iput-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mRetry:Landroid/widget/TextView;

    .line 79
    iput-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mImageView:Landroid/widget/ImageView;

    .line 84
    iput-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 89
    iput-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mSaveUri:Landroid/net/Uri;

    .line 94
    iput-boolean v1, p0, Lcom/sec/android/app/camera/AttachActivity;->mAttachVideo:Z

    .line 99
    iput-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mPlayAttachVideo:Landroid/widget/ImageView;

    .line 104
    iput-boolean v1, p0, Lcom/sec/android/app/camera/AttachActivity;->mSaving:Z

    return-void
.end method

.method private initLayout()V
    .locals 3

    .prologue
    const v2, 0x7f0e0003

    .line 371
    const v0, 0x7f0e000b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    const v0, 0x7f0e000c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    const v0, 0x7f0e0002

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mImageView:Landroid/widget/ImageView;

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/AttachActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 377
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mAttachVideo:Z

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mPlayAttachVideo:Landroid/widget/ImageView;

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mPlayAttachVideo:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mPlayAttachVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mPlayAttachVideo:Landroid/widget/ImageView;

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mPlayAttachVideo:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private onOkay()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 391
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 393
    .local v1, "myExtras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 394
    const-string v2, "attach-video"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 395
    const-string v2, "AttachActivity"

    const-string v3, "Attach = Video"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "inline-data"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lcom/sec/android/app/camera/AttachActivity;->setResult(ILandroid/content/Intent;)V

    .line 397
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->finish()V

    .line 420
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/sec/android/app/camera/AttachActivity;->mSaving:Z

    if-eqz v2, :cond_4

    .line 425
    :goto_1
    return-void

    .line 398
    :cond_1
    const-string v2, "return-uri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 399
    const-string v2, "AttachActivity"

    const-string v3, "Return = uri"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 401
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "uri-data"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "inline-data"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lcom/sec/android/app/camera/AttachActivity;->setResult(ILandroid/content/Intent;)V

    .line 403
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->finish()V

    goto :goto_0

    .line 404
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_2
    const-string v2, "return-data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 405
    const-string v2, "AttachActivity"

    const-string v3, "Return = data"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 407
    .restart local v0    # "extras":Landroid/os/Bundle;
    const-string v2, "bitmap-data"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 408
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "inline-data"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lcom/sec/android/app/camera/AttachActivity;->setResult(ILandroid/content/Intent;)V

    .line 409
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->finish()V

    goto/16 :goto_0

    .line 410
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/AttachActivity;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 411
    const-string v2, "AttachActivity"

    const-string v3, "Return = specified uri"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 413
    .restart local v0    # "extras":Landroid/os/Bundle;
    const-string v2, "specify-data"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 414
    const-string v2, "uri-data"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "inline-data"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/AttachActivity;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lcom/sec/android/app/camera/AttachActivity;->setResult(ILandroid/content/Intent;)V

    .line 416
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->finish()V

    goto/16 :goto_0

    .line 423
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_4
    iput-boolean v4, p0, Lcom/sec/android/app/camera/AttachActivity;->mSaving:Z

    goto/16 :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 117
    :sswitch_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 118
    .local v2, "result":Landroid/content/Intent;
    const-string v3, "delete-image"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0, v5, v2}, Lcom/sec/android/app/camera/AttachActivity;->setResult(ILandroid/content/Intent;)V

    .line 120
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->finish()V

    goto :goto_0

    .line 123
    .end local v2    # "result":Landroid/content/Intent;
    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/AttachActivity;->onOkay()V

    goto :goto_0

    .line 126
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v1, "intentForVideoPlayer":Landroid/content/Intent;
    const-string v3, "com.samsung.android.video"

    const-string v4, "com.samsung.android.video.player.activity.MoviePlayer"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 129
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 131
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AttachActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v3, "AttachActivity"

    const-string v4, "VideoPlayer was disabled!!"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const v3, 0x7f0800ec

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 115
    :sswitch_data_0
    .sparse-switch
        0x7f0e0003 -> :sswitch_2
        0x7f0e000b -> :sswitch_0
        0x7f0e000c -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 143
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 144
    .local v0, "displaymetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 145
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 147
    const v1, 0x7f040001

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AttachActivity;->setContentView(I)V

    .line 148
    invoke-direct {p0}, Lcom/sec/android/app/camera/AttachActivity;->initLayout()V

    .line 149
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 156
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 158
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AttachActivity;->requestWindowFeature(I)Z

    .line 159
    const/high16 v1, 0x7f0d0000

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AttachActivity;->setTheme(I)V

    .line 161
    const v1, 0x7f040001

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AttachActivity;->setContentView(I)V

    .line 163
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 164
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040005

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/AttachActivity;->mCustomView:Landroid/view/View;

    .line 166
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/AttachActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 167
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 168
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 169
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 171
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 172
    .local v0, "displaymetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 173
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 174
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 181
    const-string v0, "AttachActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 183
    return-void
.end method

.method protected onResume()V
    .locals 36

    .prologue
    .line 190
    const-string v2, "AttachActivity"

    const-string v5, "onResume"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v5, 0x400

    invoke-virtual {v2, v5}, Landroid/view/Window;->addFlags(I)V

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getIntent()Landroid/content/Intent;

    move-result-object v22

    .line 195
    .local v22, "intent":Landroid/content/Intent;
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    .line 196
    .local v19, "extras":Landroid/os/Bundle;
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 197
    .local v3, "uri":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 198
    .local v4, "tempBitmap":Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .line 200
    .local v12, "bHasNoColumnData":Z
    if-nez v3, :cond_1

    .line 201
    const-string v2, "AttachActivity"

    const-string v5, "uri is null, so activity is finished"

    invoke-static {v2, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->finish()V

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    if-eqz v19, :cond_2

    .line 207
    const-string v2, "output"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mSaveUri:Landroid/net/Uri;

    .line 208
    const-string v2, "data"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .end local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    check-cast v4, Landroid/graphics/Bitmap;

    .line 209
    .restart local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    const-string v2, "video-thumbnail"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mAttachVideo:Z

    :cond_2
    move-object/from16 v29, v4

    .line 212
    .end local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    .local v29, "tempBitmap":Landroid/graphics/Bitmap;
    if-nez v29, :cond_18

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0901bc

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 214
    .local v24, "mScreenHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f09015e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    .line 215
    .local v27, "mScreenWideWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f09015c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    .line 216
    .local v25, "mScreenNormalWidth":I
    move/from16 v26, v24

    .line 218
    .local v26, "mScreenSqaureWidth":I
    const/4 v14, 0x0

    .line 219
    .local v14, "cursor":Landroid/database/Cursor;
    const/16 v20, 0x0

    .line 220
    .local v20, "filePath":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 224
    :cond_3
    if-eqz v14, :cond_4

    .line 225
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 227
    :try_start_0
    const-string v2, "_data"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 228
    .local v13, "column_index":I
    invoke-interface {v14, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v20

    .line 233
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 242
    .end local v13    # "column_index":I
    :cond_4
    :goto_1
    const/16 v17, 0x0

    .line 243
    .local v17, "exif":Landroid/media/ExifInterface;
    const/16 v31, 0x0

    .line 244
    .local v31, "videoFileDescriptor":Landroid/os/ParcelFileDescriptor;
    const/16 v32, 0x0

    .line 245
    .local v32, "width":I
    const/16 v21, 0x0

    .line 248
    .local v21, "height":I
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mAttachVideo:Z

    if-eqz v2, :cond_b

    .line 249
    new-instance v2, Lcom/sec/android/app/camera/util/LatestMedia;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/sec/android/app/camera/util/LatestMedia;-><init>(Landroid/content/ContentResolver;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mLatestMedia:Lcom/sec/android/app/camera/util/LatestMedia;

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mLatestMedia:Lcom/sec/android/app/camera/util/LatestMedia;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/util/LatestMedia;->update(Z)V

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "r"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v31

    .line 252
    if-eqz v31, :cond_17

    .line 253
    if-eqz v14, :cond_5

    if-nez v20, :cond_9

    :cond_5
    if-nez v12, :cond_9

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mLatestMedia:Lcom/sec/android/app/camera/util/LatestMedia;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/util/LatestMedia;->getVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 259
    .end local v29    # "tempBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    :goto_2
    if-eqz v4, :cond_6

    .line 260
    :try_start_2
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-le v2, v5, :cond_a

    .line 262
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v32

    .line 263
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    .line 270
    :cond_6
    :goto_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mLatestMedia:Lcom/sec/android/app/camera/util/LatestMedia;

    .line 279
    :cond_7
    :goto_4
    if-nez v4, :cond_c

    .line 280
    const-string v2, "AttachActivity"

    const-string v5, "returning because tempBitmap is null"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->finish()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 333
    if-eqz v31, :cond_0

    .line 334
    :try_start_3
    invoke-virtual/range {v31 .. v31}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 335
    :catch_0
    move-exception v15

    .line 336
    .local v15, "e":Ljava/lang/Exception;
    const-string v2, "AttachActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 229
    .end local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v17    # "exif":Landroid/media/ExifInterface;
    .end local v21    # "height":I
    .end local v31    # "videoFileDescriptor":Landroid/os/ParcelFileDescriptor;
    .end local v32    # "width":I
    .restart local v29    # "tempBitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v16

    .line 230
    .local v16, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_4
    const-string v2, "AttachActivity"

    const-string v5, "IllegalArgumentException occurred with uri data"

    invoke-static {v2, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 231
    const/4 v12, 0x1

    .line 233
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .end local v16    # "ex":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v2

    .line 236
    :cond_8
    const-string v2, "AttachActivity"

    const-string v5, "cursor size is 0"

    invoke-static {v2, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->finish()V

    move-object/from16 v4, v29

    .line 239
    .end local v29    # "tempBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 256
    .end local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    .restart local v17    # "exif":Landroid/media/ExifInterface;
    .restart local v21    # "height":I
    .restart local v29    # "tempBitmap":Landroid/graphics/Bitmap;
    .restart local v31    # "videoFileDescriptor":Landroid/os/ParcelFileDescriptor;
    .restart local v32    # "width":I
    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mLatestMedia:Lcom/sec/android/app/camera/util/LatestMedia;

    invoke-virtual/range {v31 .. v31}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/util/LatestMedia;->getVideoThumbnail(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v4

    .end local v29    # "tempBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 266
    :cond_a
    :try_start_6
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v32

    .line 267
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v21

    goto :goto_3

    .line 272
    .end local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    .restart local v29    # "tempBitmap":Landroid/graphics/Bitmap;
    :cond_b
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v4

    .line 273
    .end local v29    # "tempBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_7

    .line 274
    :try_start_8
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v32

    .line 275
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    goto :goto_4

    .line 285
    :cond_c
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 286
    .local v9, "matrix":Landroid/graphics/Matrix;
    move/from16 v0, v32

    move/from16 v1, v27

    if-gt v0, v1, :cond_d

    move/from16 v0, v21

    move/from16 v1, v24

    if-le v0, v1, :cond_e

    .line 288
    :cond_d
    move/from16 v0, v24

    int-to-float v2, v0

    move/from16 v0, v21

    int-to-float v5, v0

    div-float v23, v2, v5

    .line 290
    .local v23, "mHeightScale":F
    move/from16 v0, v32

    int-to-double v6, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v34, v0

    div-double v6, v6, v34

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/util/Util;->getAspectRatioType(D)I

    move-result v11

    .line 291
    .local v11, "aspectRatioType":I
    if-nez v11, :cond_13

    .line 292
    move/from16 v0, v27

    int-to-float v2, v0

    move/from16 v0, v32

    int-to-float v5, v0

    div-float v28, v2, v5

    .line 298
    .local v28, "mWidthScale":F
    :goto_5
    move/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 301
    .end local v11    # "aspectRatioType":I
    .end local v23    # "mHeightScale":F
    .end local v28    # "mWidthScale":F
    :cond_e
    if-eqz v20, :cond_10

    .line 302
    new-instance v18, Landroid/media/ExifInterface;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 303
    .end local v17    # "exif":Landroid/media/ExifInterface;
    .local v18, "exif":Landroid/media/ExifInterface;
    if-eqz v18, :cond_f

    .line 304
    :try_start_9
    const-string v2, "AttachActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "orientation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Orientation"

    const/4 v7, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string v2, "Orientation"

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_f
    :pswitch_0
    move-object/from16 v17, v18

    .line 322
    .end local v18    # "exif":Landroid/media/ExifInterface;
    .restart local v17    # "exif":Landroid/media/ExifInterface;
    :cond_10
    :goto_6
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_a
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 333
    if-eqz v31, :cond_11

    .line 334
    :try_start_b
    invoke-virtual/range {v31 .. v31}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 341
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v17    # "exif":Landroid/media/ExifInterface;
    .end local v20    # "filePath":Ljava/lang/String;
    .end local v21    # "height":I
    .end local v24    # "mScreenHeight":I
    .end local v25    # "mScreenNormalWidth":I
    .end local v26    # "mScreenSqaureWidth":I
    .end local v27    # "mScreenWideWidth":I
    .end local v31    # "videoFileDescriptor":Landroid/os/ParcelFileDescriptor;
    .end local v32    # "width":I
    :cond_11
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->fontScale:F

    move/from16 v30, v0

    .line 342
    .local v30, "textSize":F
    sget v2, Lcom/sec/android/app/camera/AttachActivity;->MAX_FONT_SCALE:F

    cmpl-float v2, v30, v2

    if-lez v2, :cond_12

    .line 343
    sget v30, Lcom/sec/android/app/camera/AttachActivity;->MAX_FONT_SCALE:F

    .line 345
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f09000e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    mul-float v30, v30, v2

    .line 347
    const v2, 0x7f0e000b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mRetry:Landroid/widget/TextView;

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mRetry:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mRetry:Landroid/widget/TextView;

    const v5, 0x7f020261

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mRetry:Landroid/widget/TextView;

    const/4 v5, 0x0

    move/from16 v0, v30

    invoke-virtual {v2, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 352
    const v2, 0x7f0e000c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mOkay:Landroid/widget/TextView;

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mOkay:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mOkay:Landroid/widget/TextView;

    const v5, 0x7f020261

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mOkay:Landroid/widget/TextView;

    const/4 v5, 0x0

    move/from16 v0, v30

    invoke-virtual {v2, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 357
    const v2, 0x7f0e0002

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mImageView:Landroid/widget/ImageView;

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/AttachActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 360
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mAttachVideo:Z

    if-eqz v2, :cond_16

    .line 361
    const v2, 0x7f0e0003

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mPlayAttachVideo:Landroid/widget/ImageView;

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mPlayAttachVideo:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mPlayAttachVideo:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 293
    .end local v30    # "textSize":F
    .restart local v9    # "matrix":Landroid/graphics/Matrix;
    .restart local v11    # "aspectRatioType":I
    .restart local v14    # "cursor":Landroid/database/Cursor;
    .restart local v17    # "exif":Landroid/media/ExifInterface;
    .restart local v20    # "filePath":Ljava/lang/String;
    .restart local v21    # "height":I
    .restart local v23    # "mHeightScale":F
    .restart local v24    # "mScreenHeight":I
    .restart local v25    # "mScreenNormalWidth":I
    .restart local v26    # "mScreenSqaureWidth":I
    .restart local v27    # "mScreenWideWidth":I
    .restart local v31    # "videoFileDescriptor":Landroid/os/ParcelFileDescriptor;
    .restart local v32    # "width":I
    :cond_13
    const/4 v2, 0x1

    if-ne v11, v2, :cond_14

    .line 294
    move/from16 v0, v25

    int-to-float v2, v0

    move/from16 v0, v32

    int-to-float v5, v0

    div-float v28, v2, v5

    .restart local v28    # "mWidthScale":F
    goto/16 :goto_5

    .line 296
    .end local v28    # "mWidthScale":F
    :cond_14
    move/from16 v0, v26

    int-to-float v2, v0

    move/from16 v0, v32

    int-to-float v5, v0

    div-float v28, v2, v5

    .restart local v28    # "mWidthScale":F
    goto/16 :goto_5

    .line 307
    .end local v11    # "aspectRatioType":I
    .end local v17    # "exif":Landroid/media/ExifInterface;
    .end local v23    # "mHeightScale":F
    .end local v28    # "mWidthScale":F
    .restart local v18    # "exif":Landroid/media/ExifInterface;
    :pswitch_1
    const/high16 v2, 0x42b40000    # 90.0f

    :try_start_c
    invoke-virtual {v9, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    move-object/from16 v17, v18

    .line 308
    .end local v18    # "exif":Landroid/media/ExifInterface;
    .restart local v17    # "exif":Landroid/media/ExifInterface;
    goto/16 :goto_6

    .line 310
    .end local v17    # "exif":Landroid/media/ExifInterface;
    .restart local v18    # "exif":Landroid/media/ExifInterface;
    :pswitch_2
    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v9, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    move-object/from16 v17, v18

    .line 311
    .end local v18    # "exif":Landroid/media/ExifInterface;
    .restart local v17    # "exif":Landroid/media/ExifInterface;
    goto/16 :goto_6

    .line 313
    .end local v17    # "exif":Landroid/media/ExifInterface;
    .restart local v18    # "exif":Landroid/media/ExifInterface;
    :pswitch_3
    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {v9, v2}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-object/from16 v17, v18

    .line 314
    .end local v18    # "exif":Landroid/media/ExifInterface;
    .restart local v17    # "exif":Landroid/media/ExifInterface;
    goto/16 :goto_6

    .line 335
    :catch_2
    move-exception v15

    .line 336
    .restart local v15    # "e":Ljava/lang/Exception;
    const-string v2, "AttachActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 323
    .end local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v29    # "tempBitmap":Landroid/graphics/Bitmap;
    :catch_3
    move-exception v15

    move-object/from16 v4, v29

    .line 324
    .end local v29    # "tempBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    .local v15, "e":Ljava/io/FileNotFoundException;
    :goto_8
    :try_start_d
    const-string v2, "AttachActivity"

    const-string v5, "FileNotFoundException"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {v15}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->finish()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 333
    if-eqz v31, :cond_11

    .line 334
    :try_start_e
    invoke-virtual/range {v31 .. v31}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_7

    .line 335
    :catch_4
    move-exception v15

    .line 336
    .local v15, "e":Ljava/lang/Exception;
    const-string v2, "AttachActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 327
    .end local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v29    # "tempBitmap":Landroid/graphics/Bitmap;
    :catch_5
    move-exception v15

    move-object/from16 v4, v29

    .line 328
    .end local v29    # "tempBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    .local v15, "e":Ljava/io/IOException;
    :goto_9
    :try_start_f
    const-string v2, "AttachActivity"

    const-string v5, "IOException"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->finish()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 333
    if-eqz v31, :cond_11

    .line 334
    :try_start_10
    invoke-virtual/range {v31 .. v31}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    goto/16 :goto_7

    .line 335
    :catch_6
    move-exception v15

    .line 336
    .local v15, "e":Ljava/lang/Exception;
    const-string v2, "AttachActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 332
    .end local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v29    # "tempBitmap":Landroid/graphics/Bitmap;
    :catchall_1
    move-exception v2

    move-object/from16 v4, v29

    .line 333
    .end local v29    # "tempBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    :goto_a
    if-eqz v31, :cond_15

    .line 334
    :try_start_11
    invoke-virtual/range {v31 .. v31}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    .line 337
    :cond_15
    :goto_b
    throw v2

    .line 335
    :catch_7
    move-exception v15

    .line 336
    .restart local v15    # "e":Ljava/lang/Exception;
    const-string v5, "AttachActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "close failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 365
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v17    # "exif":Landroid/media/ExifInterface;
    .end local v20    # "filePath":Ljava/lang/String;
    .end local v21    # "height":I
    .end local v24    # "mScreenHeight":I
    .end local v25    # "mScreenNormalWidth":I
    .end local v26    # "mScreenSqaureWidth":I
    .end local v27    # "mScreenWideWidth":I
    .end local v31    # "videoFileDescriptor":Landroid/os/ParcelFileDescriptor;
    .end local v32    # "width":I
    .restart local v30    # "textSize":F
    :cond_16
    const v2, 0x7f0e0003

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mPlayAttachVideo:Landroid/widget/ImageView;

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mPlayAttachVideo:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 332
    .end local v30    # "textSize":F
    .restart local v14    # "cursor":Landroid/database/Cursor;
    .restart local v17    # "exif":Landroid/media/ExifInterface;
    .restart local v20    # "filePath":Ljava/lang/String;
    .restart local v21    # "height":I
    .restart local v24    # "mScreenHeight":I
    .restart local v25    # "mScreenNormalWidth":I
    .restart local v26    # "mScreenSqaureWidth":I
    .restart local v27    # "mScreenWideWidth":I
    .restart local v31    # "videoFileDescriptor":Landroid/os/ParcelFileDescriptor;
    .restart local v32    # "width":I
    :catchall_2
    move-exception v2

    goto :goto_a

    .end local v17    # "exif":Landroid/media/ExifInterface;
    .restart local v9    # "matrix":Landroid/graphics/Matrix;
    .restart local v18    # "exif":Landroid/media/ExifInterface;
    :catchall_3
    move-exception v2

    move-object/from16 v17, v18

    .end local v18    # "exif":Landroid/media/ExifInterface;
    .restart local v17    # "exif":Landroid/media/ExifInterface;
    goto :goto_a

    .line 327
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    :catch_8
    move-exception v15

    goto :goto_9

    .end local v17    # "exif":Landroid/media/ExifInterface;
    .restart local v9    # "matrix":Landroid/graphics/Matrix;
    .restart local v18    # "exif":Landroid/media/ExifInterface;
    :catch_9
    move-exception v15

    move-object/from16 v17, v18

    .end local v18    # "exif":Landroid/media/ExifInterface;
    .restart local v17    # "exif":Landroid/media/ExifInterface;
    goto :goto_9

    .line 323
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    :catch_a
    move-exception v15

    goto/16 :goto_8

    .end local v17    # "exif":Landroid/media/ExifInterface;
    .restart local v9    # "matrix":Landroid/graphics/Matrix;
    .restart local v18    # "exif":Landroid/media/ExifInterface;
    :catch_b
    move-exception v15

    move-object/from16 v17, v18

    .end local v18    # "exif":Landroid/media/ExifInterface;
    .restart local v17    # "exif":Landroid/media/ExifInterface;
    goto/16 :goto_8

    .end local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .restart local v29    # "tempBitmap":Landroid/graphics/Bitmap;
    :cond_17
    move-object/from16 v4, v29

    .end local v29    # "tempBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_2

    .end local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v17    # "exif":Landroid/media/ExifInterface;
    .end local v20    # "filePath":Ljava/lang/String;
    .end local v21    # "height":I
    .end local v24    # "mScreenHeight":I
    .end local v25    # "mScreenNormalWidth":I
    .end local v26    # "mScreenSqaureWidth":I
    .end local v27    # "mScreenWideWidth":I
    .end local v31    # "videoFileDescriptor":Landroid/os/ParcelFileDescriptor;
    .end local v32    # "width":I
    .restart local v29    # "tempBitmap":Landroid/graphics/Bitmap;
    :cond_18
    move-object/from16 v4, v29

    .end local v29    # "tempBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_7

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
