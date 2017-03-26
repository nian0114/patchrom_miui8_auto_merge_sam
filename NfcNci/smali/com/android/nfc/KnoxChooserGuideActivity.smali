.class public Lcom/android/nfc/KnoxChooserGuideActivity;
.super Lcom/android/internal/app/ResolverGuideActivity;
.source "KnoxChooserGuideActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KnoxChooserGuideActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/internal/app/ResolverGuideActivity;-><init>()V

    return-void
.end method

.method private getPendingIntent()Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/nfc/KnoxChooserGuideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 46
    .local v1, "orig":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 48
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 49
    const-string v2, "com.samsung.sec.knox.EXTRA_KNOX_PARCEL"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 53
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected handlePendingIntent()Z
    .locals 5

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/nfc/KnoxChooserGuideActivity;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    .line 24
    .local v1, "pi":Landroid/app/PendingIntent;
    if-nez v1, :cond_0

    .line 25
    const-string v2, "KnoxChooserGuideActivity"

    const-string v3, "null pending intent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const/4 v2, 0x0

    .line 37
    :goto_0
    return v2

    .line 30
    :cond_0
    :try_start_0
    const-string v2, "KnoxChooserGuideActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sending pending intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_1
    invoke-virtual {p0}, Lcom/android/nfc/KnoxChooserGuideActivity;->dismiss()V

    .line 37
    const/4 v2, 0x1

    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "KnoxChooserGuideActivity"

    const-string v3, "cancel exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
