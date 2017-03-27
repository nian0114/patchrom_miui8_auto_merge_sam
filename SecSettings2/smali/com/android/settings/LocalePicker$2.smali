.class Lcom/android/settings_ex/LocalePicker$2;
.super Ljava/lang/Object;
.source "LocalePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/LocalePicker;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/LocalePicker;

.field final synthetic val$dialogId:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/LocalePicker;I)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/settings_ex/LocalePicker$2;->this$0:Lcom/android/settings_ex/LocalePicker;

    iput p2, p0, Lcom/android/settings_ex/LocalePicker$2;->val$dialogId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings_ex/LocalePicker$2;->this$0:Lcom/android/settings_ex/LocalePicker;

    iget v1, p0, Lcom/android/settings_ex/LocalePicker$2;->val$dialogId:I

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/LocalePicker;->removeDialog(I)V

    .line 117
    # getter for: Lcom/android/settings_ex/LocalePicker;->mListView:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/settings_ex/LocalePicker;->access$100()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/LocalePicker$2;->this$0:Lcom/android/settings_ex/LocalePicker;

    invoke-virtual {v1}, Lcom/android/settings_ex/LocalePicker;->getIndexCurrentLocale()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 118
    return-void
.end method
