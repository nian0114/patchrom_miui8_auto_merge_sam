.class final Lcom/android/settings_ex/notification/NotificationsSubSettings$6;
.super Lcom/android/settings_ex/notification/SettingPref;
.source "NotificationsSubSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/NotificationsSubSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method varargs constructor <init>(ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # I
    .param p5, "x4"    # [I

    .prologue
    .line 277
    invoke-direct/range {p0 .. p5}, Lcom/android/settings_ex/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    return-void
.end method


# virtual methods
.method protected getCaption(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "value"    # I

    .prologue
    .line 285
    packed-switch p2, :pswitch_data_0

    .line 291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 287
    :pswitch_0
    const v0, 0x7f0e0e4b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    :goto_0
    return-object v0

    :pswitch_1
    const v0, 0x7f0e0e4c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isApplicable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 280
    # invokes: Lcom/android/settings_ex/notification/NotificationsSubSettings;->hasDockSettings(Landroid/content/Context;)Z
    invoke-static {p1}, Lcom/android/settings_ex/notification/NotificationsSubSettings;->access$400(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
