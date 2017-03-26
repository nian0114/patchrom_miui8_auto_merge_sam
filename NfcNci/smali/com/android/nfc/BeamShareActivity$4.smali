.class Lcom/android/nfc/BeamShareActivity$4;
.super Ljava/lang/Object;
.source "BeamShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/BeamShareActivity;->showNfcDialogAndExitForVzw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/BeamShareActivity;


# direct methods
.method constructor <init>(Lcom/android/nfc/BeamShareActivity;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/nfc/BeamShareActivity$4;->this$0:Lcom/android/nfc/BeamShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 256
    const-string v2, "BeamShareActivity"

    const-string v3, " morelayout onClick"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const v2, 0x7f09000e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 259
    .local v1, "nfcMoreCheckbox":Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 260
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 262
    .local v0, "isChecked":Z
    if-eqz v0, :cond_1

    .line 264
    iget-object v2, p0, Lcom/android/nfc/BeamShareActivity$4;->this$0:Lcom/android/nfc/BeamShareActivity;

    invoke-virtual {v2}, Lcom/android/nfc/BeamShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070079

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v2, p0, Lcom/android/nfc/BeamShareActivity$4;->this$0:Lcom/android/nfc/BeamShareActivity;

    # getter for: Lcom/android/nfc/BeamShareActivity;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/nfc/BeamShareActivity;->access$100(Lcom/android/nfc/BeamShareActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/BeamShareActivity$4;->this$0:Lcom/android/nfc/BeamShareActivity;

    invoke-virtual {v3}, Lcom/android/nfc/BeamShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07007b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    :goto_1
    iget-object v2, p0, Lcom/android/nfc/BeamShareActivity$4;->this$0:Lcom/android/nfc/BeamShareActivity;

    # getter for: Lcom/android/nfc/BeamShareActivity;->mNfcTurnOnPopup:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/nfc/BeamShareActivity;->access$200(Lcom/android/nfc/BeamShareActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 275
    return-void

    .line 259
    .end local v0    # "isChecked":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 270
    .restart local v0    # "isChecked":Z
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/BeamShareActivity$4;->this$0:Lcom/android/nfc/BeamShareActivity;

    invoke-virtual {v2}, Lcom/android/nfc/BeamShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v2, p0, Lcom/android/nfc/BeamShareActivity$4;->this$0:Lcom/android/nfc/BeamShareActivity;

    # getter for: Lcom/android/nfc/BeamShareActivity;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/nfc/BeamShareActivity;->access$100(Lcom/android/nfc/BeamShareActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/BeamShareActivity$4;->this$0:Lcom/android/nfc/BeamShareActivity;

    invoke-virtual {v3}, Lcom/android/nfc/BeamShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07007a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
