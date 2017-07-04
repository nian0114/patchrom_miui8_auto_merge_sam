.class public final Lcom/android/internal/telephony/uicc/CsimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "CsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "CsimFH"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected getEFPath(I)Ljava/lang/String;
    .locals 11
    .param p1, "efid"    # I

    .prologue
    const/16 v10, 0x6f22

    const/16 v9, 0x4f22

    const/16 v8, 0x4f21

    const/16 v7, 0x4f20

    const/4 v6, 0x1

    .line 45
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-le v3, v6, :cond_10

    .line 46
    const-string v3, "CTC"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->getPhoneId()I

    move-result v3

    if-nez v3, :cond_7

    .line 48
    const-string v3, "ril.IsCSIM"

    const/4 v4, 0x0

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 49
    .local v1, "isCsim":I
    const/16 v3, 0x6f3c

    if-ne p1, v3, :cond_3

    .line 50
    invoke-static {}, Landroid/telephony/TelephonyManager;->isSelectTelecomDF()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    const-string v2, "3F007F10"

    .line 121
    .end local v1    # "isCsim":I
    :cond_0
    :goto_0
    return-object v2

    .line 53
    .restart local v1    # "isCsim":I
    :cond_1
    if-ne v1, v6, :cond_2

    .line 54
    const-string v2, "3F007FFF"

    goto :goto_0

    .line 56
    :cond_2
    const-string v2, "3F007F25"

    goto :goto_0

    .line 59
    :cond_3
    if-ne p1, v10, :cond_5

    .line 60
    if-ne v1, v6, :cond_4

    .line 61
    const-string v2, "3F007FFF"

    goto :goto_0

    .line 63
    :cond_4
    const-string v2, "3F007F25"

    goto :goto_0

    .line 65
    :cond_5
    if-eq p1, v7, :cond_6

    if-eq p1, v8, :cond_6

    if-ne p1, v9, :cond_10

    .line 66
    :cond_6
    const-string v2, "3F007F105F3C"

    goto :goto_0

    .line 68
    .end local v1    # "isCsim":I
    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 71
    :cond_8
    const-string v3, "ril.ICC_TYPE"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->getPhoneId()I

    move-result v4

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 72
    .local v0, "icctype":I
    const/4 v3, 0x4

    if-eq v0, v3, :cond_9

    const/4 v3, 0x3

    if-ne v0, v3, :cond_10

    .line 73
    :cond_9
    const-string v3, "ril.IsCSIM"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->getPhoneId()I

    move-result v4

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 74
    .restart local v1    # "isCsim":I
    const/16 v3, 0x6f3c

    if-ne p1, v3, :cond_c

    .line 75
    invoke-static {}, Landroid/telephony/TelephonyManager;->isSelectTelecomDF()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 76
    const-string v2, "3F007F10"

    goto :goto_0

    .line 78
    :cond_a
    if-ne v1, v6, :cond_b

    .line 79
    const-string v2, "3F007FFF"

    goto :goto_0

    .line 81
    :cond_b
    const-string v2, "3F007F25"

    goto :goto_0

    .line 84
    :cond_c
    if-ne p1, v10, :cond_e

    .line 85
    if-ne v1, v6, :cond_d

    .line 86
    const-string v2, "3F007FFF"

    goto :goto_0

    .line 88
    :cond_d
    const-string v2, "3F007F25"

    goto :goto_0

    .line 90
    :cond_e
    if-eq p1, v7, :cond_f

    if-eq p1, v8, :cond_f

    if-ne p1, v9, :cond_10

    .line 91
    :cond_f
    const-string v2, "3F007F105F3C"

    goto/16 :goto_0

    .line 96
    .end local v0    # "icctype":I
    .end local v1    # "isCsim":I
    :cond_10
    sparse-switch p1, :sswitch_data_0

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "path":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 119
    const-string v2, "3F007F105F3A"

    goto/16 :goto_0

    .line 112
    .end local v2    # "path":Ljava/lang/String;
    :sswitch_0
    const-string v2, "3F007FFF"

    goto/16 :goto_0

    .line 96
    :sswitch_data_0
    .sparse-switch
        0x6f22 -> :sswitch_0
        0x6f28 -> :sswitch_0
        0x6f31 -> :sswitch_0
        0x6f32 -> :sswitch_0
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f3c -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f41 -> :sswitch_0
        0x6f44 -> :sswitch_0
        0x6f4d -> :sswitch_0
        0x6f5a -> :sswitch_0
        0x6f74 -> :sswitch_0
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 126
    const-string v0, "CsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 131
    const-string v0, "CsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method
