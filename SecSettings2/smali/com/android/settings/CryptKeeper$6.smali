.class Lcom/android/settings_ex/CryptKeeper$6;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/CryptKeeper;->setupUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field owner_info:Ljava/lang/String;

.field password_visible:Z

.field pattern_visible:Z

.field previousfailedcount:I

.field final synthetic this$0:Lcom/android/settings_ex/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0

    .prologue
    .line 780
    iput-object p1, p0, Lcom/android/settings_ex/CryptKeeper$6;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 780
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/CryptKeeper$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 790
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper$6;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # invokes: Lcom/android/settings_ex/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v4}, Lcom/android/settings_ex/CryptKeeper;->access$400(Lcom/android/settings_ex/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 791
    .local v1, "service":Landroid/os/storage/IMountService;
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper$6;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-interface {v1}, Landroid/os/storage/IMountService;->getPasswordType()I

    move-result v5

    # setter for: Lcom/android/settings_ex/CryptKeeper;->passwordType:I
    invoke-static {v4, v5}, Lcom/android/settings_ex/CryptKeeper;->access$1702(Lcom/android/settings_ex/CryptKeeper;I)I

    .line 792
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getCurrentEncryptionFailCount()I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/CryptKeeper$6;->previousfailedcount:I

    .line 793
    const-string v4, "OwnerInfo"

    invoke-interface {v1, v4}, Landroid/os/storage/IMountService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/CryptKeeper$6;->owner_info:Ljava/lang/String;

    .line 794
    const-string v4, "0"

    const-string v5, "PatternVisible"

    invoke-interface {v1, v5}, Landroid/os/storage/IMountService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v2

    :goto_0
    iput-boolean v4, p0, Lcom/android/settings_ex/CryptKeeper$6;->pattern_visible:Z

    .line 795
    const-string v4, "0"

    const-string v5, "PasswordVisible"

    invoke-interface {v1, v5}, Landroid/os/storage/IMountService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings_ex/CryptKeeper$6;->password_visible:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    .end local v1    # "service":Landroid/os/storage/IMountService;
    :goto_2
    const/4 v2, 0x0

    return-object v2

    .restart local v1    # "service":Landroid/os/storage/IMountService;
    :cond_0
    move v4, v3

    .line 794
    goto :goto_0

    :cond_1
    move v2, v3

    .line 795
    goto :goto_1

    .line 796
    .end local v1    # "service":Landroid/os/storage/IMountService;
    :catch_0
    move-exception v0

    .line 797
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling mount service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 780
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/CryptKeeper$6;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 8
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 805
    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper$6;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-virtual {v3}, Lcom/android/settings_ex/CryptKeeper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "show_password"

    iget-boolean v3, p0, Lcom/android/settings_ex/CryptKeeper$6;->password_visible:Z

    if-eqz v3, :cond_4

    move v3, v4

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 808
    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper$6;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # getter for: Lcom/android/settings_ex/CryptKeeper;->passwordType:I
    invoke-static {v3}, Lcom/android/settings_ex/CryptKeeper;->access$1700(Lcom/android/settings_ex/CryptKeeper;)I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_5

    .line 809
    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper$6;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const v6, 0x7f040079

    invoke-virtual {v3, v6}, Lcom/android/settings_ex/CryptKeeper;->setContentView(I)V

    .line 810
    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper$6;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const v6, 0x7f0e0c24

    # setter for: Lcom/android/settings_ex/CryptKeeper;->mStatusString:I
    invoke-static {v3, v6}, Lcom/android/settings_ex/CryptKeeper;->access$1802(Lcom/android/settings_ex/CryptKeeper;I)I

    .line 819
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper$6;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const v6, 0x7f0d0147

    invoke-virtual {v3, v6}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 820
    .local v2, "status":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper$6;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # getter for: Lcom/android/settings_ex/CryptKeeper;->mStatusString:I
    invoke-static {v3}, Lcom/android/settings_ex/CryptKeeper;->access$1800(Lcom/android/settings_ex/CryptKeeper;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 822
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 823
    .local v0, "lFieldLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 824
    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper$6;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-virtual {v3}, Lcom/android/settings_ex/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v6, 0x1e0

    if-ge v3, v6, :cond_0

    .line 825
    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper$6;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const/16 v6, 0x32

    # invokes: Lcom/android/settings_ex/CryptKeeper;->dipToPixel(I)I
    invoke-static {v3, v6}, Lcom/android/settings_ex/CryptKeeper;->access$1900(Lcom/android/settings_ex/CryptKeeper;I)I

    move-result v3

    invoke-virtual {v0, v5, v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 830
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper$6;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const v6, 0x7f0d014f

    invoke-virtual {v3, v6}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 831
    .local v1, "ownerInfo":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper$6;->owner_info:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 832
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 834
    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper$6;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # invokes: Lcom/android/settings_ex/CryptKeeper;->passwordEntryInit()V
    invoke-static {v3}, Lcom/android/settings_ex/CryptKeeper;->access$2000(Lcom/android/settings_ex/CryptKeeper;)V

    .line 836
    iget v3, p0, Lcom/android/settings_ex/CryptKeeper$6;->previousfailedcount:I

    # getter for: Lcom/android/settings_ex/CryptKeeper;->mMaxFailedAttempts:I
    invoke-static {}, Lcom/android/settings_ex/CryptKeeper;->access$700()I

    move-result v6

    if-lt v3, v6, :cond_1

    .line 837
    const-string v3, "CryptKeeper"

    const-string v6, "previous failed count is over the max filed attemps count.. wipe stroage!"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper$6;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # invokes: Lcom/android/settings_ex/CryptKeeper;->wipeStorage()V
    invoke-static {v3}, Lcom/android/settings_ex/CryptKeeper;->access$800(Lcom/android/settings_ex/CryptKeeper;)V

    .line 842
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper$6;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const v6, 0x1020002

    invoke-virtual {v3, v6}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/high16 v6, 0x400000

    invoke-virtual {v3, v6}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 844
    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper$6;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # getter for: Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v3}, Lcom/android/settings_ex/CryptKeeper;->access$200(Lcom/android/settings_ex/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 845
    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper$6;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # getter for: Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v3}, Lcom/android/settings_ex/CryptKeeper;->access$200(Lcom/android/settings_ex/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v3

    iget-boolean v6, p0, Lcom/android/settings_ex/CryptKeeper$6;->pattern_visible:Z

    if-nez v6, :cond_7

    :goto_2
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 847
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper$6;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # getter for: Lcom/android/settings_ex/CryptKeeper;->mCooldown:Z
    invoke-static {v3}, Lcom/android/settings_ex/CryptKeeper;->access$2100(Lcom/android/settings_ex/CryptKeeper;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 849
    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper$6;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-virtual {v3, v5}, Lcom/android/settings_ex/CryptKeeper;->setBackFunctionality(Z)V

    .line 850
    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper$6;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # invokes: Lcom/android/settings_ex/CryptKeeper;->cooldown()V
    invoke-static {v3}, Lcom/android/settings_ex/CryptKeeper;->access$2200(Lcom/android/settings_ex/CryptKeeper;)V

    .line 853
    :cond_3
    return-void

    .end local v0    # "lFieldLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "ownerInfo":Landroid/widget/TextView;
    .end local v2    # "status":Landroid/widget/TextView;
    :cond_4
    move v3, v5

    .line 805
    goto/16 :goto_0

    .line 811
    :cond_5
    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper$6;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # getter for: Lcom/android/settings_ex/CryptKeeper;->passwordType:I
    invoke-static {v3}, Lcom/android/settings_ex/CryptKeeper;->access$1700(Lcom/android/settings_ex/CryptKeeper;)I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_6

    .line 812
    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper$6;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const v6, 0x7f040077

    invoke-virtual {v3, v6}, Lcom/android/settings_ex/CryptKeeper;->setContentView(I)V

    .line 813
    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper$6;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-virtual {v3, v5}, Lcom/android/settings_ex/CryptKeeper;->setBackFunctionality(Z)V

    .line 814
    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper$6;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const v6, 0x7f0e0c25

    # setter for: Lcom/android/settings_ex/CryptKeeper;->mStatusString:I
    invoke-static {v3, v6}, Lcom/android/settings_ex/CryptKeeper;->access$1802(Lcom/android/settings_ex/CryptKeeper;I)I

    goto/16 :goto_1

    .line 816
    :cond_6
    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper$6;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const v6, 0x7f040075

    invoke-virtual {v3, v6}, Lcom/android/settings_ex/CryptKeeper;->setContentView(I)V

    .line 817
    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper$6;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const v6, 0x7f0e0c23

    # setter for: Lcom/android/settings_ex/CryptKeeper;->mStatusString:I
    invoke-static {v3, v6}, Lcom/android/settings_ex/CryptKeeper;->access$1802(Lcom/android/settings_ex/CryptKeeper;I)I

    goto/16 :goto_1

    .restart local v0    # "lFieldLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v1    # "ownerInfo":Landroid/widget/TextView;
    .restart local v2    # "status":Landroid/widget/TextView;
    :cond_7
    move v4, v5

    .line 845
    goto :goto_2
.end method
