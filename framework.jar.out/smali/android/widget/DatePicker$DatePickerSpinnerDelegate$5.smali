.class Landroid/widget/DatePicker$DatePickerSpinnerDelegate$5;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DatePicker$DatePickerSpinnerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$5;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextReceived(Ljava/lang/CharSequence;)V
    .locals 13
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "//"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "numString":[Ljava/lang/String;
    array-length v9, v3

    const/4 v10, 0x3

    if-ge v9, v10, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v8, -0x1

    .local v8, "year":I
    const/4 v2, -0x1

    .local v2, "month":I
    const/4 v0, -0x1

    .local v0, "day":I
    const-string v7, ""

    .local v7, "tmpStr":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    const-string v10, "yyyyMMMdd"

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "pattern":Ljava/lang/String;
    invoke-static {v5}, Llibcore/icu/ICU;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object v4

    .local v4, "order":[C
    array-length v6, v4

    .local v6, "spinnerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_4

    aget-char v9, v4, v1

    sparse-switch v9, :sswitch_data_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :sswitch_0
    aget-object v9, v3, v1

    if-eqz v9, :cond_1

    aget-object v9, v3, v1

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    :goto_3
    iget-object v9, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$5;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    const/16 v10, 0x64

    # invokes: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getValueFromWBResult(CLjava/lang/String;)I
    invoke-static {v9, v10, v7}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1500(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;CLjava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_1
    const-string v7, ""

    goto :goto_3

    :sswitch_1
    aget-object v9, v3, v1

    if-eqz v9, :cond_2

    aget-object v9, v3, v1

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    :goto_4
    iget-object v9, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$5;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    const/16 v10, 0x4d

    # invokes: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getValueFromWBResult(CLjava/lang/String;)I
    invoke-static {v9, v10, v7}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1500(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;CLjava/lang/String;)I

    move-result v2

    goto :goto_2

    :cond_2
    const-string v7, ""

    goto :goto_4

    :sswitch_2
    aget-object v9, v3, v1

    if-eqz v9, :cond_3

    aget-object v9, v3, v1

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    :goto_5
    iget-object v9, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$5;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    const/16 v10, 0x79

    # invokes: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getValueFromWBResult(CLjava/lang/String;)I
    invoke-static {v9, v10, v7}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1500(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;CLjava/lang/String;)I

    move-result v8

    goto :goto_2

    :cond_3
    const-string v7, ""

    goto :goto_5

    :cond_4
    iget-object v10, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$5;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    if-lez v8, :cond_5

    .end local v8    # "year":I
    :goto_6
    if-lez v2, :cond_6

    add-int/lit8 v9, v2, -0x1

    :goto_7
    if-lez v0, :cond_7

    .end local v0    # "day":I
    :goto_8
    # invokes: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setDate(III)V
    invoke-static {v10, v8, v9, v0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$500(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;III)V

    iget-object v9, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$5;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # invokes: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateSpinners()V
    invoke-static {v9}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$600(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    iget-object v9, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$5;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # invokes: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateCalendarView()V
    invoke-static {v9}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$700(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    iget-object v9, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$5;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # invokes: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->notifyDateChanged()V
    invoke-static {v9}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$800(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    goto :goto_0

    .restart local v0    # "day":I
    .restart local v8    # "year":I
    :cond_5
    iget-object v9, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$5;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v9}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$000(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v9

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    goto :goto_6

    .end local v8    # "year":I
    :cond_6
    iget-object v9, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$5;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v9}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$000(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v9

    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    goto :goto_7

    :cond_7
    iget-object v11, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$5;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v11}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$000(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v11

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_8

    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_0
        0x79 -> :sswitch_2
    .end sparse-switch
.end method
