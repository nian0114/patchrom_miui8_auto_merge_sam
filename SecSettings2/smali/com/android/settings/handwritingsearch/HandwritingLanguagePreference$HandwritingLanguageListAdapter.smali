.class public Lcom/android/settings_ex/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HandwritingLanguagePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/handwritingsearch/HandwritingLanguagePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandwritingLanguageListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings_ex/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLanguageInfo:[Lcom/android/settings_ex/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

.field private final mResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Lcom/android/settings_ex/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "objects"    # [Lcom/android/settings_ex/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    .prologue
    .line 491
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 488
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->mLanguageInfo:[Lcom/android/settings_ex/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    .line 493
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x103012b

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 495
    .local v0, "themeContext":Landroid/content/Context;
    iput-object v0, p0, Lcom/android/settings_ex/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->mContext:Landroid/content/Context;

    .line 496
    iput-object p3, p0, Lcom/android/settings_ex/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->mLanguageInfo:[Lcom/android/settings_ex/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    .line 497
    iput p2, p0, Lcom/android/settings_ex/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->mResourceId:I

    .line 498
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/settings_ex/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->mLanguageInfo:[Lcom/android/settings_ex/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Lcom/android/settings_ex/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/settings_ex/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->mLanguageInfo:[Lcom/android/settings_ex/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 482
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->getItem(I)Lcom/android/settings_ex/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 530
    move-object v1, p2

    .line 531
    .local v1, "row":Landroid/view/View;
    const/4 v2, 0x0

    .line 533
    .local v2, "textView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/settings_ex/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 535
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/android/settings_ex/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->mResourceId:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 536
    const v3, 0x1020014

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "textView":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 537
    .restart local v2    # "textView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/settings_ex/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->mLanguageInfo:[Lcom/android/settings_ex/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/android/settings_ex/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    invoke-virtual {v1, p1}, Landroid/view/View;->setId(I)V

    .line 541
    return-object v1
.end method
