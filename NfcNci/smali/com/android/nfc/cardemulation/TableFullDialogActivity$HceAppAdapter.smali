.class Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter;
.super Landroid/widget/BaseAdapter;
.source "TableFullDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/TableFullDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HceAppAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mAppIcon:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mAppName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPkgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/nfc/cardemulation/TableFullDialogActivity;


# direct methods
.method public constructor <init>(Lcom/android/nfc/cardemulation/TableFullDialogActivity;Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/ArrayList;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    const/4 v3, 0x0

    .line 187
    iput-object p1, p0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter;->this$0:Lcom/android/nfc/cardemulation/TableFullDialogActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 181
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter;->mAppIcon:Ljava/util/ArrayList;

    .line 182
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter;->mAppName:Ljava/util/ArrayList;

    .line 183
    iput-object v3, p0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter;->mPkgList:Ljava/util/ArrayList;

    .line 184
    iput-object v3, p0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter;->mContext:Landroid/content/Context;

    .line 188
    iput-object p2, p0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter;->mContext:Landroid/content/Context;

    .line 189
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 190
    iput-object p4, p0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter;->mPkgList:Ljava/util/ArrayList;

    .line 191
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 192
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter;->mAppIcon:Ljava/util/ArrayList;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, p3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v2, p0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter;->mAppName:Ljava/util/ArrayList;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, p3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter;->mAppIcon:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 202
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 206
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 211
    if-nez p2, :cond_0

    .line 212
    iget-object v2, p0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030005

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 214
    new-instance v0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter$ViewHolder;-><init>(Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter;)V

    .line 215
    .local v0, "holder":Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter$ViewHolder;
    const v2, 0x7f090008

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter$ViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 217
    const v2, 0x7f09000a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    .line 219
    const v2, 0x7f090009

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter$ViewHolder;->appButton:Landroid/widget/Button;

    .line 221
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 226
    :goto_0
    iget-object v3, v0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter$ViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter;->mAppIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    iget-object v3, v0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v2, v0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter$ViewHolder;->appButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f070046

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v2, p0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter;->mPkgList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 231
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter$ViewHolder;->appButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter$1;-><init>(Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    return-object p2

    .line 223
    .end local v0    # "holder":Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter$ViewHolder;
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter$ViewHolder;
    goto :goto_0
.end method
