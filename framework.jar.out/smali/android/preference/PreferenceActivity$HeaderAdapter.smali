.class Landroid/preference/PreferenceActivity$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsSinglePane:Z

.field private mLayoutResId:I

.field private mRemoveIconIfEmpty:Z

.field private mSelectedId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "layoutResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/PreferenceActivity$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;IZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "layoutResId"    # I
    .param p4, "removeIconBehavior"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mIsSinglePane:Z

    iput v1, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mSelectedId:I

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput p3, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mLayoutResId:I

    iput-boolean p4, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mRemoveIconIfEmpty:Z

    iput v1, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mSelectedId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;IZZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "layoutResId"    # I
    .param p4, "removeIconBehavior"    # Z
    .param p5, "singlePane"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;IZZ)V"
        }
    .end annotation

    .prologue
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IZ)V

    iput-boolean p5, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mIsSinglePane:Z

    return-void
.end method


# virtual methods
.method public getSelectedId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mSelectedId:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    if-nez p2, :cond_3

    iget-object v7, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v8, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mLayoutResId:I

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .local v6, "view":Landroid/view/View;
    new-instance v2, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;-><init>(Landroid/preference/PreferenceActivity$1;)V

    .local v2, "holder":Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;
    const v7, 0x1020006

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v2, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const v7, 0x1020016

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const v7, 0x1020010

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .local v1, "header":Landroid/preference/PreferenceActivity$Header;
    iget-boolean v7, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mRemoveIconIfEmpty:Z

    if-eqz v7, :cond_5

    iget v7, v1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    if-nez v7, :cond_4

    iget-object v7, v2, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v7, v2, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v3

    .local v3, "summary":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, v2, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v7, v2, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceActivity$Header;->getTitleDescription(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v5

    .local v5, "titleDescription":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v2, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceActivity$Header;->getSummaryDescription(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v4

    .local v4, "summaryDescription":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v2, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    iget v7, v1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    if-nez v7, :cond_7

    iget-object v7, v2, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    const v7, 0x10204be

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, "dynamicDivider":Landroid/view/View;
    if-eqz v0, :cond_2

    iget-object v7, v1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v7, :cond_2

    iget-object v7, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-object v6

    .end local v0    # "dynamicDivider":Landroid/view/View;
    .end local v1    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v2    # "holder":Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;
    .end local v3    # "summary":Ljava/lang/CharSequence;
    .end local v4    # "summaryDescription":Ljava/lang/CharSequence;
    .end local v5    # "titleDescription":Ljava/lang/CharSequence;
    .end local v6    # "view":Landroid/view/View;
    :cond_3
    move-object v6, p2

    .restart local v6    # "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;

    .restart local v2    # "holder":Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;
    goto/16 :goto_0

    .restart local v1    # "header":Landroid/preference/PreferenceActivity$Header;
    :cond_4
    iget-object v7, v2, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, v2, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v8, v1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_5
    iget-object v7, v2, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v8, v1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .restart local v3    # "summary":Ljava/lang/CharSequence;
    :cond_6
    iget-object v7, v2, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .restart local v4    # "summaryDescription":Ljava/lang/CharSequence;
    .restart local v5    # "titleDescription":Ljava/lang/CharSequence;
    :cond_7
    iget-object v7, v2, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method public setSelectedId(I)V
    .locals 0
    .param p1, "nSelId"    # I

    .prologue
    iput p1, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mSelectedId:I

    return-void
.end method
