.class Landroid/widget/TimePickerSpinnerDelegate$7;
.super Ljava/lang/Object;
.source "TimePickerSpinnerDelegate.java"

# interfaces
.implements Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TimePickerSpinnerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/widget/TimePickerSpinnerDelegate;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate$7;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextReceived(Ljava/lang/CharSequence;)V
    .locals 13
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "//"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .local v9, "numString":[Ljava/lang/String;
    array-length v11, v9

    const/4 v12, 0x2

    if-ge v11, v12, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, -0x1

    .local v2, "hour":I
    const/4 v7, -0x1

    .local v7, "minute":I
    const/4 v1, 0x0

    .local v1, "existAmPm":Z
    const-string v10, ""

    .local v10, "tmpStr":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v11, v9

    if-ge v3, v11, :cond_c

    aget-object v11, v9, v3

    if-eqz v11, :cond_2

    aget-object v11, v9, v3

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    :goto_2
    if-nez v3, :cond_4

    :try_start_0
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const-string v10, ""

    goto :goto_2

    :cond_3
    const/4 v2, -0x1

    goto :goto_3

    :catch_0
    move-exception v8

    .local v8, "nfe":Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    goto :goto_3

    .end local v8    # "nfe":Ljava/lang/NumberFormatException;
    :cond_4
    const/4 v11, 0x1

    if-ne v3, v11, :cond_6

    :try_start_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    :goto_4
    goto :goto_3

    :cond_5
    const/4 v7, -0x1

    goto :goto_4

    :catch_1
    move-exception v8

    .restart local v8    # "nfe":Ljava/lang/NumberFormatException;
    const/4 v7, -0x1

    goto :goto_3

    .end local v8    # "nfe":Ljava/lang/NumberFormatException;
    :cond_6
    const/4 v11, 0x2

    if-ne v3, v11, :cond_1

    aget-object v11, v9, v3

    if-eqz v11, :cond_9

    aget-object v11, v9, v3

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    :goto_5
    const-string v11, ""

    if-eq v10, v11, :cond_7

    const/4 v1, 0x1

    :cond_7
    :try_start_2
    iget-object v11, p0, Landroid/widget/TimePickerSpinnerDelegate$7;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;
    invoke-static {v11}, Landroid/widget/TimePickerSpinnerDelegate;->access$900(Landroid/widget/TimePickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v5, v11, v12

    .local v5, "initAM":Ljava/lang/String;
    iget-object v11, p0, Landroid/widget/TimePickerSpinnerDelegate$7;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;
    invoke-static {v11}, Landroid/widget/TimePickerSpinnerDelegate;->access$900(Landroid/widget/TimePickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v6, v11, v12

    .local v6, "initPM":Ljava/lang/String;
    if-eqz v1, :cond_a

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    const-string v11, "AM"

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    :cond_8
    iget-object v11, p0, Landroid/widget/TimePickerSpinnerDelegate$7;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    const/4 v12, 0x1

    # setter for: Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z
    invoke-static {v11, v12}, Landroid/widget/TimePickerSpinnerDelegate;->access$102(Landroid/widget/TimePickerSpinnerDelegate;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .end local v5    # "initAM":Ljava/lang/String;
    .end local v6    # "initPM":Ljava/lang/String;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_3

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9
    const-string v10, ""

    goto :goto_5

    .restart local v5    # "initAM":Ljava/lang/String;
    .restart local v6    # "initPM":Ljava/lang/String;
    :cond_a
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    const-string v11, "PM"

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_b
    iget-object v11, p0, Landroid/widget/TimePickerSpinnerDelegate$7;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    const/4 v12, 0x0

    # setter for: Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z
    invoke-static {v11, v12}, Landroid/widget/TimePickerSpinnerDelegate;->access$102(Landroid/widget/TimePickerSpinnerDelegate;Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    .end local v5    # "initAM":Ljava/lang/String;
    .end local v6    # "initPM":Ljava/lang/String;
    :cond_c
    if-ltz v2, :cond_d

    iget-object v11, p0, Landroid/widget/TimePickerSpinnerDelegate$7;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v11}, Landroid/widget/TimePickerSpinnerDelegate;->access$500(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    :cond_d
    if-ltz v7, :cond_e

    iget-object v11, p0, Landroid/widget/TimePickerSpinnerDelegate$7;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;
    invoke-static {v11}, Landroid/widget/TimePickerSpinnerDelegate;->access$600(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/widget/NumberPicker;->setValue(I)V

    :cond_e
    iget-object v11, p0, Landroid/widget/TimePickerSpinnerDelegate$7;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-virtual {v11}, Landroid/widget/TimePickerSpinnerDelegate;->is24HourView()Z

    move-result v11

    if-nez v11, :cond_f

    if-eqz v1, :cond_f

    iget-object v11, p0, Landroid/widget/TimePickerSpinnerDelegate$7;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z
    invoke-static {v11}, Landroid/widget/TimePickerSpinnerDelegate;->access$100(Landroid/widget/TimePickerSpinnerDelegate;)Z

    move-result v11

    if-eqz v11, :cond_10

    const/4 v4, 0x0

    .local v4, "index":I
    :goto_6
    iget-object v11, p0, Landroid/widget/TimePickerSpinnerDelegate$7;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;
    invoke-static {v11}, Landroid/widget/TimePickerSpinnerDelegate;->access$800(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v11

    if-eqz v11, :cond_11

    iget-object v11, p0, Landroid/widget/TimePickerSpinnerDelegate$7;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;
    invoke-static {v11}, Landroid/widget/TimePickerSpinnerDelegate;->access$800(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/widget/NumberPicker;->setValue(I)V

    .end local v4    # "index":I
    :cond_f
    :goto_7
    iget-object v11, p0, Landroid/widget/TimePickerSpinnerDelegate$7;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # invokes: Landroid/widget/TimePickerSpinnerDelegate;->onTimeChanged()V
    invoke-static {v11}, Landroid/widget/TimePickerSpinnerDelegate;->access$300(Landroid/widget/TimePickerSpinnerDelegate;)V

    goto/16 :goto_0

    :cond_10
    const/4 v4, 0x1

    goto :goto_6

    .restart local v4    # "index":I
    :cond_11
    iget-object v11, p0, Landroid/widget/TimePickerSpinnerDelegate$7;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;
    invoke-static {v11}, Landroid/widget/TimePickerSpinnerDelegate;->access$700(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/Button;

    move-result-object v11

    if-eqz v11, :cond_f

    iget-object v11, p0, Landroid/widget/TimePickerSpinnerDelegate$7;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;
    invoke-static {v11}, Landroid/widget/TimePickerSpinnerDelegate;->access$700(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/Button;

    move-result-object v11

    iget-object v12, p0, Landroid/widget/TimePickerSpinnerDelegate$7;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;
    invoke-static {v12}, Landroid/widget/TimePickerSpinnerDelegate;->access$900(Landroid/widget/TimePickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7
.end method
