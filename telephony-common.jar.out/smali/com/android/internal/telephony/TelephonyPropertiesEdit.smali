.class public Lcom/android/internal/telephony/TelephonyPropertiesEdit;
.super Ljava/lang/Object;
.source "TelephonyPropertiesEdit.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "TelephonyPropertiesEdit"


# instance fields
.field private mContext:Landroid/content/Context;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v1, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;-><init>(Lcom/android/internal/telephony/TelephonyPropertiesEdit;)V

    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 122
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 123
    iput-object p2, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    .line 124
    const-string v1, "TelephonyPropertiesEdit"

    const-string v2, "Creating TelephonyPropertiesEdit"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v1, "NULL"

    const-string v2, "gsm.sim.currentcardstatus"

    const-string v3, "NULL"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->resetProperties()V

    .line 132
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 133
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "NEW_CARD_CHECK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v1, "ACTION_REGCARD_ICON_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v1, "ACTION_REGCARD_CARDNAME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v1, "ACTION_NETWORK_ACTIVATE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v1, "ACTION_PLMN_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "com.samsung.intent.action.DATA_SERVICE_NETWORK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v1, "com.samsung.intent.action.Slot1OnCompleted"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v1, "com.samsung.intent.action.Slot2OnCompleted"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v1, "com.samsung.intent.action.Slot1OffCompleted"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v1, "com.samsung.intent.action.Slot2OffCompleted"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v1, "com.samsung.settings.SIMCARD_MGT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    return-void

    .line 129
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    const-string v1, "TelephonyPropertiesEdit"

    const-string v2, "skip resetProperties"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/TelephonyPropertiesEdit;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/TelephonyPropertiesEdit;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyNewCard(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/TelephonyPropertiesEdit;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/TelephonyPropertiesEdit;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyIconName(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/TelephonyPropertiesEdit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/TelephonyPropertiesEdit;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/TelephonyPropertiesEdit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/TelephonyPropertiesEdit;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyCardname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/TelephonyPropertiesEdit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/TelephonyPropertiesEdit;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/TelephonyPropertiesEdit;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/TelephonyPropertiesEdit;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyState(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/TelephonyPropertiesEdit;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/TelephonyPropertiesEdit;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyPLMN(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/TelephonyPropertiesEdit;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/TelephonyPropertiesEdit;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->handleCardOnOffCompleted(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .param p3, "defValue"    # Ljava/lang/String;

    .prologue
    .line 501
    invoke-static {p1, p2, p3}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleCardOnOffCompleted(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .param p1, "cardStatus"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 296
    const-string v2, "com.samsung.intent.action.Slot1OffCompleted"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 297
    const-string v2, "gsm.sim.active"

    const-string v3, "0"

    invoke-direct {p0, v2, v5, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 298
    const-string v2, "gsm.sim.currentcardstatus"

    const-string v3, "2"

    invoke-direct {p0, v2, v5, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone1_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 301
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 302
    const-string v2, "CTC"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 304
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const-string v2, "property_item"

    const-string v3, "Slot1OffCompleted"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const-string v2, "simSlot"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    invoke-virtual {p2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 365
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    const-string v2, "com.samsung.intent.action.Slot1OnCompleted"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 311
    const-string v2, "gsm.sim.active"

    const-string v3, "0"

    invoke-direct {p0, v2, v5, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 312
    const-string v2, "gsm.sim.currentcardstatus"

    const-string v3, "9"

    invoke-direct {p0, v2, v5, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 313
    .local v0, "cardstatus":I
    if-eq v0, v4, :cond_3

    .line 314
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v4, :cond_2

    const-string v2, "CTC"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 316
    :cond_2
    const-string v2, "gsm.sim.currentcardstatus"

    const-string v3, "3"

    invoke-direct {p0, v2, v5, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 319
    :cond_3
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone1_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 321
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 322
    const-string v2, "CTC"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 324
    .restart local v1    # "i":Landroid/content/Intent;
    const-string v2, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string v2, "property_item"

    const-string v3, "Slot1OnCompleted"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const-string v2, "simSlot"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 327
    invoke-virtual {p2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 330
    .end local v0    # "cardstatus":I
    .end local v1    # "i":Landroid/content/Intent;
    :cond_4
    const-string v2, "com.samsung.intent.action.Slot2OffCompleted"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 331
    const-string v2, "gsm.sim.active"

    const-string v3, "0"

    invoke-direct {p0, v2, v4, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 332
    const-string v2, "gsm.sim.currentcardstatus"

    const-string v3, "2"

    invoke-direct {p0, v2, v4, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 333
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone2_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 335
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 336
    const-string v2, "CTC"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 338
    .restart local v1    # "i":Landroid/content/Intent;
    const-string v2, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const-string v2, "property_item"

    const-string v3, "Slot2OffCompleted"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string v2, "simSlot"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    invoke-virtual {p2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 344
    .end local v1    # "i":Landroid/content/Intent;
    :cond_5
    const-string v2, "com.samsung.intent.action.Slot2OnCompleted"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    const-string v2, "gsm.sim.active"

    const-string v3, "0"

    invoke-direct {p0, v2, v4, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 346
    const-string v2, "gsm.sim.currentcardstatus"

    const-string v3, "9"

    invoke-direct {p0, v2, v4, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 347
    .restart local v0    # "cardstatus":I
    if-eq v0, v4, :cond_7

    .line 348
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v4, :cond_6

    const-string v2, "CTC"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 350
    :cond_6
    const-string v2, "gsm.sim.currentcardstatus"

    const-string v3, "3"

    invoke-direct {p0, v2, v4, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 353
    :cond_7
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone2_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 355
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 356
    const-string v2, "CTC"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 358
    .restart local v1    # "i":Landroid/content/Intent;
    const-string v2, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    const-string v2, "property_item"

    const-string v3, "Slot2OnCompleted"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    const-string v2, "simSlot"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 361
    invoke-virtual {p2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private setPropertyActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "cdmaAct"    # Ljava/lang/String;
    .param p2, "gsm01Act"    # Ljava/lang/String;
    .param p3, "gsm02Act"    # Ljava/lang/String;

    .prologue
    .line 282
    const-string v3, "TelephonyPropertiesEdit"

    const-string v4, "onReceive ACTION_NETWORK_ACTIVATE_STATE"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string v3, "TelephonyPropertiesEdit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-string v3, "1"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "true"

    .line 286
    .local v0, "cdmAct":Ljava/lang/String;
    :goto_0
    const-string v3, "1"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "true"

    .line 287
    .local v1, "gs1Act":Ljava/lang/String;
    :goto_1
    const-string v3, "1"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "true"

    .line 289
    .local v2, "gs2Act":Ljava/lang/String;
    :goto_2
    const-string v3, "TelephonyPropertiesEdit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-string v3, "gsm.sim.activity"

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v0}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 291
    const-string v3, "gsm.sim.activity"

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 292
    const-string v3, "gsm.sim.availability"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void

    .line 285
    .end local v0    # "cdmAct":Ljava/lang/String;
    .end local v1    # "gs1Act":Ljava/lang/String;
    .end local v2    # "gs2Act":Ljava/lang/String;
    :cond_0
    const-string v0, "false"

    goto :goto_0

    .line 286
    .restart local v0    # "cdmAct":Ljava/lang/String;
    :cond_1
    const-string v1, "false"

    goto :goto_1

    .line 287
    .restart local v1    # "gs1Act":Ljava/lang/String;
    :cond_2
    const-string v2, "false"

    goto :goto_2
.end method

.method private setPropertyCardname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "cdmaName"    # Ljava/lang/String;
    .param p2, "gsm01Name"    # Ljava/lang/String;
    .param p3, "gsm02Name"    # Ljava/lang/String;

    .prologue
    .line 268
    const-string v0, "TelephonyPropertiesEdit"

    const-string v1, "onReceive ACTION_REGCARD_CARDNAME_CHANGED"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string v0, "gsm.sim.cardname"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 270
    const-string v0, "gsm.sim.cardname"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 271
    const-string v0, "gsm.sim.cardname.dual"

    invoke-static {v0, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method private setPropertyIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "cdmaIcon"    # Ljava/lang/String;
    .param p2, "gsm01Icon"    # Ljava/lang/String;
    .param p3, "gsm02Icon"    # Ljava/lang/String;

    .prologue
    .line 275
    const-string v0, "TelephonyPropertiesEdit"

    const-string v1, "onReceive ACTION_REGCARD_ICON_CHANGED"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v0, "gsm.sim.icon"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 277
    const-string v0, "gsm.sim.icon"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 278
    const-string v0, "gsm.sim.icon.dual"

    invoke-static {v0, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method private setPropertyIconName(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "simId"    # I
    .param p2, "simIconIndex"    # Ljava/lang/String;
    .param p3, "simName"    # Ljava/lang/String;

    .prologue
    .line 243
    const-string v0, "TelephonyPropertiesEdit"

    const-string v1, "setPropertyIconName"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string v0, "gsm.sim.icon"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 245
    const-string v0, "gsm.sim.cardname"

    invoke-direct {p0, v0, p1, p3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 246
    if-nez p1, :cond_2

    .line 247
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_icon_1"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 251
    :cond_0
    if-eqz p3, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_name_1"

    invoke-static {v0, v1, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 265
    :cond_1
    :goto_0
    return-void

    .line 256
    :cond_2
    if-eqz p2, :cond_3

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 257
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_icon_2"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 260
    :cond_3
    if-eqz p3, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_name_2"

    invoke-static {v0, v1, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private setPropertyNewCard(I)V
    .locals 5
    .param p1, "slot"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 231
    const-string v0, "TelephonyPropertiesEdit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive CDMAPHONE NEW_CARD_CHECK + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    if-ne p1, v3, :cond_1

    .line 233
    const-string v0, "gsm.sim.newCheck"

    const-string v1, "true"

    invoke-direct {p0, v0, v4, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 235
    const-string v0, "gsm.sim.newCheck"

    const-string v1, "true"

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 237
    const-string v0, "gsm.sim.newCheck"

    const-string v1, "true"

    invoke-direct {p0, v0, v4, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 238
    const-string v0, "gsm.sim.newCheck"

    const-string v1, "true"

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private setPropertyPLMN(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "sSwitchStateC"    # Ljava/lang/String;
    .param p2, "sSwitchStateG"    # Ljava/lang/String;
    .param p3, "bSwitchImgViewC"    # Z
    .param p4, "bSwitchImgViewG"    # Z

    .prologue
    .line 215
    const-string v0, "TelephonyPropertiesEdit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cdma plmnstring + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", plmnstate + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v0, "TelephonyPropertiesEdit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gsm plmnstring + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", plmnstate + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    if-eqz p3, :cond_0

    .line 219
    const-string v0, "gsm.plmnstring"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v0, "gsm.plmnstate"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :goto_0
    return-void

    .line 221
    :cond_0
    if-eqz p4, :cond_1

    .line 222
    const-string v0, "gsm.plmnstring"

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v0, "gsm.plmnstate"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_1
    const-string v0, "gsm.plmnstring"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v0, "gsm.plmnstate"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setPropertyState(I)V
    .locals 12
    .param p1, "slot"    # I

    .prologue
    .line 368
    const-string v7, "TelephonyPropertiesEdit"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive setPropertyState slot : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const-string v7, "gsm.sim.state"

    const-string v8, "ABSENT"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 370
    .local v5, "mStateSlot":Ljava/lang/String;
    const-string v7, "ril.cardnoti"

    invoke-static {v7, p1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 371
    .local v1, "cardnoti":I
    const-string v7, "gsm.sim.currentcardstatus"

    const-string v8, "0"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 373
    .local v2, "cardstatus":I
    const-string v7, "TelephonyPropertiesEdit"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mStateSlot : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string v7, "TelephonyPropertiesEdit"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cardnoti : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const-string v7, "TelephonyPropertiesEdit"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cardstatus : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    if-nez v1, :cond_1

    .line 378
    const-string v7, "TelephonyPropertiesEdit"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cardnoti 0, skip setPropertyState slot : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    const-string v7, "ABSENT"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 383
    const-string v7, "gsm.sim.availability"

    const-string v8, "false"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 384
    const-string v7, "gsm.sim.pplock"

    const-string v8, ""

    invoke-direct {p0, v7, p1, v8}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 385
    const-string v7, "gsm.sim.currentcardstatus"

    const-string v8, "0"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 386
    const-string v7, "gsm.sim.cardnoti"

    const-string v8, "1"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 388
    :cond_2
    const-string v7, "UNKNOWN"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "NOT_READY"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 389
    :cond_3
    const-string v7, "ril.ICC_TYPE"

    const-string v8, "0"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 390
    .local v4, "icctype":Ljava/lang/String;
    if-eqz v4, :cond_4

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 391
    :cond_4
    const-string v4, "0"

    .line 393
    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 394
    .local v6, "type":I
    const-string v7, "TelephonyPropertiesEdit"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ril.ICC_TYPE :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string v7, "TelephonyPropertiesEdit"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "switching.slot :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "switching.slot"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const-string v7, "TelephonyPropertiesEdit"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ril.CGswitch :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ril.CGSwitch"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    if-nez p1, :cond_a

    .line 398
    const/4 v7, 0x3

    if-eq v6, v7, :cond_6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_7

    .line 399
    :cond_6
    const-string v7, "gsm.sim.availability"

    const-string v8, "true"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 402
    :cond_7
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "switching.slot"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_9

    .line 403
    if-eqz v6, :cond_8

    .line 404
    const-string v7, "gsm.sim.state"

    const-string v8, "ABSENT"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 406
    :cond_8
    const-string v7, "gsm.sim.availability"

    const-string v8, "false"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 407
    const-string v7, "gsm.sim.pplock"

    const-string v8, ""

    invoke-direct {p0, v7, p1, v8}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 408
    const-string v7, "gsm.sim.currentcardstatus"

    const-string v8, "0"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 411
    :cond_9
    const-string v7, "gsm.sim.availability"

    const-string v8, "true"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 417
    :cond_a
    const/4 v7, 0x1

    if-ne v6, v7, :cond_b

    .line 418
    const-string v7, "gsm.sim.availability"

    const-string v8, "true"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 420
    :cond_b
    const/4 v7, 0x3

    if-eq v6, v7, :cond_c

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    .line 421
    :cond_c
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "switching.slot"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_e

    .line 422
    const-string v7, "gsm.sim.availability"

    const-string v8, "false"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 423
    if-eqz v6, :cond_d

    const-string v7, "gsm.sim.state"

    const-string v8, "ABSENT"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 424
    :cond_d
    const-string v7, "gsm.sim.pplock"

    const-string v8, ""

    invoke-direct {p0, v7, p1, v8}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 425
    const-string v7, "gsm.sim.currentcardstatus"

    const-string v8, "0"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 427
    :cond_e
    const-string v7, "gsm.sim.availability"

    const-string v8, "true"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 433
    .end local v4    # "icctype":Ljava/lang/String;
    .end local v6    # "type":I
    :cond_f
    const-string v7, "READY"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 434
    const-string v7, "gsm.sim.availability"

    const-string v8, "true"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 435
    const-string v7, "gsm.sim.pplock"

    const-string v8, "unlock"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 436
    const/4 v7, 0x2

    if-eq v2, v7, :cond_10

    .line 437
    const-string v7, "gsm.sim.currentcardstatus"

    const-string v8, "3"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 457
    :cond_10
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_11

    .line 458
    const-string v7, "CTC"

    const-string v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 459
    const-string v7, "gsm.sim.active"

    const-string v8, "0"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 460
    .local v0, "cardact":I
    const/4 v7, 0x2

    if-ne v0, v7, :cond_11

    .line 461
    const-string v7, "gsm.sim.active"

    const-string v8, "0"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 462
    const/4 v7, 0x1

    if-ne p1, v7, :cond_12

    .line 463
    const-string v7, "gsm.sim.currentcardstatus"

    const-string v8, "3"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 464
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "phone2_on"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 465
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 466
    .local v3, "i":Landroid/content/Intent;
    const-string v7, "com.samsung.intent.action.Slot2OnCompleted"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 475
    :goto_1
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "i":Landroid/content/Intent;
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 476
    .restart local v3    # "i":Landroid/content/Intent;
    const-string v7, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    const-string v7, "property_item"

    const-string v8, "currentcardstatuson"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    const-string v7, "simSlot"

    invoke-virtual {v3, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 479
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 484
    .end local v0    # "cardact":I
    .end local v3    # "i":Landroid/content/Intent;
    :cond_11
    const-string v7, "gsm.sim.cardnoti"

    const-string v8, "2"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 469
    .restart local v0    # "cardact":I
    :cond_12
    const-string v7, "gsm.sim.currentcardstatus"

    const-string v8, "3"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 470
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "phone1_on"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 471
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 472
    .restart local v3    # "i":Landroid/content/Intent;
    const-string v7, "com.samsung.intent.action.Slot1OnCompleted"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 487
    .end local v0    # "cardact":I
    .end local v3    # "i":Landroid/content/Intent;
    :cond_13
    const-string v7, "gsm.sim.availability"

    const-string v8, "true"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 488
    const-string v7, "gsm.sim.pplock"

    invoke-direct {p0, v7, p1, v5}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 489
    const-string v7, "gsm.sim.currentcardstatus"

    const-string v8, "1"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 490
    const-string v7, "gsm.sim.cardnoti"

    const-string v8, "2"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 496
    invoke-static {p1, p2, p3}, Lcom/samsung/android/telephony/MultiSimManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 497
    return-void
.end method


# virtual methods
.method resetProperties()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 151
    const-string v0, "TelephonyPropertiesEdit"

    const-string v1, "resetProperties"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v0, "gsm.sim.newCheck"

    const-string v1, "false"

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 154
    const-string v0, "gsm.sim.newCheck"

    const-string v1, "false"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 155
    const-string v0, "gsm.sim.availability"

    const-string v1, "false"

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 156
    const-string v0, "gsm.sim.availability"

    const-string v1, "false"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 157
    const-string v0, "gsm.sim.pplock"

    const-string v1, ""

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 158
    const-string v0, "gsm.sim.pplock"

    const-string v1, ""

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 160
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v2, :cond_2

    const-string v0, "CTC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    const-string v0, "gsm.sim.cardname"

    const-string v1, "Slot 1"

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 163
    const-string v0, "gsm.sim.cardname"

    const-string v1, "Slot 2"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 164
    const-string v0, "gsm.sim.cardname.dual"

    const-string v1, "Slot 1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "gsm.sim.cardnoti"

    const-string v1, "0"

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 167
    const-string v0, "gsm.sim.cardnoti"

    const-string v1, "0"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 169
    const-string v0, "gsm.sim.state"

    const-string v1, "UNKNOWN"

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 170
    const-string v0, "gsm.sim.state"

    const-string v1, "UNKNOWN"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 172
    const-string v0, "gsm.sim.selectnetwork"

    const-string v1, "GSM"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :goto_0
    const-string v0, "gsm.sim.slotswitching"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v2, :cond_3

    .line 185
    const-string v0, "CTC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    :cond_0
    const-string v0, "gsm.sim.icon"

    const-string v1, "0"

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 193
    const-string v0, "gsm.sim.icon"

    const-string v1, "1"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 199
    :goto_2
    const-string v0, "gsm.sim.icon.dual"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v0, "gsm.sim.activity"

    const-string v1, "false"

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 202
    const-string v0, "gsm.sim.activity"

    const-string v1, "false"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 203
    const-string v0, "gsm.sim.activity.dual"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v0, "gsm.sim.currentcardstatus"

    const-string v1, "9"

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 206
    const-string v0, "gsm.sim.currentcardstatus"

    const-string v1, "9"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 208
    const-string v0, "gsm.sim.active"

    const-string v1, "0"

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 209
    const-string v0, "gsm.sim.active"

    const-string v1, "0"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 210
    return-void

    .line 174
    :cond_1
    const-string v0, "gsm.sim.selectnetwork"

    const-string v1, "CDMA"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_2
    const-string v0, "gsm.sim.cardname"

    const-string v1, ""

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 180
    const-string v0, "gsm.sim.cardname"

    const-string v1, ""

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 181
    const-string v0, "gsm.sim.cardname.dual"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 196
    :cond_3
    const-string v0, "gsm.sim.icon"

    const-string v1, "0"

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 197
    const-string v0, "gsm.sim.icon"

    const-string v1, "1"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2
.end method
