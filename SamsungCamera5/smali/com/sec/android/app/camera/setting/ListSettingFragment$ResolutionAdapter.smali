.class Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ListSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/setting/ListSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResolutionAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private selectedIndex:I

.field final synthetic this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/setting/ListSettingFragment;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "objects"    # [Ljava/lang/String;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    .line 323
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 324
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 329
    if-nez p2, :cond_2

    .line 330
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04000f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 331
    new-instance v3, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;

    invoke-direct {v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;-><init>()V

    .line 332
    .local v3, "viewHolder":Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;
    const v4, 0x1020014

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckedTextView;

    iput-object v4, v3, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;->title:Landroid/widget/CheckedTextView;

    .line 333
    const v4, 0x7f0e001c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 334
    .local v2, "resolution":Landroid/widget/TextView;
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 336
    iget-object v4, v3, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;->title:Landroid/widget/CheckedTextView;

    iget-object v5, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    # getter for: Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->access$000(Lcom/sec/android/app/camera/setting/ListSettingFragment;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    # getter for: Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I
    invoke-static {v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->access$100(Lcom/sec/android/app/camera/setting/ListSettingFragment;)[I

    move-result-object v4

    aget v0, v4, p1

    .line 338
    .local v0, "currentResolutionId":I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionSubString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget v4, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->selectedIndex:I

    if-ne v4, p1, :cond_0

    .line 341
    iget-object v4, v3, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;->title:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v8}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 345
    :goto_0
    iget-object v4, v3, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;->title:Landroid/widget/CheckedTextView;

    invoke-virtual {v4}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    .line 346
    .local v1, "isChecked":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/sec/android/app/camera/util/Util;->getVideoSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0801ea

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 356
    .end local v0    # "currentResolutionId":I
    .end local v1    # "isChecked":Z
    .end local v2    # "resolution":Landroid/widget/TextView;
    :goto_2
    return-object p2

    .line 343
    .restart local v0    # "currentResolutionId":I
    .restart local v2    # "resolution":Landroid/widget/TextView;
    :cond_0
    iget-object v4, v3, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;->title:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    .line 346
    .restart local v1    # "isChecked":Z
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0801fb

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 349
    .end local v0    # "currentResolutionId":I
    .end local v1    # "isChecked":Z
    .end local v2    # "resolution":Landroid/widget/TextView;
    .end local v3    # "viewHolder":Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;

    .line 350
    .restart local v3    # "viewHolder":Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;
    iget v4, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->selectedIndex:I

    if-ne v4, p1, :cond_3

    .line 351
    iget-object v4, v3, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;->title:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v8}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_2

    .line 353
    :cond_3
    iget-object v4, v3, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;->title:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_2
.end method

.method public setSelectedIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 360
    iput p1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->selectedIndex:I

    .line 361
    return-void
.end method
