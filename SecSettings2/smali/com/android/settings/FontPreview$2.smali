.class Lcom/android/settings_ex/FontPreview$2;
.super Ljava/lang/Object;
.source "FontPreview.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/FontPreview;->setFontsizeLayoutSevenOrEleven(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/FontPreview;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/FontPreview;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/settings_ex/FontPreview$2;->this$0:Lcom/android/settings_ex/FontPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 3

    .prologue
    .line 335
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/FontPreview$2;->this$0:Lcom/android/settings_ex/FontPreview;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 336
    .local v0, "myText":Landroid/widget/TextView;
    const v1, 0x800005

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 337
    iget-object v1, p0, Lcom/android/settings_ex/FontPreview$2;->this$0:Lcom/android/settings_ex/FontPreview;

    # getter for: Lcom/android/settings_ex/FontPreview;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/FontPreview;->access$500(Lcom/android/settings_ex/FontPreview;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e09ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v1, p0, Lcom/android/settings_ex/FontPreview$2;->this$0:Lcom/android/settings_ex/FontPreview;

    # getter for: Lcom/android/settings_ex/FontPreview;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/FontPreview;->access$500(Lcom/android/settings_ex/FontPreview;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0206

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 339
    return-object v0
.end method
