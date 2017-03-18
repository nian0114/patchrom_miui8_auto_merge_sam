.class public Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;
.super Landroid/app/Activity;
.source "CarrierMatchDialogActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCarrierName:Ljava/lang/String;

.field private mDialog:Landroid/app/Dialog;

.field private mIntent:Landroid/content/Intent;

.field private mNewSim:I

.field private mOldSim:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->mDialog:Landroid/app/Dialog;

    .line 37
    iput-object v0, p0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->mIntent:Landroid/content/Intent;

    .line 38
    iput-object v0, p0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->mCarrierName:Ljava/lang/String;

    .line 39
    iput v1, p0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->mNewSim:I

    .line 40
    iput v1, p0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->mOldSim:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->mOldSim:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->mNewSim:I

    return v0
.end method

.method private showCarrierMatchDialog()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "carrier_match_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "carrier_match_smartcsp"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 79
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b00a8

    new-instance v5, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity$4;

    invoke-direct {v5, p0, v0}, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity$4;-><init>(Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;Z)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b00aa

    new-instance v5, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity$3;

    invoke-direct {v5, p0, v0}, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity$3;-><init>(Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;Z)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b00a9

    new-instance v5, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity$2;

    invoke-direct {v5, p0, v0}, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity$2;-><init>(Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;Z)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity$1;

    invoke-direct {v3, p0}, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity$1;-><init>(Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0b00ab

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00ac

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->mCarrierName:Ljava/lang/String;

    aput-object v6, v5, v2

    iget-object v2, p0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->mCarrierName:Ljava/lang/String;

    aput-object v2, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->mDialog:Landroid/app/Dialog;

    .line 126
    iget-object v0, p0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity$5;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity$5;-><init>(Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 133
    iget-object v0, p0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 134
    return-void

    :cond_0
    move v0, v2

    .line 74
    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 143
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    const-string v3, "extra_carrier_match_call_intent"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->mIntent:Landroid/content/Intent;

    .line 51
    invoke-virtual {p0}, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extra_carrier_match_new_sim"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->mNewSim:I

    .line 52
    invoke-virtual {p0}, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extra_carrier_match_old_sim"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->mOldSim:I

    .line 53
    invoke-virtual {p0}, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extra_carrier_match_carrier_name"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->mCarrierName:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->mCarrierName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 55
    const-string v0, " "

    iput-object v0, p0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->mCarrierName:Ljava/lang/String;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 58
    invoke-direct {p0}, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->showCarrierMatchDialog()V

    move v0, v1

    .line 66
    :goto_0
    if-eqz v0, :cond_1

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bundle or intent is null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->finish()V

    .line 70
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 60
    goto :goto_0

    :cond_3
    move v0, v2

    .line 63
    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 154
    iget-object v0, p0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->mDialog:Landroid/app/Dialog;

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    sget-object v0, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "isFinishing"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;->finish()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 148
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 169
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 170
    return-void
.end method
