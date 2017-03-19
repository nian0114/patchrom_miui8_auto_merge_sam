.class Lcom/android/providers/media/RingtonePickerActivity$1;
.super Ljava/lang/Object;
.source "RingtonePickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/RingtonePickerActivity;
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
    .line 161
    iput-object p1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 166
    const-string v1, "RingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " item clicked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    # setter for: Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I
    invoke-static {v1, p3}, Lcom/android/providers/media/RingtonePickerActivity;->access$002(Lcom/android/providers/media/RingtonePickerActivity;I)I

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    # getter for: Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I
    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->access$000(Lcom/android/providers/media/RingtonePickerActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    # getter for: Lcom/android/providers/media/RingtonePickerActivity;->mAddPos:I
    invoke-static {v2}, Lcom/android/providers/media/RingtonePickerActivity;->access$100(Lcom/android/providers/media/RingtonePickerActivity;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 172
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    # getter for: Lcom/android/providers/media/RingtonePickerActivity;->mAddItem:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->access$200(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    # getter for: Lcom/android/providers/media/RingtonePickerActivity;->mAddItem:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->access$200(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->performClick()Z

    .line 191
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-virtual {v2}, Lcom/android/providers/media/RingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/android/providers/media/RingtonePickerActivity;->canSetRingtone(Landroid/content/Context;Landroid/net/Uri;)Z
    invoke-static {v1, v2, v0}, Lcom/android/providers/media/RingtonePickerActivity;->access$1000(Lcom/android/providers/media/RingtonePickerActivity;Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 192
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    # invokes: Lcom/android/providers/media/RingtonePickerActivity;->stopAnyPlayingRingtone()V
    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->access$1100(Lcom/android/providers/media/RingtonePickerActivity;)V

    .line 193
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-virtual {v1}, Lcom/android/providers/media/RingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    const v3, 0x7f070009

    invoke-virtual {v2, v3}, Lcom/android/providers/media/RingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 199
    :goto_1
    return-void

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    # getter for: Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I
    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->access$000(Lcom/android/providers/media/RingtonePickerActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    # getter for: Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtonePos:I
    invoke-static {v2}, Lcom/android/providers/media/RingtonePickerActivity;->access$300(Lcom/android/providers/media/RingtonePickerActivity;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 176
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    # getter for: Lcom/android/providers/media/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->access$400(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/net/Uri;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    # getter for: Lcom/android/providers/media/RingtonePickerActivity;->mDefaultItem:Landroid/widget/CheckedTextView;
    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->access$500(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/widget/CheckedTextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    .line 178
    :cond_2
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    # getter for: Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I
    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->access$000(Lcom/android/providers/media/RingtonePickerActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    # getter for: Lcom/android/providers/media/RingtonePickerActivity;->mSilentPos:I
    invoke-static {v2}, Lcom/android/providers/media/RingtonePickerActivity;->access$600(Lcom/android/providers/media/RingtonePickerActivity;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 180
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    # getter for: Lcom/android/providers/media/RingtonePickerActivity;->mSilentItem:Landroid/widget/CheckedTextView;
    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->access$700(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/widget/CheckedTextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 181
    const/4 v0, 0x0

    .line 182
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    # getter for: Lcom/android/providers/media/RingtonePickerActivity;->mDefaultItem:Landroid/widget/CheckedTextView;
    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->access$500(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/widget/CheckedTextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    # getter for: Lcom/android/providers/media/RingtonePickerActivity;->mDefaultItem:Landroid/widget/CheckedTextView;
    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->access$500(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/widget/CheckedTextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    .line 185
    :cond_3
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    # getter for: Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtonePos:I
    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->access$300(Lcom/android/providers/media/RingtonePickerActivity;)I

    move-result v1

    if-eq v1, v6, :cond_4

    .line 186
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    # getter for: Lcom/android/providers/media/RingtonePickerActivity;->mDefaultItem:Landroid/widget/CheckedTextView;
    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->access$500(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/widget/CheckedTextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 187
    :cond_4
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    # getter for: Lcom/android/providers/media/RingtonePickerActivity;->mSilentPos:I
    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->access$600(Lcom/android/providers/media/RingtonePickerActivity;)I

    move-result v1

    if-eq v1, v6, :cond_5

    .line 188
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    # getter for: Lcom/android/providers/media/RingtonePickerActivity;->mSilentItem:Landroid/widget/CheckedTextView;
    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->access$700(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/widget/CheckedTextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 189
    :cond_5
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    # getter for: Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;
    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->access$900(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/media/RingtoneManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    iget-object v3, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    # getter for: Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I
    invoke-static {v3}, Lcom/android/providers/media/RingtonePickerActivity;->access$000(Lcom/android/providers/media/RingtonePickerActivity;)I

    move-result v3

    # invokes: Lcom/android/providers/media/RingtonePickerActivity;->getRingtoneManagerPosition(I)I
    invoke-static {v2, v3}, Lcom/android/providers/media/RingtonePickerActivity;->access$800(Lcom/android/providers/media/RingtonePickerActivity;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 195
    :cond_6
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    # getter for: Lcom/android/providers/media/RingtonePickerActivity;->mHasAddItem:Z
    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->access$1200(Lcom/android/providers/media/RingtonePickerActivity;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    # getter for: Lcom/android/providers/media/RingtonePickerActivity;->mAddPos:I
    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->access$100(Lcom/android/providers/media/RingtonePickerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_7

    .line 196
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    # invokes: Lcom/android/providers/media/RingtonePickerActivity;->stopAnyPlayingRingtone()V
    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->access$1100(Lcom/android/providers/media/RingtonePickerActivity;)V

    goto/16 :goto_1

    .line 198
    :cond_7
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    # invokes: Lcom/android/providers/media/RingtonePickerActivity;->playRingtone(II)V
    invoke-static {v1, p3, v4}, Lcom/android/providers/media/RingtonePickerActivity;->access$1300(Lcom/android/providers/media/RingtonePickerActivity;II)V

    goto/16 :goto_1
.end method
