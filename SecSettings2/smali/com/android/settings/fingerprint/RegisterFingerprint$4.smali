.class Lcom/android/settings_ex/fingerprint/RegisterFingerprint$4;
.super Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
.source "RegisterFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fingerprint/RegisterFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 371
    const-string v0, "FpstRegisterTouchFingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnrollmentError : errMsgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , errString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->showSensorErrorDialog(I)V
    invoke-static {v0, p1}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$2100(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;I)V

    .line 373
    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 363
    const-string v0, "FpstRegisterTouchFingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnrollmentHelp : helpMsgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , helpString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->isPauseRegistration:Z
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$200(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->eventProcess(ILjava/lang/CharSequence;)V
    invoke-static {v0, p1, p2}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$2000(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;ILjava/lang/CharSequence;)V

    .line 367
    :cond_0
    return-void
.end method

.method public onEnrollmentProgress(I)V
    .locals 11
    .param p1, "remaining"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 287
    const-string v4, "FpstRegisterTouchFingerprint"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onEnrollmentProgress : remaining = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->isPauseRegistration:Z
    invoke-static {v4}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$200(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    move v1, p1

    .line 295
    .local v1, "mEnrollmentRemaining":I
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->isFirstGuideShow:Z
    invoke-static {v4}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$300(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 296
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    const/16 v5, 0x12c

    # invokes: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->hideGuideScreen(I)V
    invoke-static {v4, v5}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$400(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;I)V

    .line 299
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->mTxtVewProgress:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$500(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    const v6, 0x7f0e1221

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    iget-object v4, v4, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->mFinger_ProgressView:Lcom/android/settings_ex/fingerprint/FingerprintProgressEffectView;

    invoke-virtual {v4, v1}, Lcom/android/settings_ex/fingerprint/FingerprintProgressEffectView;->setPercent(I)V

    .line 302
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v4}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$600(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;)Landroid/speech/tts/TextToSpeech;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->isError:Z
    invoke-static {v4}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$700(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 303
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v4}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$600(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;)Landroid/speech/tts/TextToSpeech;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    const v6, 0x7f0e1220

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v9, v6}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 306
    :cond_3
    const/16 v4, 0x64

    if-ne v1, v4, :cond_0

    .line 307
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->isFinish:Z
    invoke-static {v4, v10}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$802(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;Z)Z

    .line 308
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->startCompleteEffect()V
    invoke-static {v4}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$900(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;)V

    .line 309
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->mIsFromKnoxKeyguardEnroll:Z
    invoke-static {v4}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$1000(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 310
    const-string v4, "FpstRegisterTouchFingerprint"

    const-string v5, "ENFORCE MULTIFACTOR ENROLL FINGER FINISH"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.samsung.knox.kss.PASSWORD_RESET"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    .local v0, "knoxIntent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.samsung.knox.kss"

    const-string v6, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 313
    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 314
    const-string v4, "resetResult"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z
    invoke-static {v4, v9}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$1102(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;Z)Z

    .line 316
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v0, v5}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 318
    .end local v0    # "knoxIntent":Landroid/content/Intent;
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->isEnrolling:Z
    invoke-static {v4, v9}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$1202(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;Z)Z

    .line 320
    const-string v4, "google_setupwizard_fingerprint"

    iget-object v5, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->access$1300(Lcom/android/settings_ex/fingerprint/RegisterFingerprint;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 321
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings_ex/fingerprint/RegisterFingerprint;

    invoke-virtual {v4}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.android.settings"

    const-string v6, "PYPT"

    const-string v7, "Fingerprints"

    invoke-static {v4, v5, v6, v7}, Lcom/android/settings_ex/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_5
    new-instance v3, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$4$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/fingerprint/RegisterFingerprint$4$1;-><init>(Lcom/android/settings_ex/fingerprint/RegisterFingerprint$4;)V

    .line 356
    .local v3, "mRun":Ljava/lang/Runnable;
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 357
    .local v2, "mHd":Landroid/os/Handler;
    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
