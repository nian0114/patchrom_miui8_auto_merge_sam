.class Lcom/android/settings_ex/deviceinfo/StatusVZW$8;
.super Ljava/lang/Object;
.source "StatusVZW.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/deviceinfo/StatusVZW;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/StatusVZW;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/StatusVZW;)V
    .locals 0

    .prologue
    .line 672
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/StatusVZW$8;->this$0:Lcom/android/settings_ex/deviceinfo/StatusVZW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 676
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    .line 677
    .local v1, "listAdapter":Landroid/widget/ListAdapter;
    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 679
    .local v2, "pref":Landroid/preference/Preference;
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StatusVZW$8;->this$0:Lcom/android/settings_ex/deviceinfo/StatusVZW;

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/deviceinfo/StatusVZW;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 681
    .local v0, "cm":Landroid/content/ClipboardManager;
    invoke-virtual {v2}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 682
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StatusVZW$8;->this$0:Lcom/android/settings_ex/deviceinfo/StatusVZW;

    const v4, 0x1040326

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 686
    const/4 v3, 0x1

    return v3
.end method
