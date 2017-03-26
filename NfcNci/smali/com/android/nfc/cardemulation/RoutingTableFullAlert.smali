.class public Lcom/android/nfc/cardemulation/RoutingTableFullAlert;
.super Lcom/android/internal/app/AlertActivity;
.source "RoutingTableFullAlert.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RoutingTableFullAlert"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    const v1, 0x10302d2

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/RoutingTableFullAlert;->setTheme(I)V

    .line 38
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const-string v1, "RoutingTableFullAlert"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RoutingTableFullAlert;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 44
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f070047

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/RoutingTableFullAlert;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 45
    const v1, 0x7f070049

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/RoutingTableFullAlert;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 46
    const v1, 0x7f07002f

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/RoutingTableFullAlert;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 49
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/RoutingTableFullAlert;->setFinishOnTouchOutside(Z)V

    .line 50
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RoutingTableFullAlert;->setupAlert()V

    .line 51
    return-void
.end method
