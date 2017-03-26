.class public Lcom/android/nfc/cardemulation/RoutingTableAlert;
.super Lcom/android/internal/app/AlertActivity;
.source "RoutingTableAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RoutingTabletAlert"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 107
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.settings.SEC_NFC_ADVANCED_SETTING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/RoutingTableAlert;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "RoutingTabletAlert"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There is no activty to handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f07002f

    .line 54
    const v2, 0x10302d2

    invoke-virtual {p0, v2}, Lcom/android/nfc/cardemulation/RoutingTableAlert;->setTheme(I)V

    .line 55
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RoutingTableAlert;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 59
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x7f070040

    invoke-virtual {p0, v2}, Lcom/android/nfc/cardemulation/RoutingTableAlert;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 62
    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "buildcarrier":Ljava/lang/String;
    const-string v2, "zerolte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "zeroflte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 64
    :cond_0
    const-string v2, "RoutingTabletAlert"

    const-string v3, "Zero product"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const v2, 0x7f07003f

    invoke-virtual {p0, v2}, Lcom/android/nfc/cardemulation/RoutingTableAlert;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 74
    :goto_0
    const-string v2, "zerolte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "zeroflte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 75
    :cond_1
    const v2, 0x7f07000d

    invoke-virtual {p0, v2}, Lcom/android/nfc/cardemulation/RoutingTableAlert;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 76
    invoke-virtual {p0, v5}, Lcom/android/nfc/cardemulation/RoutingTableAlert;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 84
    :goto_1
    const-string v2, "Vzw"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_NFC_StatusBarIconType"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 85
    const v2, 0x7f070042

    invoke-virtual {p0, v2}, Lcom/android/nfc/cardemulation/RoutingTableAlert;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 86
    const v2, 0x7f070043

    invoke-virtual {p0, v2}, Lcom/android/nfc/cardemulation/RoutingTableAlert;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 87
    invoke-virtual {p0, v5}, Lcom/android/nfc/cardemulation/RoutingTableAlert;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 88
    const v2, 0x7f070041

    invoke-virtual {p0, v2}, Lcom/android/nfc/cardemulation/RoutingTableAlert;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 90
    :cond_2
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 94
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/nfc/cardemulation/RoutingTableAlert;->setFinishOnTouchOutside(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RoutingTableAlert;->setupAlert()V

    .line 96
    return-void

    .line 66
    :cond_3
    const-string v2, "GRIDLIST"

    const-string v3, "DEFAULT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 68
    const-string v2, "RoutingTabletAlert"

    const-string v3, "SETTINGS ACTIVITY STYLE : DEFAULT"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const v2, 0x7f07003e

    invoke-virtual {p0, v2}, Lcom/android/nfc/cardemulation/RoutingTableAlert;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 71
    :cond_4
    const-string v2, "RoutingTabletAlert"

    const-string v3, "Other models"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const v2, 0x7f07003d

    invoke-virtual {p0, v2}, Lcom/android/nfc/cardemulation/RoutingTableAlert;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 78
    :cond_5
    const v2, 0x7f07003b

    invoke-virtual {p0, v2}, Lcom/android/nfc/cardemulation/RoutingTableAlert;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 79
    const v2, 0x7f07003c

    invoke-virtual {p0, v2}, Lcom/android/nfc/cardemulation/RoutingTableAlert;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 101
    const-string v0, "RoutingTabletAlert"

    const-string v1, " onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method
