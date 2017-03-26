.class Lcom/android/nfc/NfcTurnOnActivity$1;
.super Ljava/lang/Object;
.source "NfcTurnOnActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/NfcTurnOnActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcTurnOnActivity;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcTurnOnActivity;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/nfc/NfcTurnOnActivity$1;->this$0:Lcom/android/nfc/NfcTurnOnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    const-string v2, "NfcTurnOnActivity"

    const-string v3, " onClick"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const v2, 0x7f09000e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 78
    .local v1, "nfcMoreCheckbox":Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 79
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 81
    .local v0, "isChecked":Z
    if-eqz v0, :cond_1

    .line 83
    iget-object v2, p0, Lcom/android/nfc/NfcTurnOnActivity$1;->this$0:Lcom/android/nfc/NfcTurnOnActivity;

    invoke-virtual {v2}, Lcom/android/nfc/NfcTurnOnActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070079

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v2, p0, Lcom/android/nfc/NfcTurnOnActivity$1;->this$0:Lcom/android/nfc/NfcTurnOnActivity;

    # getter for: Lcom/android/nfc/NfcTurnOnActivity;->mtextview:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/nfc/NfcTurnOnActivity;->access$000(Lcom/android/nfc/NfcTurnOnActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/NfcTurnOnActivity$1;->this$0:Lcom/android/nfc/NfcTurnOnActivity;

    invoke-virtual {v3}, Lcom/android/nfc/NfcTurnOnActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07007b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :goto_1
    iget-object v2, p0, Lcom/android/nfc/NfcTurnOnActivity$1;->this$0:Lcom/android/nfc/NfcTurnOnActivity;

    # getter for: Lcom/android/nfc/NfcTurnOnActivity;->mNfcTurnOnPopup:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/nfc/NfcTurnOnActivity;->access$100(Lcom/android/nfc/NfcTurnOnActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 94
    return-void

    .line 78
    .end local v0    # "isChecked":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 89
    .restart local v0    # "isChecked":Z
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcTurnOnActivity$1;->this$0:Lcom/android/nfc/NfcTurnOnActivity;

    invoke-virtual {v2}, Lcom/android/nfc/NfcTurnOnActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v2, p0, Lcom/android/nfc/NfcTurnOnActivity$1;->this$0:Lcom/android/nfc/NfcTurnOnActivity;

    # getter for: Lcom/android/nfc/NfcTurnOnActivity;->mtextview:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/nfc/NfcTurnOnActivity;->access$000(Lcom/android/nfc/NfcTurnOnActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/NfcTurnOnActivity$1;->this$0:Lcom/android/nfc/NfcTurnOnActivity;

    invoke-virtual {v3}, Lcom/android/nfc/NfcTurnOnActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07007a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
