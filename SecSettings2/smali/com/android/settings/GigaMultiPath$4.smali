.class Lcom/android/settings_ex/GigaMultiPath$4;
.super Ljava/lang/Object;
.source "GigaMultiPath.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/GigaMultiPath;->onSwitchChanged(Landroid/widget/Switch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/GigaMultiPath;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/GigaMultiPath;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/settings_ex/GigaMultiPath$4;->this$0:Lcom/android/settings_ex/GigaMultiPath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/settings_ex/GigaMultiPath$4;->this$0:Lcom/android/settings_ex/GigaMultiPath;

    # getter for: Lcom/android/settings_ex/GigaMultiPath;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings_ex/GigaMultiPath;->access$300(Lcom/android/settings_ex/GigaMultiPath;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 268
    return-void
.end method
