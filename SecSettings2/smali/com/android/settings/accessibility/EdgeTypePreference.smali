.class public Lcom/android/settings_ex/accessibility/EdgeTypePreference;
.super Lcom/android/settings_ex/accessibility/ListDialogPreference;
.source "EdgeTypePreference.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/accessibility/ListDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-object p1, p0, Lcom/android/settings_ex/accessibility/EdgeTypePreference;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 46
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f11005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/accessibility/EdgeTypePreference;->setValues([I)V

    .line 47
    const v1, 0x7f11005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/accessibility/EdgeTypePreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 49
    const v1, 0x7f0400f0

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/accessibility/EdgeTypePreference;->setDialogLayoutResource(I)V

    .line 50
    const v1, 0x7f0401a8

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/accessibility/EdgeTypePreference;->setListItemLayoutResource(I)V

    .line 51
    return-void
.end method


# virtual methods
.method protected onBindListItem(Landroid/view/View;I)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 60
    const v5, 0x7f0d0214

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SubtitleView;

    .line 62
    .local v1, "preview":Lcom/android/internal/widget/SubtitleView;
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/SubtitleView;->setForegroundColor(I)V

    .line 63
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/SubtitleView;->setBackgroundColor(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/EdgeTypePreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    .line 66
    .local v0, "density":F
    const/high16 v5, 0x42000000    # 32.0f

    mul-float/2addr v5, v0

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 70
    iget-object v5, p0, Lcom/android/settings_ex/accessibility/EdgeTypePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c01b8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 73
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/accessibility/EdgeTypePreference;->getValueAt(I)I

    move-result v4

    .line 74
    .local v4, "value":I
    invoke-virtual {v1, v4}, Lcom/android/internal/widget/SubtitleView;->setEdgeType(I)V

    .line 75
    const/high16 v5, -0x1000000

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/SubtitleView;->setEdgeColor(I)V

    .line 77
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/accessibility/EdgeTypePreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 78
    .local v3, "title":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 79
    const v5, 0x7f0d0126

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 80
    .local v2, "summary":Landroid/widget/TextView;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .end local v2    # "summary":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/EdgeTypePreference;->getValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/settings_ex/accessibility/ListDialogPreference;->shouldDisableDependents()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
