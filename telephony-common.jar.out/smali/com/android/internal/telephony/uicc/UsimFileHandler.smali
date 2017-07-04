.class public final Lcom/android/internal/telephony/uicc/UsimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "UsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "UsimFH"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 43
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

    .line 47
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-le v3, v6, :cond_10

    .line 48
    const-string v3, "CTC"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UsimFileHandler;->getPhoneId()I

    move-result v3

    if-nez v3, :cond_7

    .line 50
    const-string v3, "ril.IsCSIM"

    const/4 v4, 0x0

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 51
    .local v1, "isCsim":I
    const/16 v3, 0x6f3c

    if-ne p1, v3, :cond_3

    .line 52
    invoke-static {}, Landroid/telephony/TelephonyManager;->isSelectTelecomDF()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 53
    const-string v2, "3F007F10"

    .line 162
    .end local v1    # "isCsim":I
    :cond_0
    :goto_0
    return-object v2

    .line 55
    .restart local v1    # "isCsim":I
    :cond_1
    if-ne v1, v6, :cond_2

    .line 56
    const-string v2, "3F007FFF"

    goto :goto_0

    .line 58
    :cond_2
    const-string v2, "3F007F25"

    goto :goto_0

    .line 61
    :cond_3
    if-ne p1, v10, :cond_5

    .line 62
    if-ne v1, v6, :cond_4

    .line 63
    const-string v2, "3F007FFF"

    goto :goto_0

    .line 65
    :cond_4
    const-string v2, "3F007F25"

    goto :goto_0

    .line 67
    :cond_5
    if-eq p1, v7, :cond_6

    if-eq p1, v8, :cond_6

    if-ne p1, v9, :cond_10

    .line 68
    :cond_6
    const-string v2, "3F007F105F3C"

    goto :goto_0

    .line 70
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

    .line 73
    :cond_8
    const-string v3, "ril.ICC_TYPE"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UsimFileHandler;->getPhoneId()I

    move-result v4

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 74
    .local v0, "icctype":I
    const/4 v3, 0x4

    if-eq v0, v3, :cond_9

    const/4 v3, 0x3

    if-ne v0, v3, :cond_10

    .line 75
    :cond_9
    const-string v3, "ril.IsCSIM"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UsimFileHandler;->getPhoneId()I

    move-result v4

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 76
    .restart local v1    # "isCsim":I
    const/16 v3, 0x6f3c

    if-ne p1, v3, :cond_c

    .line 77
    invoke-static {}, Landroid/telephony/TelephonyManager;->isSelectTelecomDF()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 78
    const-string v2, "3F007F10"

    goto :goto_0

    .line 80
    :cond_a
    if-ne v1, v6, :cond_b

    .line 81
    const-string v2, "3F007FFF"

    goto :goto_0

    .line 83
    :cond_b
    const-string v2, "3F007F25"

    goto :goto_0

    .line 86
    :cond_c
    if-ne p1, v10, :cond_e

    .line 87
    if-ne v1, v6, :cond_d

    .line 88
    const-string v2, "3F007FFF"

    goto :goto_0

    .line 90
    :cond_d
    const-string v2, "3F007F25"

    goto :goto_0

    .line 92
    :cond_e
    if-eq p1, v7, :cond_f

    if-eq p1, v8, :cond_f

    if-ne p1, v9, :cond_10

    .line 93
    :cond_f
    const-string v2, "3F007F105F3C"

    goto/16 :goto_0

    .line 98
    .end local v0    # "icctype":I
    .end local v1    # "isCsim":I
    :cond_10
    sparse-switch p1, :sswitch_data_0

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "path":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 160
    const-string v2, "3F007F105F3A"

    goto/16 :goto_0

    .line 129
    .end local v2    # "path":Ljava/lang/String;
    :sswitch_0
    const-string v2, "3F007FFF"

    goto/16 :goto_0

    .line 134
    :sswitch_1
    const-string v2, "3F007FFF5F3D"

    goto/16 :goto_0

    .line 139
    :sswitch_2
    const-string v2, "3F007F105F3A"

    goto/16 :goto_0

    .line 143
    :sswitch_3
    const-string v2, "3F007FFF5F50"

    goto/16 :goto_0

    .line 148
    :sswitch_4
    const-string v2, "3F007F43"

    goto/16 :goto_0

    .line 152
    :sswitch_5
    const-string v2, "3F00"

    goto/16 :goto_0

    .line 98
    :sswitch_data_0
    .sparse-switch
        0x2ff0 -> :sswitch_5
        0x4f22 -> :sswitch_1
        0x4f30 -> :sswitch_2
        0x4f55 -> :sswitch_1
        0x4f84 -> :sswitch_3
        0x6f02 -> :sswitch_4
        0x6f05 -> :sswitch_0
        0x6f11 -> :sswitch_0
        0x6f13 -> :sswitch_0
        0x6f14 -> :sswitch_0
        0x6f15 -> :sswitch_0
        0x6f16 -> :sswitch_0
        0x6f17 -> :sswitch_0
        0x6f18 -> :sswitch_0
        0x6f38 -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f3c -> :sswitch_0
        0x6f3e -> :sswitch_0
        0x6f3f -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f42 -> :sswitch_0
        0x6f46 -> :sswitch_0
        0x6f4b -> :sswitch_0
        0x6f4e -> :sswitch_0
        0x6f62 -> :sswitch_0
        0x6fad -> :sswitch_0
        0x6fc5 -> :sswitch_0
        0x6fc6 -> :sswitch_0
        0x6fc7 -> :sswitch_0
        0x6fc8 -> :sswitch_0
        0x6fc9 -> :sswitch_0
        0x6fca -> :sswitch_0
        0x6fcb -> :sswitch_0
        0x6fcd -> :sswitch_0
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 167
    const-string v0, "UsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 172
    const-string v0, "UsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void
.end method
