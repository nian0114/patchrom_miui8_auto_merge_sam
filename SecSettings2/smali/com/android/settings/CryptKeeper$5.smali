.class Lcom/android/settings_ex/CryptKeeper$5;
.super Landroid/telephony/PhoneStateListener;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0

    .prologue
    .line 709
    iput-object p1, p0, Lcom/android/settings_ex/CryptKeeper$5;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 712
    packed-switch p1, :pswitch_data_0

    .line 719
    :goto_0
    :pswitch_0
    return-void

    .line 715
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper$5;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-virtual {v0}, Lcom/android/settings_ex/CryptKeeper;->updateEmergencyCallButtonState()V

    goto :goto_0

    .line 712
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
