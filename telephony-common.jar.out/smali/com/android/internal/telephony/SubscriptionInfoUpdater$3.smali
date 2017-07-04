.class Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;
.super Landroid/database/ContentObserver;
.source "SubscriptionInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfUpdate"    # Z

    .prologue
    .line 281
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 282
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const-string v4, "PHONE2_ON Observer onChange hit !!!"

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    .line 284
    .local v1, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v2

    .line 285
    .local v2, "subId":I
    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$200()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone2_on"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 286
    .local v0, "phoneOnState":I
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/SubscriptionController;->setSubState(II)I

    .line 287
    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->refreshSubInfo()V

    .line 294
    .end local v0    # "phoneOnState":I
    .end local v1    # "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    .end local v2    # "subId":I
    :cond_0
    return-void
.end method
