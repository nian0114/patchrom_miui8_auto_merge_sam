.class public Lcom/android/settings_ex/fmm/RecipientsMinusView;
.super Landroid/widget/LinearLayout;
.source "RecipientsMinusView.java"


# instance fields
.field private CurrentView:Landroid/widget/LinearLayout;

.field private VisibleView:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/fmm/RecipientsMinusView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fmm/RecipientsMinusView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/fmm/RecipientsMinusView;->CurrentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/fmm/RecipientsMinusView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fmm/RecipientsMinusView;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/settings_ex/fmm/RecipientsMinusView;->VisibleView:Z

    return p1
.end method


# virtual methods
.method public getPhoneNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    const v1, 0x7f0d0330

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fmm/RecipientsMinusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 95
    .local v0, "PhoneNumber":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isExist()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/settings_ex/fmm/RecipientsMinusView;->VisibleView:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 73
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/fmm/RecipientsMinusView;->VisibleView:Z

    .line 74
    const v1, 0x7f0d032f

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fmm/RecipientsMinusView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings_ex/fmm/RecipientsMinusView;->CurrentView:Landroid/widget/LinearLayout;

    .line 75
    const v1, 0x7f0d0331

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fmm/RecipientsMinusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 76
    .local v0, "MinusButton":Landroid/widget/ImageView;
    new-instance v1, Lcom/android/settings_ex/fmm/RecipientsMinusView$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/fmm/RecipientsMinusView$1;-><init>(Lcom/android/settings_ex/fmm/RecipientsMinusView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method public setFocus()V
    .locals 2

    .prologue
    .line 106
    const v1, 0x7f0d0330

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fmm/RecipientsMinusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 107
    .local v0, "PhoneNumber":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 108
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 109
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "Number"    # Ljava/lang/String;

    .prologue
    .line 100
    const v1, 0x7f0d0330

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fmm/RecipientsMinusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 101
    .local v0, "PhoneNumber":Landroid/widget/EditText;
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method
