.class Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$1;
.super Ljava/lang/Object;
.source "WifiApSetDataLimitDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->validate()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->access$300(Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)V

    .line 132
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 127
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 114
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 116
    .local v1, "length":I
    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mTvDataLength:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->access$000(Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->access$200(Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->access$100(Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a007e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mTvDataLength:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->access$000(Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->access$200(Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->access$100(Lcom/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method
