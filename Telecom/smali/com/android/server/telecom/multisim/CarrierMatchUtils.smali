.class public Lcom/android/server/telecom/multisim/CarrierMatchUtils;
.super Ljava/lang/Object;
.source "CarrierMatchUtils.java"


# static fields
.field private static mNewSimCarrierForSmartCSP:I

.field private static mOldSimCarrierForSmartCSP:I

.field private static final mccMncToCarrierCode:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    sput v0, Lcom/android/server/telecom/multisim/CarrierMatchUtils;->mNewSimCarrierForSmartCSP:I

    .line 51
    sput v0, Lcom/android/server/telecom/multisim/CarrierMatchUtils;->mOldSimCarrierForSmartCSP:I

    .line 53
    invoke-static {}, Lcom/android/server/telecom/multisim/CarrierMatchUtils;->createMccMncToCarrierCode()Landroid/util/SparseIntArray;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/multisim/CarrierMatchUtils;->mccMncToCarrierCode:Landroid/util/SparseIntArray;

    return-void
.end method

.method public static carrierCodeFromMccMnc(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 198
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v0

    .line 202
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 203
    sget-object v2, Lcom/android/server/telecom/multisim/CarrierMatchUtils;->mccMncToCarrierCode:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_0
.end method

.method public static changeCSP(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 248
    if-eqz p1, :cond_1

    .line 249
    sget v0, Lcom/android/server/telecom/multisim/CarrierMatchUtils;->mNewSimCarrierForSmartCSP:I

    if-lez v0, :cond_0

    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_operator_code"

    sget v2, Lcom/android/server/telecom/multisim/CarrierMatchUtils;->mNewSimCarrierForSmartCSP:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 261
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_operator_code"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 255
    :cond_1
    sget v0, Lcom/android/server/telecom/multisim/CarrierMatchUtils;->mOldSimCarrierForSmartCSP:I

    if-lez v0, :cond_2

    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_operator_code"

    sget v2, Lcom/android/server/telecom/multisim/CarrierMatchUtils;->mOldSimCarrierForSmartCSP:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 258
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_operator_code"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private static createMccMncToCarrierCode()Landroid/util/SparseIntArray;
    .locals 7

    .prologue
    const/16 v6, 0x27

    const/16 v5, 0x29

    const/16 v4, 0x1f

    const/16 v3, 0xc

    const/16 v2, 0xf

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 58
    const v1, 0x11ad2

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 59
    const v1, 0x11ad3

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 60
    const v1, 0x11ad4

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 63
    const v1, 0x11ad6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 64
    const v1, 0x11ada

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 65
    const v1, 0x11adb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 66
    const v1, 0x11ae7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 69
    const v1, 0x11ae0

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 70
    const v1, 0x11ae8

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 71
    const v1, 0x11aef

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 74
    const v1, 0x11ad5

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 77
    const v1, 0x11af0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 78
    const v1, 0x11af1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 79
    const v1, 0x11af2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 82
    const v1, 0x11ad0

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 83
    const v1, 0x11af7

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 86
    const v1, 0x11adf

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 89
    const v1, 0x11b06

    const/16 v2, 0x51

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 91
    return-object v0
.end method

.method public static getCarrierCode(I)I
    .locals 1

    .prologue
    .line 209
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    .line 210
    div-int/lit8 p0, p0, 0xa

    .line 212
    :cond_0
    return p0
.end method

.method public static getCarrierName(Landroid/content/Context;II)Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 147
    sparse-switch p1, :sswitch_data_0

    .line 193
    const-string v0, ""

    :goto_0
    return-object v0

    .line 149
    :sswitch_0
    if-ne p2, v0, :cond_0

    .line 150
    const v0, 0x7f0b00b9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 152
    :cond_0
    const v0, 0x7f0b00b2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 155
    :sswitch_1
    if-ne p2, v0, :cond_1

    .line 156
    const v0, 0x7f0b00b6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 158
    :cond_1
    const v0, 0x7f0b00ae

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 161
    :sswitch_2
    if-ne p2, v0, :cond_2

    .line 162
    const v0, 0x7f0b00b7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 164
    :cond_2
    const v0, 0x7f0b00b0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 167
    :sswitch_3
    if-ne p2, v0, :cond_3

    .line 168
    const v0, 0x7f0b00b8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_3
    const v0, 0x7f0b00b1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 173
    :sswitch_4
    if-ne p2, v0, :cond_4

    .line 174
    const v0, 0x7f0b00bb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 176
    :cond_4
    const v0, 0x7f0b00b3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 179
    :sswitch_5
    const v0, 0x7f0b00af

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 181
    :sswitch_6
    if-ne p2, v0, :cond_5

    .line 182
    const v0, 0x7f0b00bd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 184
    :cond_5
    const v0, 0x7f0b00b5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 187
    :sswitch_7
    const v0, 0x7f0b00b4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 189
    :sswitch_8
    const v0, 0x7f0b00ba

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 191
    :sswitch_9
    const v0, 0x7f0b00bc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 147
    nop

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_4
        0xf -> :sswitch_0
        0x15 -> :sswitch_1
        0x19 -> :sswitch_9
        0x1f -> :sswitch_2
        0x27 -> :sswitch_5
        0x29 -> :sswitch_3
        0x2b -> :sswitch_6
        0x51 -> :sswitch_7
        0x55 -> :sswitch_8
    .end sparse-switch
.end method

.method public static getCarrierType(I)I
    .locals 1

    .prologue
    .line 217
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    .line 218
    rem-int/lit8 v0, p0, 0xa

    .line 220
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static getFormattedNumber(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 128
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "number"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    const-string v1, "number"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 135
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 138
    :cond_0
    if-eqz v0, :cond_1

    .line 139
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_1
    return-object v3
.end method

.method public static queryCarrierCodeFromDb(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 95
    const/4 v6, -0x1

    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    :goto_0
    return v6

    .line 101
    :cond_0
    invoke-static {p1, p0}, Lcom/android/server/telecom/multisim/CarrierMatchUtils;->getFormattedNumber(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 107
    :goto_1
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "data14"

    aput-object v0, v2, v3

    .line 108
    const-string v0, "mimetype = ? AND data1 = ?"

    .line 109
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "vnd.android.cursor.item/phone_v2"

    aput-object v0, v4, v3

    aput-object p1, v4, v5

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "mimetype = ? AND data1 = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_3

    .line 113
    const-string v0, "data14"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move v0, v6

    .line 114
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 116
    if-lez v0, :cond_1

    .line 120
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_2
    move v6, v0

    .line 123
    goto :goto_0

    :cond_3
    move v0, v6

    goto :goto_2

    :cond_4
    move-object p1, v0

    goto :goto_1
.end method

.method public static sendCarrierMatchBroadcastToReceiver(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 225
    if-eqz p1, :cond_0

    .line 226
    const-string v2, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 227
    const-string v2, "simSlot"

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    const-string v2, "is_incoming_call"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 229
    const-string v1, "extra_carrier_match_custom_intent"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 230
    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 231
    const-class v1, Lcom/android/server/telecom/CallIntentProcessor;

    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 232
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 235
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static setNewSimCarrierForSmartCSP(I)V
    .locals 0

    .prologue
    .line 240
    sput p0, Lcom/android/server/telecom/multisim/CarrierMatchUtils;->mNewSimCarrierForSmartCSP:I

    .line 241
    return-void
.end method

.method public static setOldSimCarrierForSmartCSP(I)V
    .locals 0

    .prologue
    .line 244
    sput p0, Lcom/android/server/telecom/multisim/CarrierMatchUtils;->mOldSimCarrierForSmartCSP:I

    .line 245
    return-void
.end method
