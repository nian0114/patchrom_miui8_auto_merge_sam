.class public Lcom/android/nfc/cardemulation/TapAgainDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "TapAgainDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final ACTION_CLOSE:Ljava/lang/String; = "com.android.nfc.cardmeulation.close_tap_dialog"

.field public static final EXTRA_APDU_SERVICE:Ljava/lang/String; = "apdu_service"

.field public static final EXTRA_CATEGORY:Ljava/lang/String; = "category"


# instance fields
.field private mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

.field private mClosedOnRequest:Z

.field final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mClosedOnRequest:Z

    .line 55
    new-instance v0, Lcom/android/nfc/cardemulation/TapAgainDialog$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/TapAgainDialog$1;-><init>(Lcom/android/nfc/cardemulation/TapAgainDialog;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/android/nfc/cardemulation/TapAgainDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/cardemulation/TapAgainDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mClosedOnRequest:Z

    return p1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->finish()V

    .line 127
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 132
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super/range {p0 .. p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v12, 0x10302d2

    invoke-virtual {p0, v12}, Lcom/android/nfc/cardemulation/TapAgainDialog;->setTheme(I)V

    .line 69
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 70
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    invoke-static {v0}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object v12

    iput-object v12, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    .line 71
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 72
    .local v6, "intent":Landroid/content/Intent;
    const-string v12, "category"

    invoke-virtual {v6, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "category":Ljava/lang/String;
    const-string v12, "apdu_service"

    invoke-virtual {v6, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 74
    .local v9, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    new-instance v4, Landroid/content/IntentFilter;

    const-string v12, "com.android.nfc.cardmeulation.close_tap_dialog"

    invoke-direct {v4, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 75
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v12, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    iget-object v12, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v12, v4}, Lcom/android/nfc/cardemulation/TapAgainDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 79
    .local v1, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    const-string v12, ""

    iput-object v12, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 80
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v12

    const v13, 0x7f03000d

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    iput-object v12, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 82
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 83
    .local v8, "pm":Landroid/content/pm/PackageManager;
    iget-object v12, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v13, 0x7f09001a

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 84
    .local v10, "tv":Landroid/widget/TextView;
    invoke-virtual {v9}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "description":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 86
    invoke-virtual {v9, v8}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 87
    .local v7, "label":Ljava/lang/CharSequence;
    if-nez v7, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->finish()V

    .line 93
    .end local v7    # "label":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    const-string v12, "payment"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 94
    const v12, 0x7f070033

    invoke-virtual {p0, v12}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "formatString":Ljava/lang/String;
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-static {v5, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :goto_1
    const/high16 v12, 0x1040000

    invoke-virtual {p0, v12}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 103
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/nfc/cardemulation/TapAgainDialog;->setFinishOnTouchOutside(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->setupAlert()V

    .line 106
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    .line 107
    .local v11, "window":Landroid/view/Window;
    const/high16 v12, 0x400000

    invoke-virtual {v11, v12}, Landroid/view/Window;->addFlags(I)V

    .line 108
    return-void

    .line 90
    .end local v5    # "formatString":Ljava/lang/String;
    .end local v11    # "window":Landroid/view/Window;
    .restart local v7    # "label":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 97
    .end local v7    # "label":Ljava/lang/CharSequence;
    :cond_2
    const v12, 0x7f070034

    invoke-virtual {p0, v12}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 98
    .restart local v5    # "formatString":Ljava/lang/String;
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-static {v5, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 113
    iget-object v0, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 119
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mClosedOnRequest:Z

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/nfc/cardemulation/CardEmulation;->setDefaultForNextTap(Landroid/content/ComponentName;)Z

    .line 122
    :cond_0
    return-void
.end method
