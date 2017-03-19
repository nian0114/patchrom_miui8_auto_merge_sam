.class Lcom/android/providers/media/RingtonePickerActivity$3;
.super Ljava/lang/Object;
.source "RingtonePickerActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/RingtonePickerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/RingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/providers/media/RingtonePickerActivity;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/providers/media/RingtonePickerActivity$3;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "id"    # Landroid/view/View;
    .param p2, "isFocused"    # Z

    .prologue
    .line 427
    if-eqz p2, :cond_2

    .line 428
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity$3;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    # getter for: Lcom/android/providers/media/RingtonePickerActivity;->mSampleRingtonePos:I
    invoke-static {v0}, Lcom/android/providers/media/RingtonePickerActivity;->access$1500(Lcom/android/providers/media/RingtonePickerActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity$3;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    # getter for: Lcom/android/providers/media/RingtonePickerActivity;->mHasAddItem:Z
    invoke-static {v0}, Lcom/android/providers/media/RingtonePickerActivity;->access$1200(Lcom/android/providers/media/RingtonePickerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity$3;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    # getter for: Lcom/android/providers/media/RingtonePickerActivity;->mSampleRingtonePos:I
    invoke-static {v0}, Lcom/android/providers/media/RingtonePickerActivity;->access$1500(Lcom/android/providers/media/RingtonePickerActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$3;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    # getter for: Lcom/android/providers/media/RingtonePickerActivity;->mAddPos:I
    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->access$100(Lcom/android/providers/media/RingtonePickerActivity;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 430
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity$3;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    # invokes: Lcom/android/providers/media/RingtonePickerActivity;->stopAnyPlayingRingtone()V
    invoke-static {v0}, Lcom/android/providers/media/RingtonePickerActivity;->access$1100(Lcom/android/providers/media/RingtonePickerActivity;)V

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity$3;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$3;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    # getter for: Lcom/android/providers/media/RingtonePickerActivity;->mSampleRingtonePos:I
    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->access$1500(Lcom/android/providers/media/RingtonePickerActivity;)I

    move-result v1

    const/16 v2, 0x12c

    # invokes: Lcom/android/providers/media/RingtonePickerActivity;->playRingtone(II)V
    invoke-static {v0, v1, v2}, Lcom/android/providers/media/RingtonePickerActivity;->access$1300(Lcom/android/providers/media/RingtonePickerActivity;II)V

    goto :goto_0

    .line 436
    :cond_2
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity$3;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    # invokes: Lcom/android/providers/media/RingtonePickerActivity;->stopAnyPlayingRingtone()V
    invoke-static {v0}, Lcom/android/providers/media/RingtonePickerActivity;->access$1100(Lcom/android/providers/media/RingtonePickerActivity;)V

    goto :goto_0
.end method
