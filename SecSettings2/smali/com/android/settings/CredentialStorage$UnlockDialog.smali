.class Lcom/android/settings_ex/CredentialStorage$UnlockDialog;
.super Ljava/lang/Object;
.source "CredentialStorage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockDialog"
.end annotation


# instance fields
.field private final mButton:Landroid/widget/Button;

.field private final mError:Landroid/widget/TextView;

.field private final mOldPassword:Landroid/widget/TextView;

.field private mUnlockConfirmed:Z

.field final synthetic this$0:Lcom/android/settings_ex/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/CredentialStorage;)V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 860
    iput-object p1, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 861
    const v3, 0x7f04006c

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 864
    .local v2, "view":Landroid/view/View;
    # getter for: Lcom/android/settings_ex/CredentialStorage;->mRetriesRemaining:I
    invoke-static {p1}, Lcom/android/settings_ex/CredentialStorage;->access$900(Lcom/android/settings_ex/CredentialStorage;)I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 865
    invoke-virtual {p1}, Lcom/android/settings_ex/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0b97

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 874
    .local v1, "text":Ljava/lang/CharSequence;
    :goto_0
    const v3, 0x7f0d0137

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 875
    const v3, 0x7f0d013a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    .line 876
    iget-object v3, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 877
    iget-object v3, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 878
    const v3, 0x7f0d0138

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->mError:Landroid/widget/TextView;

    .line 880
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e0b96

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 886
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 887
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 888
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->mButton:Landroid/widget/Button;

    .line 889
    iget-object v3, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->mButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 890
    return-void

    .line 866
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_0
    # getter for: Lcom/android/settings_ex/CredentialStorage;->mRetriesRemaining:I
    invoke-static {p1}, Lcom/android/settings_ex/CredentialStorage;->access$900(Lcom/android/settings_ex/CredentialStorage;)I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_1

    .line 867
    invoke-virtual {p1}, Lcom/android/settings_ex/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0b9b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 868
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_1
    # getter for: Lcom/android/settings_ex/CredentialStorage;->mRetriesRemaining:I
    invoke-static {p1}, Lcom/android/settings_ex/CredentialStorage;->access$900(Lcom/android/settings_ex/CredentialStorage;)I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 869
    invoke-virtual {p1}, Lcom/android/settings_ex/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0b9c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 871
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_2
    const v3, 0x7f0e0b9d

    new-array v4, v5, [Ljava/lang/Object;

    # getter for: Lcom/android/settings_ex/CredentialStorage;->mRetriesRemaining:I
    invoke-static {p1}, Lcom/android/settings_ex/CredentialStorage;->access$900(Lcom/android/settings_ex/CredentialStorage;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v3, v4}, Lcom/android/settings_ex/CredentialStorage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/CharSequence;
    goto/16 :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/CredentialStorage;Lcom/android/settings_ex/CredentialStorage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/CredentialStorage;
    .param p2, "x1"    # Lcom/android/settings_ex/CredentialStorage$1;

    .prologue
    .line 851
    invoke-direct {p0, p1}, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;-><init>(Lcom/android/settings_ex/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 893
    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->mButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 894
    return-void

    .line 893
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 897
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 903
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->mUnlockConfirmed:Z

    .line 904
    return-void

    .line 903
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 907
    iget-boolean v1, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->mUnlockConfirmed:Z

    if-eqz v1, :cond_3

    .line 908
    iput-boolean v3, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->mUnlockConfirmed:Z

    .line 909
    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->mError:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 910
    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    # getter for: Lcom/android/settings_ex/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v1}, Lcom/android/settings_ex/CredentialStorage;->access$700(Lcom/android/settings_ex/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    .line 911
    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    # getter for: Lcom/android/settings_ex/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v1}, Lcom/android/settings_ex/CredentialStorage;->access$700(Lcom/android/settings_ex/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore;->getLastError()I

    move-result v0

    .line 912
    .local v0, "error":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 913
    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    # setter for: Lcom/android/settings_ex/CredentialStorage;->mRetriesRemaining:I
    invoke-static {v1, v4}, Lcom/android/settings_ex/CredentialStorage;->access$902(Lcom/android/settings_ex/CredentialStorage;I)I

    .line 914
    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    const v2, 0x7f0e0ba0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 919
    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    # invokes: Lcom/android/settings_ex/CredentialStorage;->ensureKeyGuard()V
    invoke-static {v1}, Lcom/android/settings_ex/CredentialStorage;->access$1000(Lcom/android/settings_ex/CredentialStorage;)V

    .line 935
    .end local v0    # "error":I
    :cond_0
    :goto_0
    return-void

    .line 920
    .restart local v0    # "error":I
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 921
    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    # setter for: Lcom/android/settings_ex/CredentialStorage;->mRetriesRemaining:I
    invoke-static {v1, v4}, Lcom/android/settings_ex/CredentialStorage;->access$902(Lcom/android/settings_ex/CredentialStorage;I)I

    .line 922
    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    const v2, 0x7f0e0b9e

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 926
    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    # invokes: Lcom/android/settings_ex/CredentialStorage;->handleUnlockOrInstall()V
    invoke-static {v1}, Lcom/android/settings_ex/CredentialStorage;->access$1100(Lcom/android/settings_ex/CredentialStorage;)V

    goto :goto_0

    .line 927
    :cond_2
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 929
    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    add-int/lit8 v2, v0, -0xa

    add-int/lit8 v2, v2, 0x1

    # setter for: Lcom/android/settings_ex/CredentialStorage;->mRetriesRemaining:I
    invoke-static {v1, v2}, Lcom/android/settings_ex/CredentialStorage;->access$902(Lcom/android/settings_ex/CredentialStorage;I)I

    .line 930
    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    # invokes: Lcom/android/settings_ex/CredentialStorage;->handleUnlockOrInstall()V
    invoke-static {v1}, Lcom/android/settings_ex/CredentialStorage;->access$1100(Lcom/android/settings_ex/CredentialStorage;)V

    goto :goto_0

    .line 934
    .end local v0    # "error":I
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    invoke-virtual {v1}, Lcom/android/settings_ex/CredentialStorage;->finish()V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 900
    return-void
.end method
