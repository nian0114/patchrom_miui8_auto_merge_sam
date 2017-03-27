.class Lcom/android/settings_ex/notification/BlockNotificationList$NotificationAppAdapter$1;
.super Ljava/lang/Object;
.source "BlockNotificationList.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/BlockNotificationList$NotificationAppAdapter;->bindView(Landroid/view/View;Lcom/android/settings_ex/notification/BlockNotificationList$Row;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private listener:Lcom/android/settings_ex/notification/BlockNotificationList$ClickListener;

.field final synthetic this$1:Lcom/android/settings_ex/notification/BlockNotificationList$NotificationAppAdapter;

.field final synthetic val$row:Lcom/android/settings_ex/notification/BlockNotificationList$AppRow;

.field final synthetic val$vh:Lcom/android/settings_ex/notification/BlockNotificationList$ViewHolder;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/BlockNotificationList$NotificationAppAdapter;Lcom/android/settings_ex/notification/BlockNotificationList$AppRow;Lcom/android/settings_ex/notification/BlockNotificationList$ViewHolder;)V
    .locals 2

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/settings_ex/notification/BlockNotificationList$NotificationAppAdapter$1;->this$1:Lcom/android/settings_ex/notification/BlockNotificationList$NotificationAppAdapter;

    iput-object p2, p0, Lcom/android/settings_ex/notification/BlockNotificationList$NotificationAppAdapter$1;->val$row:Lcom/android/settings_ex/notification/BlockNotificationList$AppRow;

    iput-object p3, p0, Lcom/android/settings_ex/notification/BlockNotificationList$NotificationAppAdapter$1;->val$vh:Lcom/android/settings_ex/notification/BlockNotificationList$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    new-instance v0, Lcom/android/settings_ex/notification/BlockNotificationList$ClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/notification/BlockNotificationList$ClickListener;-><init>(Lcom/android/settings_ex/notification/BlockNotificationList$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/BlockNotificationList$NotificationAppAdapter$1;->listener:Lcom/android/settings_ex/notification/BlockNotificationList$ClickListener;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/settings_ex/notification/BlockNotificationList$NotificationAppAdapter$1;->this$1:Lcom/android/settings_ex/notification/BlockNotificationList$NotificationAppAdapter;

    iget-object v0, v0, Lcom/android/settings_ex/notification/BlockNotificationList$NotificationAppAdapter;->this$0:Lcom/android/settings_ex/notification/BlockNotificationList;

    # getter for: Lcom/android/settings_ex/notification/BlockNotificationList;->mBackend:Lcom/android/settings_ex/notification/NotificationBackend;
    invoke-static {v0}, Lcom/android/settings_ex/notification/BlockNotificationList;->access$900(Lcom/android/settings_ex/notification/BlockNotificationList;)Lcom/android/settings_ex/notification/NotificationBackend;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings_ex/notification/BlockNotificationList$NotificationAppAdapter$1;->val$row:Lcom/android/settings_ex/notification/BlockNotificationList$AppRow;

    iget-object v2, v0, Lcom/android/settings_ex/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings_ex/notification/BlockNotificationList$NotificationAppAdapter$1;->val$row:Lcom/android/settings_ex/notification/BlockNotificationList$AppRow;

    iget v3, v0, Lcom/android/settings_ex/notification/BlockNotificationList$AppRow;->uid:I

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settings_ex/notification/NotificationBackend;->setNotificationsBanned(Ljava/lang/String;IZ)Z

    .line 503
    iget-object v0, p0, Lcom/android/settings_ex/notification/BlockNotificationList$NotificationAppAdapter$1;->val$vh:Lcom/android/settings_ex/notification/BlockNotificationList$ViewHolder;

    iget-object v0, v0, Lcom/android/settings_ex/notification/BlockNotificationList$ViewHolder;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/android/settings_ex/notification/BlockNotificationList$NotificationAppAdapter$1;->val$vh:Lcom/android/settings_ex/notification/BlockNotificationList$ViewHolder;

    iget-object v0, v0, Lcom/android/settings_ex/notification/BlockNotificationList$ViewHolder;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings_ex/notification/BlockNotificationList$NotificationAppAdapter$1;->listener:Lcom/android/settings_ex/notification/BlockNotificationList$ClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    :cond_0
    return-void

    .line 502
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
