.class final Lcom/android/settings_ex/notification/NotificationsSubSettings$H;
.super Landroid/os/Handler;
.source "NotificationsSubSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/NotificationsSubSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/NotificationsSubSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/notification/NotificationsSubSettings;)V
    .locals 1

    .prologue
    .line 1006
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationsSubSettings$H;->this$0:Lcom/android/settings_ex/notification/NotificationsSubSettings;

    .line 1007
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1008
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/notification/NotificationsSubSettings;Lcom/android/settings_ex/notification/NotificationsSubSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/notification/NotificationsSubSettings;
    .param p2, "x1"    # Lcom/android/settings_ex/notification/NotificationsSubSettings$1;

    .prologue
    .line 1001
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/NotificationsSubSettings$H;-><init>(Lcom/android/settings_ex/notification/NotificationsSubSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1012
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1023
    :goto_0
    :pswitch_0
    return-void

    .line 1014
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationsSubSettings$H;->this$0:Lcom/android/settings_ex/notification/NotificationsSubSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationsSubSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationsSubSettings;->access$800(Lcom/android/settings_ex/notification/NotificationsSubSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1017
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationsSubSettings$H;->this$0:Lcom/android/settings_ex/notification/NotificationsSubSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationsSubSettings;->mPhoneRingtone2Preference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationsSubSettings;->access$1200(Lcom/android/settings_ex/notification/NotificationsSubSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1020
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationsSubSettings$H;->this$0:Lcom/android/settings_ex/notification/NotificationsSubSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationsSubSettings;->mNotificationSound:Lcom/android/settings_ex/DefaultRingtonePreference;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationsSubSettings;->access$1300(Lcom/android/settings_ex/notification/NotificationsSubSettings;)Lcom/android/settings_ex/DefaultRingtonePreference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/DefaultRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1012
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
