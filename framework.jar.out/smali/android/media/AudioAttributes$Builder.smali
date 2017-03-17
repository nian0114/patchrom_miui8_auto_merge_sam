.class public Landroid/media/AudioAttributes$Builder;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mContentType:I

.field private mFlags:I

.field private mSource:I

.field private mTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUsage:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 317
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 318
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 319
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 320
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 331
    return-void
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;)V
    .locals 2
    .param p1, "aa"    # Landroid/media/AudioAttributes;

    .prologue
    const/4 v1, 0x0

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 317
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 318
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 319
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 320
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 339
    # getter for: Landroid/media/AudioAttributes;->mUsage:I
    invoke-static {p1}, Landroid/media/AudioAttributes;->access$000(Landroid/media/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 340
    # getter for: Landroid/media/AudioAttributes;->mContentType:I
    invoke-static {p1}, Landroid/media/AudioAttributes;->access$100(Landroid/media/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 341
    # getter for: Landroid/media/AudioAttributes;->mFlags:I
    invoke-static {p1}, Landroid/media/AudioAttributes;->access$200(Landroid/media/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 342
    # getter for: Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;
    invoke-static {p1}, Landroid/media/AudioAttributes;->access$300(Landroid/media/AudioAttributes;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 343
    return-void
.end method


# virtual methods
.method public addAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 464
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 451
    iget-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 452
    return-object p0
.end method

.method public build()Landroid/media/AudioAttributes;
    .locals 3

    .prologue
    .line 352
    new-instance v0, Landroid/media/AudioAttributes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/AudioAttributes;-><init>(Landroid/media/AudioAttributes$1;)V

    .line 353
    .local v0, "aa":Landroid/media/AudioAttributes;
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    # setter for: Landroid/media/AudioAttributes;->mContentType:I
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->access$102(Landroid/media/AudioAttributes;I)I

    .line 354
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    # setter for: Landroid/media/AudioAttributes;->mUsage:I
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->access$002(Landroid/media/AudioAttributes;I)I

    .line 355
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    # setter for: Landroid/media/AudioAttributes;->mSource:I
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->access$502(Landroid/media/AudioAttributes;I)I

    .line 356
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    # setter for: Landroid/media/AudioAttributes;->mFlags:I
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->access$202(Landroid/media/AudioAttributes;I)I

    .line 357
    iget-object v1, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    # setter for: Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->access$302(Landroid/media/AudioAttributes;Ljava/util/HashSet;)Ljava/util/HashSet;

    .line 358
    const-string v1, ";"

    iget-object v2, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    # setter for: Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->access$602(Landroid/media/AudioAttributes;Ljava/lang/String;)Ljava/lang/String;

    .line 359
    return-object v0
.end method

.method public setCapturePreset(I)Landroid/media/AudioAttributes$Builder;
    .locals 3
    .param p1, "preset"    # I

    .prologue
    .line 557
    sparse-switch p1, :sswitch_data_0

    .line 587
    const-string v0, "AudioAttributes"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid capture preset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for AudioAttributes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :goto_0
    return-object p0

    .line 584
    :sswitch_0
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    goto :goto_0

    .line 557
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e9 -> :sswitch_0
    .end sparse-switch
.end method

.method public setContentType(I)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "contentType"    # I

    .prologue
    .line 419
    packed-switch p1, :pswitch_data_0

    .line 428
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 430
    :goto_0
    return-object p0

    .line 425
    :pswitch_0
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_0

    .line 419
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setFlags(I)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 439
    and-int/lit16 p1, p1, 0xff

    .line 440
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 441
    return-object p0
.end method

.method public setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "preset"    # I

    .prologue
    .line 601
    const/16 v0, 0x7cf

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7ce

    if-ne p1, v0, :cond_1

    .line 604
    :cond_0
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 608
    :goto_0
    return-object p0

    .line 606
    :cond_1
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    goto :goto_0
.end method

.method public setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x4

    const/4 v0, 0x1

    .line 488
    packed-switch p1, :pswitch_data_0

    .line 538
    const-string v0, "AudioAttributes"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for AudioAttributes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :goto_0
    invoke-static {p1}, Landroid/media/AudioAttributes;->usageForLegacyStreamType(I)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 541
    return-object p0

    .line 490
    :pswitch_0
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_0

    .line 493
    :pswitch_1
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 496
    :pswitch_2
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_0

    .line 499
    :pswitch_3
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_0

    .line 502
    :pswitch_4
    iput v2, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_0

    .line 505
    :pswitch_5
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_0

    .line 508
    :pswitch_6
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_0

    .line 511
    :pswitch_7
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 512
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    goto :goto_0

    .line 515
    :pswitch_8
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_0

    .line 518
    :pswitch_9
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_0

    .line 522
    :pswitch_a
    iput v2, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_0

    .line 525
    :pswitch_b
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 526
    iget-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    const-string v1, "STREAM_VIDEO_CALL"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 529
    :pswitch_c
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 530
    iget-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    const-string v1, "STREAM_SEC_VOICE_COMMUNICATION"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 533
    :pswitch_d
    iput v2, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 534
    iget-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    const-string v1, "STREAM_VOICENOTE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 488
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 478
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setUsage(I)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "usage"    # I

    .prologue
    .line 382
    packed-switch p1, :pswitch_data_0

    .line 402
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 404
    :goto_0
    return-object p0

    .line 399
    :pswitch_0
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    goto :goto_0

    .line 382
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
