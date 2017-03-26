.class public Lcom/android/nfc/cardemulation/DefaultRemovedActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "DefaultRemovedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.NFC_PAYMENT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    const v1, 0x10302d2

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;->setTheme(I)V

    .line 35
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    iget-object v0, p0, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 39
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f07003a

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 40
    const v1, 0x7f070039

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 41
    const v1, 0x7f07000d

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 42
    const v1, 0x7f070041

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 43
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 46
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;->setFinishOnTouchOutside(Z)V

    .line 48
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;->setupAlert()V

    .line 49
    return-void
.end method
