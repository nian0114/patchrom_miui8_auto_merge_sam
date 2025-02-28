.class public Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;
.super Ljava/lang/Object;
.source "TimePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwTextWatcher"
.end annotation


# instance fields
.field private mId:I

.field private mMaxLen:I

.field private mNext:I

.field private prevText:Ljava/lang/String;

.field final synthetic this$0:Landroid/widget/TimePickerSpinnerDelegate;


# direct methods
.method public constructor <init>(Landroid/widget/TimePickerSpinnerDelegate;II)V
    .locals 2
    .param p2, "maxLen"    # I
    .param p3, "id"    # I

    .prologue
    iput-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;->mMaxLen:I

    iput p3, p0, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;->mId:I

    iget v0, p0, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;->mNext:I

    return-void

    :cond_0
    iget v0, p0, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private changeFocus()V
    .locals 4

    .prologue
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    iget-object v2, v2, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;->mId:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v1, v2, 0x2

    .local v1, "next":I
    iget v2, p0, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;->mNext:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v2}, Landroid/widget/TimePickerSpinnerDelegate;->access$1300(Landroid/widget/TimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v2

    iget v3, p0, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;->mNext:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v2}, Landroid/widget/TimePickerSpinnerDelegate;->access$1300(Landroid/widget/TimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v2

    iget v3, p0, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;->mId:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v2}, Landroid/widget/TimePickerSpinnerDelegate;->access$1300(Landroid/widget/TimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v2

    iget v3, p0, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;->mId:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "view"    # Landroid/text/Editable;

    .prologue
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->TW_DEBUG:Z
    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->access$1200(Landroid/widget/TimePickerSpinnerDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Picker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aftertextchanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->TW_DEBUG:Z
    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->access$1200(Landroid/widget/TimePickerSpinnerDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Picker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beforeTextChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;->prevText:Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->TW_DEBUG:Z
    invoke-static {v1}, Landroid/widget/TimePickerSpinnerDelegate;->access$1200(Landroid/widget/TimePickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Picker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTextChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->TW_DEBUG:Z
    invoke-static {v1}, Landroid/widget/TimePickerSpinnerDelegate;->access$1200(Landroid/widget/TimePickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Picker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTextChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/TimePickerSpinnerDelegate;->access$1300(Landroid/widget/TimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "tag":Ljava/lang/String;
    if-eqz v0, :cond_4

    const-string v1, "onClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "onLongClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/TimePickerSpinnerDelegate;->access$1300(Landroid/widget/TimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;->mMaxLen:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/TimePickerSpinnerDelegate;->access$1300(Landroid/widget/TimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;->changeFocus()V

    goto :goto_0
.end method
