.class Lcom/android/settings_ex/BlockSettings$5;
.super Ljava/lang/Object;
.source "BlockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/BlockSettings;->makeVideoCallBlockDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/BlockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/BlockSettings;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/settings_ex/BlockSettings$5;->this$0:Lcom/android/settings_ex/BlockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/settings_ex/BlockSettings$5;->this$0:Lcom/android/settings_ex/BlockSettings;

    # setter for: Lcom/android/settings_ex/BlockSettings;->mListIndex:I
    invoke-static {v0, p2}, Lcom/android/settings_ex/BlockSettings;->access$002(Lcom/android/settings_ex/BlockSettings;I)I

    .line 297
    iget-object v0, p0, Lcom/android/settings_ex/BlockSettings$5;->this$0:Lcom/android/settings_ex/BlockSettings;

    iget-object v1, p0, Lcom/android/settings_ex/BlockSettings$5;->this$0:Lcom/android/settings_ex/BlockSettings;

    # getter for: Lcom/android/settings_ex/BlockSettings;->mListIndex:I
    invoke-static {v1}, Lcom/android/settings_ex/BlockSettings;->access$000(Lcom/android/settings_ex/BlockSettings;)I

    move-result v1

    # invokes: Lcom/android/settings_ex/BlockSettings;->setBlockMode(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/BlockSettings;->access$100(Lcom/android/settings_ex/BlockSettings;I)V

    .line 298
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 299
    iget-object v0, p0, Lcom/android/settings_ex/BlockSettings$5;->this$0:Lcom/android/settings_ex/BlockSettings;

    # invokes: Lcom/android/settings_ex/BlockSettings;->updateSummary()V
    invoke-static {v0}, Lcom/android/settings_ex/BlockSettings;->access$200(Lcom/android/settings_ex/BlockSettings;)V

    .line 300
    return-void
.end method
