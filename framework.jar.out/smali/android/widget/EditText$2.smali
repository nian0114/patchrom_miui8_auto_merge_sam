.class Landroid/widget/EditText$2;
.super Ljava/lang/Object;
.source "EditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/EditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/widget/EditText$2;->this$0:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/EditText$2;->this$0:Landroid/widget/EditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    # setter for: Landroid/widget/EditText;->mSipTextLen:I
    invoke-static {v0, v1}, Landroid/widget/EditText;->access$402(Landroid/widget/EditText;I)I

    iget-object v0, p0, Landroid/widget/EditText$2;->this$0:Landroid/widget/EditText;

    # invokes: Landroid/widget/EditText;->updateSipFocusStatus()V
    invoke-static {v0}, Landroid/widget/EditText;->access$300(Landroid/widget/EditText;)V

    :cond_0
    return-void
.end method
