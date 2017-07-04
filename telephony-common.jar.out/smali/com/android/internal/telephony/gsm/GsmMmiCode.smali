.class public final Lcom/android/internal/telephony/gsm/GsmMmiCode;
.super Landroid/os/Handler;
.source "GsmMmiCode.java"

# interfaces
.implements Lcom/android/internal/telephony/MmiCode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmMmiCode$1;
    }
.end annotation


# static fields
.field static final ACTION_ACTIVATE:Ljava/lang/String; = "*"

.field static final ACTION_DEACTIVATE:Ljava/lang/String; = "#"

.field static final ACTION_ERASURE:Ljava/lang/String; = "##"

.field static final ACTION_INTERROGATE:Ljava/lang/String; = "*#"

.field static final ACTION_REGISTER:Ljava/lang/String; = "**"

.field static final BearerSvcNotProvisoned:Ljava/lang/String; = "10"

.field static final CallBarred:Ljava/lang/String; = "14"

.field static final DataMissing:Ljava/lang/String; = "35"

.field static final END_OF_USSD_COMMAND:C = '#'

.field static final EVENT_GET_CALL_WAITING:I = 0x9

.field static final EVENT_GET_CLIR_COMPLETE:I = 0x2

.field static final EVENT_QUERY_CF_COMPLETE:I = 0x3

.field static final EVENT_QUERY_COMPLETE:I = 0x5

.field static final EVENT_SET_CALL_WAITING:I = 0x8

.field static final EVENT_SET_CFF_COMPLETE:I = 0x6

.field static final EVENT_SET_COMPLETE:I = 0x1

.field static final EVENT_USSD_CANCEL_COMPLETE:I = 0x7

.field static final EVENT_USSD_COMPLETE:I = 0x4

.field static final GLOBALDEV_CS:Ljava/lang/String; = "+19085594899"

.field static final IllegalSSOperation:Ljava/lang/String; = "16"

.field static final LOG_TAG:Ljava/lang/String; = "GsmMmiCode"

.field static final MATCH_GROUP_ACTION:I = 0x2

.field static final MATCH_GROUP_DIALING_NUMBER:I = 0xc

.field static final MATCH_GROUP_GLOBALDEV_DIALNUM:I = 0x5

.field static final MATCH_GROUP_GLOBALDEV_DIALPREFIX:I = 0x4

.field static final MATCH_GROUP_POUND_STRING:I = 0x1

.field static final MATCH_GROUP_PWD_CONFIRM:I = 0xb

.field static final MATCH_GROUP_SERVICE_CODE:I = 0x3

.field static final MATCH_GROUP_SIA:I = 0x5

.field static final MATCH_GROUP_SIB:I = 0x7

.field static final MATCH_GROUP_SIC:I = 0x9

.field static final MAX_LENGTH_SHORT_CODE:I = 0x2

.field static final MCC_CROATIA:Ljava/lang/String; = "219"

.field static final MCC_SERBIA:Ljava/lang/String; = "220"

.field static final NegativePWCheck:Ljava/lang/String; = "38"

.field static final NumOfPWAttempsViolation:Ljava/lang/String; = "43"

.field static final PwRegFailure:Ljava/lang/String; = "37"

.field static final SC_BAIC:Ljava/lang/String; = "35"

.field static final SC_BAICr:Ljava/lang/String; = "351"

.field static final SC_BAOC:Ljava/lang/String; = "33"

.field static final SC_BAOIC:Ljava/lang/String; = "331"

.field static final SC_BAOICxH:Ljava/lang/String; = "332"

.field static final SC_BA_ALL:Ljava/lang/String; = "330"

.field static final SC_BA_MO:Ljava/lang/String; = "333"

.field static final SC_BA_MT:Ljava/lang/String; = "353"

.field static final SC_CFB:Ljava/lang/String; = "67"

.field static final SC_CFNR:Ljava/lang/String; = "62"

.field static final SC_CFNRy:Ljava/lang/String; = "61"

.field static final SC_CFU:Ljava/lang/String; = "21"

.field static final SC_CF_All:Ljava/lang/String; = "002"

.field static final SC_CF_All_Conditional:Ljava/lang/String; = "004"

.field static final SC_CLIP:Ljava/lang/String; = "30"

.field static final SC_CLIR:Ljava/lang/String; = "31"

.field static final SC_CNAP:Ljava/lang/String; = "300"

.field static final SC_COLP:Ljava/lang/String; = "76"

.field static final SC_COLR:Ljava/lang/String; = "77"

.field static final SC_GLOBALDEV_CLIR_INVK:Ljava/lang/String; = "67"

.field static final SC_GLOBALDEV_CLIR_SUPP:Ljava/lang/String; = "82"

.field static final SC_GLOBALDEV_CS:Ljava/lang/String; = "611"

.field static final SC_GLOBALDEV_VM:Ljava/lang/String; = "86"

.field static final SC_PIN:Ljava/lang/String; = "04"

.field static final SC_PIN2:Ljava/lang/String; = "042"

.field static final SC_PUK:Ljava/lang/String; = "05"

.field static final SC_PUK2:Ljava/lang/String; = "052"

.field static final SC_PWD:Ljava/lang/String; = "03"

.field static final SC_WAIT:Ljava/lang/String; = "43"

.field static final SSErrStatus:Ljava/lang/String; = "17"

.field static final SSIncompatibility:Ljava/lang/String; = "20"

.field static final SSNotAvailable:Ljava/lang/String; = "18"

.field static final SSSubscriptionViolation:Ljava/lang/String; = "19"

.field static final SysFailure:Ljava/lang/String; = "34"

.field static final TelesrviceNotProvisoned:Ljava/lang/String; = "11"

.field static final UnexpectedDataValue:Ljava/lang/String; = "36"

.field static final UnknownSubscriber:Ljava/lang/String; = "1"

.field private static final VOICECALL_TYPE_CS:I = 0x1

.field private static final VOICECALL_TYPE_KEY:Ljava/lang/String; = "voicecall_type"

.field private static final VOICECALL_TYPE_VoLTE:I = 0x0

.field static final absentSubscriber:Ljava/lang/String; = "27"

.field static final deflectionToServedSubscriber:Ljava/lang/String; = "123"

.field static final facilityNotSupported:Ljava/lang/String; = "21"

.field static final illegalSubscriber:Ljava/lang/String; = "9"

.field static final invalidDeflectedToNumber:Ljava/lang/String; = "125"

.field static final longTermDenial:Ljava/lang/String; = "30"

.field static final maxNumberOfMPTY_ParticipantsExceeded:Ljava/lang/String; = "126"

.field static final positionMethodFailure:Ljava/lang/String; = "54"

.field static final rejectedByNetwork:Ljava/lang/String; = "122"

.field static final rejectedByUser:Ljava/lang/String; = "121"

.field static final resourcesNotAvailable:Ljava/lang/String; = "127"

.field static sPatternSuppService:Ljava/util/regex/Pattern; = null

.field static sPatternSuppServiceGlobalDev:Ljava/util/regex/Pattern; = null

.field private static sTwoDigitNumberPattern:[Ljava/lang/String; = null

.field static final shortTermDenial:Ljava/lang/String; = "29"

.field static final specialServiceCode:Ljava/lang/String; = "124"

.field static final unknownAlphabet:Ljava/lang/String; = "71"

.field static final ussd_Busy:Ljava/lang/String; = "72"


# instance fields
.field private dialString:Ljava/lang/String;

.field lastErr:Lcom/android/internal/telephony/CommandException$Error;

.field mAction:Ljava/lang/String;

.field private mConfigNetworkTypeCapability:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDialingNumber:Ljava/lang/String;

.field mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mIsCallFwdReg:Z

.field private mIsPendingUSSD:Z

.field private mIsSsInfo:Z

.field private mIsUssdRequest:Z

.field mMessage:Ljava/lang/CharSequence;

.field mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field mPoundString:Ljava/lang/String;

.field mPwd:Ljava/lang/String;

.field private mQueryCfClass:I

.field mSc:Ljava/lang/String;

.field mSia:Ljava/lang/String;

.field mSib:Ljava/lang/String;

.field mSic:Ljava/lang/String;

.field mState:Lcom/android/internal/telephony/MmiCode$State;

.field mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private ussdCode:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 244
    const-string v0, "((\\*|#|\\*#|\\*\\*|##)(\\d{2,3})(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*))?)?)?)?#)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    .line 258
    const-string v0, "((\\*)(\\d{2})(\\+{0,1})(\\d{0,}))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sPatternSuppServiceGlobalDev:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;
    .param p2, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .prologue
    const/4 v1, 0x0

    .line 760
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 219
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsSsInfo:Z

    .line 224
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->INVALID_RESPONSE:Lcom/android/internal/telephony/CommandException$Error;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->lastErr:Lcom/android/internal/telephony/CommandException$Error;

    .line 228
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->ussdCode:Ljava/lang/CharSequence;

    .line 229
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialString:Ljava/lang/String;

    .line 236
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mConfigNetworkTypeCapability:Ljava/lang/String;

    .line 761
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 762
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    .line 763
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 764
    if-eqz p2, :cond_0

    .line 765
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 767
    :cond_0
    return-void
.end method

.method private ErrcodeToString(Ljava/lang/String;)I
    .locals 3
    .param p1, "errorcode"    # Ljava/lang/String;

    .prologue
    .line 2701
    const-string v0, "GsmMmiCode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ErrcodeToString errorcode - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2703
    const-string v0, "37"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2705
    const v0, 0x104093c

    .line 2825
    :goto_0
    return v0

    .line 2707
    :cond_0
    const-string v0, "38"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2709
    const v0, 0x104093d

    goto :goto_0

    .line 2711
    :cond_1
    const-string v0, "43"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2713
    const v0, 0x104093e

    goto :goto_0

    .line 2715
    :cond_2
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2717
    const v0, 0x104093f

    goto :goto_0

    .line 2719
    :cond_3
    const-string v0, "10"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2721
    const v0, 0x1040940

    goto :goto_0

    .line 2723
    :cond_4
    const-string v0, "11"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2725
    const v0, 0x1040941

    goto :goto_0

    .line 2727
    :cond_5
    const-string v0, "14"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2729
    const v0, 0x1040942

    goto :goto_0

    .line 2731
    :cond_6
    const-string v0, "16"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2733
    const v0, 0x1040943

    goto :goto_0

    .line 2735
    :cond_7
    const-string v0, "17"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2737
    const v0, 0x1040944

    goto :goto_0

    .line 2739
    :cond_8
    const-string v0, "18"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2741
    const v0, 0x1040945

    goto :goto_0

    .line 2743
    :cond_9
    const-string v0, "19"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2745
    const v0, 0x1040946

    goto :goto_0

    .line 2747
    :cond_a
    const-string v0, "20"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2749
    const v0, 0x1040947

    goto/16 :goto_0

    .line 2751
    :cond_b
    const-string v0, "34"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2753
    const v0, 0x1040948

    goto/16 :goto_0

    .line 2755
    :cond_c
    const-string v0, "35"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2757
    const v0, 0x1040949

    goto/16 :goto_0

    .line 2759
    :cond_d
    const-string v0, "36"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2761
    const v0, 0x104094a

    goto/16 :goto_0

    .line 2763
    :cond_e
    const-string v0, "9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2765
    const v0, 0x104094b

    goto/16 :goto_0

    .line 2767
    :cond_f
    const-string v0, "21"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2769
    const v0, 0x104094c

    goto/16 :goto_0

    .line 2771
    :cond_10
    const-string v0, "27"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2773
    const v0, 0x104094d

    goto/16 :goto_0

    .line 2775
    :cond_11
    const-string v0, "29"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2777
    const v0, 0x104094e

    goto/16 :goto_0

    .line 2779
    :cond_12
    const-string v0, "30"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2781
    const v0, 0x104094f

    goto/16 :goto_0

    .line 2783
    :cond_13
    const-string v0, "54"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2785
    const v0, 0x1040950

    goto/16 :goto_0

    .line 2787
    :cond_14
    const-string v0, "71"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2789
    const v0, 0x1040951

    goto/16 :goto_0

    .line 2791
    :cond_15
    const-string v0, "72"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2793
    const v0, 0x1040952

    goto/16 :goto_0

    .line 2795
    :cond_16
    const-string v0, "121"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2797
    const v0, 0x1040953

    goto/16 :goto_0

    .line 2799
    :cond_17
    const-string v0, "122"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2801
    const v0, 0x1040954

    goto/16 :goto_0

    .line 2803
    :cond_18
    const-string v0, "123"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2805
    const v0, 0x1040955

    goto/16 :goto_0

    .line 2807
    :cond_19
    const-string v0, "124"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2809
    const v0, 0x1040956

    goto/16 :goto_0

    .line 2811
    :cond_1a
    const-string v0, "125"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2813
    const v0, 0x1040957

    goto/16 :goto_0

    .line 2815
    :cond_1b
    const-string v0, "126"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2817
    const v0, 0x1040958

    goto/16 :goto_0

    .line 2819
    :cond_1c
    const-string v0, "127"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2821
    const v0, 0x1040959

    goto/16 :goto_0

    .line 2825
    :cond_1d
    const v0, 0x104095a

    goto/16 :goto_0
.end method

.method private barringTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "cbType"    # Ljava/lang/String;

    .prologue
    const v4, 0x104092f

    const v3, 0x104092c

    .line 2893
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2895
    .local v0, "salescode":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v2, "33"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2896
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2930
    :goto_0
    return-object v1

    .line 2897
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v2, "331"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2898
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x104092d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 2899
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v2, "332"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2900
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x104092e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 2901
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v2, "35"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2902
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 2903
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v2, "351"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2904
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x1040930

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 2905
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v2, "330"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2906
    if-eqz v0, :cond_6

    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "BRI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "TGY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2909
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x10400a4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto/16 :goto_0

    .line 2911
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x1040931

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto/16 :goto_0

    .line 2913
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v2, "333"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2914
    if-eqz v0, :cond_9

    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "BRI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "TGY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2917
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto/16 :goto_0

    .line 2919
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x1040932

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto/16 :goto_0

    .line 2921
    :cond_a
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v2, "353"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2922
    if-eqz v0, :cond_c

    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "BRI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "TGY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2925
    :cond_b
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto/16 :goto_0

    .line 2927
    :cond_c
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x1040933

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto/16 :goto_0

    .line 2930
    :cond_d
    const-string v1, " "

    goto/16 :goto_0
.end method

.method private createQueryCallBarringResultMessage(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "serviceClass"    # I

    .prologue
    .line 2483
    const/4 v1, 0x0

    .line 2485
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_CallUssdException"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2487
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x104008d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2497
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    :goto_0
    const/4 v0, 0x1

    .line 2498
    .local v0, "classMask":I
    :goto_1
    const/16 v2, 0x80

    if-gt v0, v2, :cond_2

    .line 2501
    and-int v2, v0, p1

    if-eqz v2, :cond_0

    .line 2502
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2503
    and-int v2, v0, p1

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2499
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2489
    .end local v0    # "classMask":I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->barringTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2490
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2491
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x104008e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2506
    .restart local v0    # "classMask":I
    :cond_2
    return-object v1
.end method

.method private createQueryCallWaitingResultMessage(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "serviceClass"    # I

    .prologue
    .line 2466
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x104008e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2469
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 2470
    .local v0, "classMask":I
    :goto_0
    const/16 v2, 0x80

    if-gt v0, v2, :cond_1

    .line 2473
    and-int v2, v0, p1

    if-eqz v2, :cond_0

    .line 2474
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2475
    and-int v2, v0, p1

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2471
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2478
    :cond_1
    return-object v1
.end method

.method private formatLtr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 2181
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 2182
    .local v0, "fmt":Landroid/text/BidiFormatter;
    if-nez p1, :cond_0

    .end local p1    # "str":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "str":Ljava/lang/String;
    :cond_0
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private forwardingTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "cfType"    # Ljava/lang/String;

    .prologue
    .line 2874
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2875
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104091a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2886
    :goto_0
    return-object v0

    .line 2876
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "21"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2877
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040917

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2878
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "67"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2879
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040904

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2880
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "62"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2881
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040919

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2882
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "61"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2883
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040918

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2884
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "004"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2885
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104091b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2886
    :cond_5
    const-string v0, " "

    goto :goto_0
.end method

.method private getActionStringFromReqType(Lcom/android/internal/telephony/gsm/SsData$RequestType;)Ljava/lang/String;
    .locals 2
    .param p1, "rType"    # Lcom/android/internal/telephony/gsm/SsData$RequestType;

    .prologue
    .line 573
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode$1;->$SwitchMap$com$android$internal$telephony$gsm$SsData$RequestType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SsData$RequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 586
    const-string v0, ""

    :goto_0
    return-object v0

    .line 575
    :pswitch_0
    const-string v0, "*"

    goto :goto_0

    .line 577
    :pswitch_1
    const-string v0, "#"

    goto :goto_0

    .line 579
    :pswitch_2
    const-string v0, "*#"

    goto :goto_0

    .line 581
    :pswitch_3
    const-string v0, "**"

    goto :goto_0

    .line 583
    :pswitch_4
    const-string v0, "##"

    goto :goto_0

    .line 573
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private getCfIconStatus()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 878
    const/4 v0, -0x1

    .line 879
    .local v0, "cfAction":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 880
    const/4 v0, 0x1

    .line 889
    :cond_0
    :goto_0
    const-string v2, "GsmMmiCode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCfIconStatus cfAction :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 893
    .local v1, "cfIconStatus":Z
    :cond_1
    :goto_1
    return v1

    .line 881
    .end local v1    # "cfIconStatus":Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 882
    const/4 v0, 0x0

    goto :goto_0

    .line 883
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isRegister()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 884
    const/4 v0, 0x3

    goto :goto_0

    .line 885
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isErasure()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 886
    const/4 v0, 0x4

    goto :goto_0

    .line 890
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getErrorCode(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 2668
    const-string v1, ""

    .line 2669
    .local v1, "errCode":Ljava/lang/CharSequence;
    const-string v2, "GsmMmiCode"

    const-string v3, "getErrorCode()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_0

    .line 2672
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 2673
    .local v0, "err":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmMmiCode$1;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2690
    const-string v1, "0"

    .line 2695
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_0
    :goto_0
    const-string v2, "GsmMmiCode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getErrorCode( return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    return-object v1

    .line 2675
    .restart local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :pswitch_0
    const-string v1, "17"

    .line 2676
    goto :goto_0

    .line 2678
    :pswitch_1
    const-string v1, "38"

    .line 2679
    goto :goto_0

    .line 2681
    :pswitch_2
    const-string v1, "13"

    .line 2682
    goto :goto_0

    .line 2684
    :pswitch_3
    const-string v1, "36"

    .line 2685
    goto :goto_0

    .line 2687
    :pswitch_4
    const-string v1, "10"

    .line 2688
    goto :goto_0

    .line 2673
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1642
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_6

    .line 1643
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 1644
    .local v0, "err":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_0

    .line 1645
    const-string v2, "GsmMmiCode"

    const-string v3, "FDN_CHECK_FAILURE"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x104008c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1683
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :goto_0
    return-object v2

    .line 1647
    .restart local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_1

    .line 1648
    const-string v2, "GsmMmiCode"

    const-string v3, "USSD_MODIFIED_TO_DIAL"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x1040598

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 1650
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_2

    .line 1651
    const-string v2, "GsmMmiCode"

    const-string v3, "USSD_MODIFIED_TO_SS"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x1040599

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 1653
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_3

    .line 1654
    const-string v2, "GsmMmiCode"

    const-string v3, "USSD_MODIFIED_TO_USSD"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x104059a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 1656
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_4

    .line 1657
    const-string v2, "GsmMmiCode"

    const-string v3, "SS_MODIFIED_TO_DIAL"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x104059b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 1659
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_5

    .line 1660
    const-string v2, "GsmMmiCode"

    const-string v3, "SS_MODIFIED_TO_USSD"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x104059c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 1662
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_6

    .line 1663
    const-string v2, "GsmMmiCode"

    const-string v3, "SS_MODIFIED_TO_SS"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x104059d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 1668
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_CallUssdException"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1670
    const-string v2, "ril.ss.errorcode"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1671
    .local v1, "errorcode":Ljava/lang/String;
    const-string v2, "USSD getErrorMessage "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR CODE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    const-string v2, "ril.ss.errorcode"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1675
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->ErrcodeToString(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto/16 :goto_0

    .line 1677
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x104093a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto/16 :goto_0

    .line 1679
    .end local v1    # "errorcode":Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ReplaceUssdFail"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1681
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x1040915

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto/16 :goto_0

    .line 1683
    :cond_9
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x104008b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto/16 :goto_0
.end method

.method private getScString()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1689
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1690
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400a4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1718
    :goto_0
    return-object v0

    .line 1691
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1692
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_CallUssdException"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "004"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1695
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104093b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1696
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400a2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1697
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1698
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104009e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1699
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1700
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104009f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1701
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "300"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1702
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10407d7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1703
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1704
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400a5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 1705
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "43"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1706
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400a3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 1707
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPinPukCommand()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1709
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1710
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400a6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 1712
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040937

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 1718
    :cond_a
    const-string v0, ""

    goto/16 :goto_0
.end method

.method private getScStringFromScType(Lcom/android/internal/telephony/gsm/SsData$ServiceType;)Ljava/lang/String;
    .locals 2
    .param p1, "sType"    # Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .prologue
    .line 532
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode$1;->$SwitchMap$com$android$internal$telephony$gsm$SsData$ServiceType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 569
    const-string v0, ""

    :goto_0
    return-object v0

    .line 534
    :pswitch_0
    const-string v0, "21"

    goto :goto_0

    .line 536
    :pswitch_1
    const-string v0, "67"

    goto :goto_0

    .line 538
    :pswitch_2
    const-string v0, "61"

    goto :goto_0

    .line 540
    :pswitch_3
    const-string v0, "62"

    goto :goto_0

    .line 542
    :pswitch_4
    const-string v0, "002"

    goto :goto_0

    .line 544
    :pswitch_5
    const-string v0, "004"

    goto :goto_0

    .line 546
    :pswitch_6
    const-string v0, "30"

    goto :goto_0

    .line 548
    :pswitch_7
    const-string v0, "31"

    goto :goto_0

    .line 550
    :pswitch_8
    const-string v0, "43"

    goto :goto_0

    .line 552
    :pswitch_9
    const-string v0, "33"

    goto :goto_0

    .line 554
    :pswitch_a
    const-string v0, "331"

    goto :goto_0

    .line 556
    :pswitch_b
    const-string v0, "332"

    goto :goto_0

    .line 558
    :pswitch_c
    const-string v0, "35"

    goto :goto_0

    .line 560
    :pswitch_d
    const-string v0, "351"

    goto :goto_0

    .line 562
    :pswitch_e
    const-string v0, "330"

    goto :goto_0

    .line 564
    :pswitch_f
    const-string v0, "333"

    goto :goto_0

    .line 566
    :pswitch_10
    const-string v0, "353"

    goto :goto_0

    .line 532
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private handlePasswordError(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 1413
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1415
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1416
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1417
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1418
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    .line 1419
    return-void
.end method

.method private isCfIconUpdateRequired()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 864
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v2

    .line 865
    .local v2, "serviceClass":I
    const/4 v1, 0x0

    .line 866
    .local v1, "isCfUnconditionalVoice":Z
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v6, "21"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v6, "002"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    and-int/lit8 v5, v2, 0x1

    if-nez v5, :cond_1

    if-nez v2, :cond_2

    :cond_1
    move v1, v3

    .line 869
    :goto_0
    const-string v5, "GsmMmiCode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCfUnconditionalVoice :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",isInterrogate() :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_3

    .line 873
    .end local v1    # "isCfUnconditionalVoice":Z
    .end local v2    # "serviceClass":I
    :goto_1
    return v3

    .restart local v1    # "isCfUnconditionalVoice":Z
    .restart local v2    # "serviceClass":I
    :cond_2
    move v1, v4

    .line 866
    goto :goto_0

    :cond_3
    move v3, v4

    .line 870
    goto :goto_1

    .line 871
    .end local v1    # "isCfUnconditionalVoice":Z
    .end local v2    # "serviceClass":I
    :catch_0
    move-exception v0

    .line 872
    .local v0, "exc":Ljava/lang/RuntimeException;
    const-string v3, "GsmMmiCode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RuntimeException :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 873
    goto :goto_1
.end method

.method private static isCroatiaShortCode(Ljava/lang/String;)Z
    .locals 6
    .param p0, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2968
    const-string v0, "000"

    .line 2969
    .local v0, "mcc":Ljava/lang/String;
    const-string v3, "gsm.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2971
    .local v1, "numeric":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_1

    .line 2972
    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2974
    const-string v3, "GsmMmiCode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCroatiaShortCode mcc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2980
    const-string v3, "219"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "92"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "93"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "94"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "95"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "96"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2983
    :cond_0
    const-string v2, "GsmMmiCode"

    const-string v3, "isCroatiaShortCode Returning true"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2984
    const/4 v2, 0x1

    .line 2987
    :goto_0
    return v2

    .line 2976
    :cond_1
    const-string v3, "GsmMmiCode"

    const-string v4, "isCroatiaShortCode Returning false"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2986
    :cond_2
    const-string v3, "GsmMmiCode"

    const-string v4, "isCroatiaShortCode Returning false"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isEmptyOrNull(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 609
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isKTMMICodeSupport(Ljava/lang/String;I)Z
    .locals 9
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "start_ptr"    # I

    .prologue
    const/16 v8, 0x23

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2597
    const/4 v2, 0x0

    .line 2598
    .local v2, "i":I
    const/4 v3, 0x0

    .line 2599
    .local v3, "sc_start_ptr":I
    const-string v1, ""

    .line 2600
    .local v1, "TempSC":Ljava/lang/String;
    const/16 v6, 0x28

    new-array v0, v6, [Ljava/lang/String;

    const-string v6, "75"

    aput-object v6, v0, v5

    const-string v6, "750"

    aput-object v6, v0, v4

    const/4 v6, 0x2

    const-string v7, "751"

    aput-object v7, v0, v6

    const/4 v6, 0x3

    const-string v7, "752"

    aput-object v7, v0, v6

    const/4 v6, 0x4

    const-string v7, "753"

    aput-object v7, v0, v6

    const/4 v6, 0x5

    const-string v7, "754"

    aput-object v7, v0, v6

    const/4 v6, 0x6

    const-string v7, "66"

    aput-object v7, v0, v6

    const/4 v6, 0x7

    const-string v7, "30"

    aput-object v7, v0, v6

    const/16 v6, 0x8

    const-string v7, "31"

    aput-object v7, v0, v6

    const/16 v6, 0x9

    const-string v7, "76"

    aput-object v7, v0, v6

    const/16 v6, 0xa

    const-string v7, "77"

    aput-object v7, v0, v6

    const/16 v6, 0xb

    const-string v7, "21"

    aput-object v7, v0, v6

    const/16 v6, 0xc

    const-string v7, "67"

    aput-object v7, v0, v6

    const/16 v6, 0xd

    const-string v7, "61"

    aput-object v7, v0, v6

    const/16 v6, 0xe

    const-string v7, "62"

    aput-object v7, v0, v6

    const/16 v6, 0xf

    const-string v7, "002"

    aput-object v7, v0, v6

    const/16 v6, 0x10

    const-string v7, "004"

    aput-object v7, v0, v6

    const/16 v6, 0x11

    const-string v7, "43"

    aput-object v7, v0, v6

    const/16 v6, 0x12

    const-string v7, "361"

    aput-object v7, v0, v6

    const/16 v6, 0x13

    const-string v7, "362"

    aput-object v7, v0, v6

    const/16 v6, 0x14

    const-string v7, "363"

    aput-object v7, v0, v6

    const/16 v6, 0x15

    const-string v7, "360"

    aput-object v7, v0, v6

    const/16 v6, 0x16

    const-string v7, "33"

    aput-object v7, v0, v6

    const/16 v6, 0x17

    const-string v7, "331"

    aput-object v7, v0, v6

    const/16 v6, 0x18

    const-string v7, "332"

    aput-object v7, v0, v6

    const/16 v6, 0x19

    const-string v7, "35"

    aput-object v7, v0, v6

    const/16 v6, 0x1a

    const-string v7, "351"

    aput-object v7, v0, v6

    const/16 v6, 0x1b

    const-string v7, "330"

    aput-object v7, v0, v6

    const/16 v6, 0x1c

    const-string v7, "333"

    aput-object v7, v0, v6

    const/16 v6, 0x1d

    const-string v7, "353"

    aput-object v7, v0, v6

    const/16 v6, 0x1e

    const-string v7, "96"

    aput-object v7, v0, v6

    const/16 v6, 0x1f

    const-string v7, "37"

    aput-object v7, v0, v6

    const/16 v6, 0x20

    const-string v7, "214"

    aput-object v7, v0, v6

    const/16 v6, 0x21

    const-string v7, "300"

    aput-object v7, v0, v6

    const/16 v6, 0x22

    const-string v7, "591"

    aput-object v7, v0, v6

    const-string v6, "592"

    aput-object v6, v0, v8

    const/16 v6, 0x24

    const-string v7, "593"

    aput-object v7, v0, v6

    const/16 v6, 0x25

    const-string v7, "594"

    aput-object v7, v0, v6

    const/16 v6, 0x26

    const-string v7, "88"

    aput-object v7, v0, v6

    const/16 v6, 0x27

    const-string v7, "03"

    aput-object v7, v0, v6

    .line 2634
    .local v0, "KTMMICode":[Ljava/lang/String;
    :goto_0
    add-int v6, p1, v3

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2a

    if-eq v6, v7, :cond_0

    add-int v6, p1, v3

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v8, :cond_0

    .line 2635
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int v7, p1, v3

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2636
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2639
    :cond_0
    const/4 v2, 0x0

    :goto_1
    array-length v6, v0

    if-ge v2, v6, :cond_2

    .line 2640
    aget-object v6, v0, v2

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2644
    :goto_2
    return v4

    .line 2639
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v4, v5

    .line 2644
    goto :goto_2
.end method

.method static isMMICodeSupport(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmMmiCode;)Z
    .locals 11
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "mmiCode"    # Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .prologue
    const/16 v10, 0x23

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2541
    const/4 v0, 0x0

    .line 2544
    .local v0, "isSupport":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v9, :cond_8

    const-string v4, "#"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "*"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_0
    const-string v4, "#"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2545
    const-string v1, "000"

    .line 2546
    .local v1, "mcc":Ljava/lang/String;
    const-string v4, "gsm.operator.numeric"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2548
    .local v2, "numeric":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_1

    .line 2549
    const-string v4, "GsmMmiCode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "numeric = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2553
    :cond_1
    const-string v4, "GsmMmiCode"

    const-string v5, " salesCode = EUR"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    const-string v4, "KTT"

    const-string v5, "EUR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "450"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2555
    const/4 v3, 0x0

    .line 2559
    .local v3, "start_ptr":I
    const-string v4, "#"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2560
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v10, :cond_3

    .line 2561
    const/4 v3, 0x2

    .line 2564
    :goto_0
    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isKTMMICodeSupport(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2565
    const/4 v0, 0x1

    .line 2592
    .end local v1    # "mcc":Ljava/lang/String;
    .end local v2    # "numeric":Ljava/lang/String;
    .end local v3    # "start_ptr":I
    :cond_2
    :goto_1
    return v0

    .line 2563
    .restart local v1    # "mcc":Ljava/lang/String;
    .restart local v2    # "numeric":Ljava/lang/String;
    .restart local v3    # "start_ptr":I
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 2570
    :cond_4
    const-string v4, "*"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2571
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_5

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v10, :cond_6

    .line 2572
    :cond_5
    const/4 v3, 0x2

    .line 2575
    :goto_2
    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isKTMMICodeSupport(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2576
    const/4 v0, 0x1

    goto :goto_1

    .line 2574
    :cond_6
    const/4 v3, 0x1

    goto :goto_2

    .line 2579
    .end local v3    # "start_ptr":I
    :cond_7
    const/4 v0, 0x1

    goto :goto_1

    .line 2582
    .end local v1    # "mcc":Ljava/lang/String;
    .end local v2    # "numeric":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x37

    if-ne v4, v5, :cond_9

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_9

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x39

    if-gt v4, v5, :cond_9

    .line 2583
    const/4 v0, 0x1

    goto :goto_1

    .line 2585
    :cond_9
    const-string v4, "36"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "7"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2586
    :cond_a
    const/4 v0, 0x1

    goto :goto_1

    .line 2587
    :cond_b
    const-string v4, "#31#"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "*31#"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_2

    .line 2588
    const-string v4, "gsmmmi"

    const-string v5, "isMMICodeSupport 4"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static isSerbiaShortCode(Ljava/lang/String;)Z
    .locals 6
    .param p0, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2992
    const-string v0, "000"

    .line 2993
    .local v0, "mcc":Ljava/lang/String;
    const-string v3, "gsm.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2995
    .local v1, "numeric":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_1

    .line 2996
    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2998
    const-string v3, "GsmMmiCode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSerbiaShortCode mcc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    const-string v3, "220"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "92"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "93"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "94"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "95"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "96"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3007
    :cond_0
    const-string v2, "GsmMmiCode"

    const-string v3, "isSerbiaShortCode Returning true"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    const/4 v2, 0x1

    .line 3011
    :goto_0
    return v2

    .line 3000
    :cond_1
    const-string v3, "GsmMmiCode"

    const-string v4, "isSerbiaShortCode Returning false"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3010
    :cond_2
    const-string v3, "GsmMmiCode"

    const-string v4, "isSerbiaShortCode Returning false"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isServiceClassVoiceorNone(I)Z
    .locals 1
    .param p1, "serviceClass"    # I

    .prologue
    .line 590
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isServiceCodeCallBarring(Ljava/lang/String;)Z
    .locals 13
    .param p0, "sc"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 697
    const-string v5, "000"

    .line 698
    .local v5, "mcc":Ljava/lang/String;
    const-string v10, "gsm.operator.numeric"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 699
    .local v6, "numeric":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x4

    if-le v10, v11, :cond_0

    .line 700
    const/4 v10, 0x3

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 702
    :cond_0
    const-string v10, "GsmMmiCode"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isServiceCodeCallBarring  mcc :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", sc :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    if-eqz p0, :cond_2

    const-string v10, "333"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "520"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 705
    const-string v8, "GsmMmiCode"

    const-string v10, "isServiceCodeCallBarring return false : Indonesia SEA operator takes *#333# as USSD"

    invoke-static {v8, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_1
    :goto_0
    return v9

    .line 709
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_RIL_EnableCallBarringConnectToUssd"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 711
    if-eqz p0, :cond_4

    const-string v10, "33"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "331"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "332"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "35"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "351"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    :goto_1
    move v9, v8

    goto :goto_0

    :cond_4
    move v8, v9

    goto :goto_1

    .line 714
    :cond_5
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 715
    .local v7, "resource":Landroid/content/res/Resources;
    if-eqz p0, :cond_1

    .line 716
    const v10, 0x1070039

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 718
    .local v1, "barringMMI":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 719
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 720
    .local v4, "match":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    move v9, v8

    goto :goto_0

    .line 719
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method static isServiceCodeCallForwarding(Ljava/lang/String;)Z
    .locals 1
    .param p0, "sc"    # Ljava/lang/String;

    .prologue
    .line 687
    if-eqz p0, :cond_1

    const-string v0, "21"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "67"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "61"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "62"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Z
    .locals 2
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    const/4 v0, 0x0

    .line 925
    if-nez p0, :cond_1

    .line 940
    :cond_0
    :goto_0
    return v0

    .line 933
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 937
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 940
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isShortCodeUSSD(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Z

    move-result v0

    goto :goto_0
.end method

.method private static isShortCodeUSSD(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Z
    .locals 6
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    const/16 v5, 0x23

    const/4 v0, 0x1

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 960
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v4, :cond_5

    .line 961
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 991
    :cond_0
    :goto_0
    return v0

    .line 973
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v4, :cond_2

    .line 974
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_0

    .line 980
    :cond_2
    const-string v2, "0"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "00"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v4, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_4

    :cond_3
    move v0, v1

    .line 983
    goto :goto_0

    .line 986
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v4, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    :cond_5
    move v0, v1

    .line 991
    goto :goto_0
.end method

.method private static isTwoDigitShortCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 898
    const-string v5, "GsmMmiCode"

    const-string v6, "isTwoDigitShortCode"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    .line 915
    :cond_0
    :goto_0
    return v4

    .line 902
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    if-nez v5, :cond_2

    .line 903
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107002b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    .line 907
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 908
    .local v1, "dialnumber":Ljava/lang/String;
    const-string v5, "GsmMmiCode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Two Digit Number Pattern "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 910
    const-string v4, "GsmMmiCode"

    const-string v5, "Two Digit Number Pattern -true"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    const/4 v4, 0x1

    goto :goto_0

    .line 907
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 914
    .end local v1    # "dialnumber":Ljava/lang/String;
    :cond_4
    const-string v5, "GsmMmiCode"

    const-string v6, "Two Digit Number Pattern -false"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;
    .locals 11
    .param p1, "info"    # Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "serviceClassMask"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2098
    new-array v4, v9, [Ljava/lang/String;

    const-string v8, "{0}"

    aput-object v8, v4, v7

    const-string v8, "{1}"

    aput-object v8, v4, v6

    const-string v8, "{2}"

    aput-object v8, v4, v10

    .line 2099
    .local v4, "sources":[Ljava/lang/String;
    new-array v2, v9, [Ljava/lang/CharSequence;

    .line 2105
    .local v2, "destinations":[Ljava/lang/CharSequence;
    iget v8, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v8, v10, :cond_6

    move v3, v6

    .line 2108
    .local v3, "needTimeTemplate":Z
    :goto_0
    iget v8, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v8, v6, :cond_8

    .line 2109
    if-eqz v3, :cond_7

    .line 2110
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v9, 0x10400e0

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2137
    .local v5, "template":Ljava/lang/CharSequence;
    :goto_1
    iget v8, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v8, p2

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v2, v7

    .line 2138
    iget-object v8, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v9, p1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    invoke-static {v8, v9}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->formatLtr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v6

    .line 2140
    iget v8, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v10

    .line 2142
    iget v8, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-nez v8, :cond_5

    .line 2144
    const/4 v0, 0x0

    .line 2145
    .local v0, "bIsSupportVoLTECmcc":Z
    const-string v8, "CMCC"

    const-string v9, "EUR"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "CHM-"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2147
    :cond_0
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voicecall_type"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_b

    move v0, v6

    .line 2148
    :goto_2
    const-string v8, "GsmMmiCode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bIsSupportVoLTECmcc - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v9, "TGY"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v9, "BRI"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    if-eqz v0, :cond_d

    .line 2154
    :cond_3
    iget v8, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v8, v6, :cond_c

    move v1, v6

    .line 2155
    .local v1, "cffEnabled":Z
    :goto_3
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v7, :cond_5

    .line 2156
    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v7, p2

    if-ne v7, v6, :cond_4

    .line 2158
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v8, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v7, v6, v1, v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 2160
    :cond_4
    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v7, p2

    const/16 v8, 0x10

    if-ne v7, v8, :cond_5

    .line 2162
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v8, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v7, v6, v1, v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVideoCallForwardingFlag(IZLjava/lang/String;)V

    .line 2174
    .end local v0    # "bIsSupportVoLTECmcc":Z
    .end local v1    # "cffEnabled":Z
    :cond_5
    :goto_4
    invoke-static {v5, v4, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    return-object v6

    .end local v3    # "needTimeTemplate":Z
    .end local v5    # "template":Ljava/lang/CharSequence;
    :cond_6
    move v3, v7

    .line 2105
    goto/16 :goto_0

    .line 2113
    .restart local v3    # "needTimeTemplate":Z
    :cond_7
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v9, 0x10400df

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .restart local v5    # "template":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 2116
    .end local v5    # "template":Ljava/lang/CharSequence;
    :cond_8
    iget v8, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v8, :cond_9

    iget-object v8, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2117
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v9, 0x10400de

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .restart local v5    # "template":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 2123
    .end local v5    # "template":Ljava/lang/CharSequence;
    :cond_9
    if-eqz v3, :cond_a

    .line 2124
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v9, 0x10400e2

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .restart local v5    # "template":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 2127
    .end local v5    # "template":Ljava/lang/CharSequence;
    :cond_a
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v9, 0x10400e1

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .restart local v5    # "template":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .restart local v0    # "bIsSupportVoLTECmcc":Z
    :cond_b
    move v0, v7

    .line 2147
    goto/16 :goto_2

    :cond_c
    move v1, v7

    .line 2154
    goto :goto_3

    .line 2165
    :cond_d
    iget v8, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v8, p2

    if-ne v8, v6, :cond_5

    .line 2167
    iget v8, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v8, v6, :cond_e

    move v1, v6

    .line 2168
    .restart local v1    # "cffEnabled":Z
    :goto_5
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v7, :cond_5

    .line 2169
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v8, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v7, v6, v1, v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    goto :goto_4

    .end local v1    # "cffEnabled":Z
    :cond_e
    move v1, v7

    .line 2167
    goto :goto_5
.end method

.method private static makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 601
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 603
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method static newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .locals 11
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;
    .param p2, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x3

    const/4 v5, 0x0

    const/4 v8, 0x2

    .line 305
    const/4 v4, 0x0

    .line 307
    .local v4, "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    if-nez p1, :cond_1

    .line 308
    const-string v6, "GsmMmiCode"

    const-string v7, "newFromDialString, phone is null"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_0
    :goto_0
    return-object v5

    .line 312
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/gsm/GSMPhone;->supportsGlobalModeForUsaCdma()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 313
    sget-object v6, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sPatternSuppServiceGlobalDev:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 314
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 315
    new-instance v4, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .end local v4    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {v4, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 316
    .restart local v4    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    .line 317
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "DialCode":Ljava/lang/String;
    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, "DialPrefix":Ljava/lang/String;
    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "DialNumber":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/gsm/GSMPhone;->supportsGlobalModeForUsaCdma()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMainOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "86"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 325
    const-string v5, "86"

    iput-object v5, v4, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    .line 326
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getLine1Number()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    move-object v5, v4

    .line 327
    goto :goto_0

    .line 329
    :cond_2
    const-string v6, "611"

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "+"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "611"

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 332
    const-string v5, "611"

    iput-object v5, v4, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    .line 333
    const-string v5, "+19085594899"

    iput-object v5, v4, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    move-object v5, v4

    .line 334
    goto/16 :goto_0

    .line 335
    :cond_3
    const-string v6, "67"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v1, :cond_9

    .line 337
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#31#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 347
    .end local v0    # "DialCode":Ljava/lang/String;
    .end local v1    # "DialNumber":Ljava/lang/String;
    .end local v2    # "DialPrefix":Ljava/lang/String;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    :cond_4
    :goto_1
    sget-object v6, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 350
    .restart local v3    # "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 351
    new-instance v4, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .end local v4    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {v4, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 352
    .restart local v4    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    .line 353
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    .line 354
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    .line 355
    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    .line 356
    const/4 v6, 0x7

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    .line 357
    const/16 v6, 0x9

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSic:Ljava/lang/String;

    .line 358
    const/16 v6, 0xb

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPwd:Ljava/lang/String;

    .line 359
    const/16 v6, 0xc

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    .line 360
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_CallNexti"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 361
    iput-object p0, v4, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialString:Ljava/lang/String;

    .line 368
    :cond_5
    iget-object v6, v4, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, v4, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "#"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 371
    new-instance v4, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .end local v4    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {v4, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 372
    .restart local v4    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iput-object p0, v4, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    .line 409
    :cond_6
    :goto_2
    const-string v6, "SKT"

    const-string v7, "EUR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "KTT"

    const-string v7, "EUR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "LGT"

    const-string v7, "EUR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "KOO"

    const-string v7, "EUR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isMMICodeSupport(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmMmiCode;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_8
    move-object v5, v4

    .line 417
    goto/16 :goto_0

    .line 339
    .restart local v0    # "DialCode":Ljava/lang/String;
    .restart local v1    # "DialNumber":Ljava/lang/String;
    .restart local v2    # "DialPrefix":Ljava/lang/String;
    :cond_9
    const-string v6, "82"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v1, :cond_4

    .line 341
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*31#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 374
    .end local v0    # "DialCode":Ljava/lang/String;
    .end local v1    # "DialNumber":Ljava/lang/String;
    .end local v2    # "DialPrefix":Ljava/lang/String;
    :cond_a
    const-string v6, "#"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 379
    new-instance v4, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .end local v4    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {v4, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 380
    .restart local v4    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iput-object p0, v4, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    .line 381
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_CallNexti"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 382
    iput-object p0, v4, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialString:Ljava/lang/String;

    goto :goto_2

    .line 384
    :cond_b
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isCroatiaShortCode(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 386
    const/4 v4, 0x0

    goto :goto_2

    .line 387
    :cond_c
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isSerbiaShortCode(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 390
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 392
    :cond_d
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTwoDigitShortCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 394
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 395
    :cond_e
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 396
    invoke-static {}, Lcom/android/internal/telephony/gsm/GSMPhone;->supportsGlobalModeForUsaCdma()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 398
    const-string v6, "GsmMmiCode"

    const-string v7, "In this case, number is phone number"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 403
    :cond_f
    new-instance v4, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .end local v4    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {v4, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 404
    .restart local v4    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iput-object p0, v4, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    .line 405
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_CallNexti"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 406
    iput-object p0, v4, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialString:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method static newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .locals 2
    .param p0, "ussdMessge"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;
    .param p2, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .prologue
    .line 444
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 446
    .local v0, "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iput-object p0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 447
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 448
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsPendingUSSD:Z

    .line 450
    return-object v0
.end method

.method static newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .locals 2
    .param p0, "ussdMessage"    # Ljava/lang/String;
    .param p1, "isUssdRequest"    # Z
    .param p2, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;
    .param p3, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .prologue
    .line 425
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 427
    .local v0, "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iput-object p0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 428
    iput-boolean p1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsUssdRequest:Z

    .line 431
    if-eqz p1, :cond_0

    .line 432
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsPendingUSSD:Z

    .line 433
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 438
    :goto_0
    return-object v0

    .line 435
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0
.end method

.method private onGetClirComplete(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const v4, 0x10400b0

    const v3, 0x10400ad

    const/4 v5, 0x0

    .line 1971
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1972
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1974
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 1975
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1976
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2059
    :goto_0
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 2060
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    .line 2061
    return-void

    .line 1980
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    .line 1983
    .local v0, "clirArgs":[I
    const/4 v2, 0x1

    aget v2, v0, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1985
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x10400b1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1987
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1991
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x10400b2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1993
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1997
    :pswitch_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_CallUssdException"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1999
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x104093a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2003
    :goto_1
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 2001
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x104008b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2009
    :pswitch_3
    aget v2, v0, v5

    packed-switch v2, :pswitch_data_1

    .line 2012
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2025
    :goto_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_CallNexti"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ja"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2027
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x104095e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v5, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2029
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 2016
    :pswitch_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2020
    :pswitch_5
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x10400ae

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2034
    :pswitch_6
    aget v2, v0, v5

    packed-switch v2, :pswitch_data_2

    .line 2037
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2050
    :goto_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_CallNexti"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ja"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2052
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x104095f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v5, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2054
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 2041
    :pswitch_7
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x10400af

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2045
    :pswitch_8
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1983
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
    .end packed-switch

    .line 2009
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 2034
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private onQueryCfComplete(Landroid/os/AsyncResult;)V
    .locals 14
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 2187
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2188
    .local v7, "sb":Ljava/lang/StringBuilder;
    const-string v10, "\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2190
    iget-object v10, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_1

    .line 2191
    sget-object v10, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 2192
    iget-object v10, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v10, Lcom/android/internal/telephony/CommandException;

    check-cast v10, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    .line 2193
    .local v1, "err":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v10, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v10, :cond_0

    .line 2194
    const-string v10, "GsmMmiCode"

    const-string v11, "FDN_CHECK_FAILURE"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v11, 0x104008c

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2300
    .end local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :goto_0
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 2301
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v10, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    .line 2303
    return-void

    .line 2197
    .restart local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_0
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v11, 0x1040916

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2198
    const-string v10, "\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2199
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->forwardingTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2200
    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2201
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassString(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2208
    .end local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    iget-object v10, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v5, v10

    check-cast v5, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 2210
    .local v5, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v10, v5

    if-nez v10, :cond_d

    .line 2212
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->forwardingTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2215
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v11, 0x104008f

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2218
    const/4 v0, 0x0

    .line 2219
    .local v0, "bIsSupportVoLTECmcc":Z
    const-string v10, "CMCC"

    const-string v11, "EUR"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "CHM-"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2221
    :cond_2
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "voicecall_type"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_a

    const/4 v0, 0x1

    .line 2222
    :goto_1
    const-string v10, "GsmMmiCode"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bIsSupportVoLTECmcc - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    :cond_3
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v11, "TGY"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v11, "BRI"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_4
    if-eqz v0, :cond_b

    .line 2230
    :cond_5
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v10, :cond_7

    iget v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mQueryCfClass:I

    if-eqz v10, :cond_6

    iget v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mQueryCfClass:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_7

    .line 2231
    :cond_6
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 2233
    :cond_7
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v10, :cond_9

    iget v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mQueryCfClass:I

    if-eqz v10, :cond_8

    iget v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mQueryCfClass:I

    and-int/lit8 v10, v10, 0x10

    if-eqz v10, :cond_9

    .line 2234
    :cond_8
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVideoCallForwardingFlag(IZLjava/lang/String;)V

    .line 2297
    .end local v0    # "bIsSupportVoLTECmcc":Z
    :cond_9
    :goto_2
    sget-object v10, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 2221
    .restart local v0    # "bIsSupportVoLTECmcc":Z
    :cond_a
    const/4 v0, 0x0

    goto :goto_1

    .line 2237
    :cond_b
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v10, :cond_9

    iget v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mQueryCfClass:I

    if-eqz v10, :cond_c

    iget v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mQueryCfClass:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_9

    .line 2238
    :cond_c
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    goto :goto_2

    .line 2243
    .end local v0    # "bIsSupportVoLTECmcc":Z
    :cond_d
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2251
    .local v9, "tb":Landroid/text/SpannableStringBuilder;
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->forwardingTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2252
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2255
    const/4 v3, 0x0

    .line 2256
    .local v3, "fi_voice":Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v2, 0x0

    .line 2258
    .local v2, "fi_video":Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v8, 0x1

    .line 2259
    .local v8, "serviceClassMask":I
    :goto_3
    const/16 v10, 0x80

    if-gt v8, v10, :cond_11

    .line 2262
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v6, v5

    .local v6, "s":I
    :goto_4
    if-ge v4, v6, :cond_10

    .line 2263
    aget-object v10, v5, v4

    iget v10, v10, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v10, v8

    if-eqz v10, :cond_f

    .line 2264
    aget-object v10, v5, v4

    invoke-direct {p0, v10, v8}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2266
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2268
    const/4 v10, 0x1

    if-ne v8, v10, :cond_e

    .line 2269
    aget-object v3, v5, v4

    .line 2271
    :cond_e
    const/16 v10, 0x10

    if-ne v8, v10, :cond_f

    .line 2272
    aget-object v2, v5, v4

    .line 2262
    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2260
    :cond_10
    shl-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2278
    .end local v4    # "i":I
    .end local v6    # "s":I
    :cond_11
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2282
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v11, "21"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 2283
    if-nez v3, :cond_13

    iget v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mQueryCfClass:I

    if-eqz v10, :cond_12

    iget v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mQueryCfClass:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_13

    .line 2284
    :cond_12
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v10, :cond_13

    .line 2285
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 2288
    :cond_13
    if-nez v2, :cond_9

    iget v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mQueryCfClass:I

    if-eqz v10, :cond_14

    iget v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mQueryCfClass:I

    and-int/lit8 v10, v10, 0x10

    if-eqz v10, :cond_9

    .line 2289
    :cond_14
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v10, :cond_9

    .line 2290
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVideoCallForwardingFlag(IZLjava/lang/String;)V

    goto/16 :goto_2
.end method

.method private onQueryComplete(Landroid/os/AsyncResult;)V
    .locals 14
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const v13, 0x104008b

    const/4 v12, 0x1

    const v11, 0x104093a

    const/4 v10, 0x0

    .line 2307
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2308
    .local v6, "sb":Ljava/lang/StringBuilder;
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2310
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_6

    .line 2311
    sget-object v7, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 2313
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_CallNexti"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v8, "351"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2315
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getErrorCode(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->ussdCode:Ljava/lang/CharSequence;

    .line 2316
    const-string v7, "GsmMmiCode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onQueryComplete exception ussd="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->ussdCode:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_CallUssdException"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2320
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2338
    :cond_1
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_CallNexti"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2339
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v7, v7, Lcom/android/internal/telephony/CommandException;

    if-eqz v7, :cond_2

    .line 2340
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v7, Lcom/android/internal/telephony/CommandException;

    check-cast v7, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 2341
    .local v0, "err":Lcom/android/internal/telephony/CommandException$Error;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 2342
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v8, "43"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->NOT_SUBCRIBED_USER:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v7, :cond_2

    .line 2343
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v9, 0x104095d

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v10, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2456
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_2
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_CallNexti"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2457
    const-string v7, "GsmMmiCode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onQueryComplete( return "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->ussdCode:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    :cond_3
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 2461
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    .line 2462
    return-void

    .line 2322
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2324
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2325
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 2326
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v8, "43"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2327
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassString(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2328
    :cond_5
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2329
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->barringTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2330
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2331
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassString(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2350
    :cond_6
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [I

    move-object v1, v7

    check-cast v1, [I

    .line 2352
    .local v1, "ints":[I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_CallNexti"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2353
    const/4 v3, 0x0

    .local v3, "loop":I
    :goto_2
    array-length v7, v1

    if-ge v3, v7, :cond_7

    .line 2354
    const-string v7, "GsmMmiCode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onQueryComplete ints["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v1, v3

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2358
    .end local v3    # "loop":I
    :cond_7
    array-length v7, v1

    if-eqz v7, :cond_18

    .line 2359
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_CallNexti"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2360
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->ussdCode:Ljava/lang/CharSequence;

    .line 2362
    :cond_8
    aget v7, v1, v10

    if-nez v7, :cond_d

    .line 2364
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2365
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->barringTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2366
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2369
    :cond_9
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v8, "30"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v8, "300"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 2370
    :cond_a
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v8, 0x1040907

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2374
    :goto_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_CallNexti"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v8, "351"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2376
    const-string v7, "351*4#"

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->ussdCode:Ljava/lang/CharSequence;

    .line 2436
    :cond_b
    :goto_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_CallNexti"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->ussdCode:Ljava/lang/CharSequence;

    if-nez v7, :cond_17

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v8, "351"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 2439
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->ussdCode:Ljava/lang/CharSequence;

    .line 2440
    array-length v2, v1

    .line 2441
    .local v2, "ints_length":I
    const/4 v3, 0x0

    .restart local v3    # "loop":I
    :goto_5
    if-ge v3, v2, :cond_16

    .line 2442
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->ussdCode:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v1, v3

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->ussdCode:Ljava/lang/CharSequence;

    .line 2441
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2372
    .end local v2    # "ints_length":I
    .end local v3    # "loop":I
    :cond_c
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v8, 0x104008f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2381
    :cond_d
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v8, "43"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 2383
    aget v7, v1, v12

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->createQueryCallWaitingResultMessage(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 2384
    :cond_e
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 2386
    aget v7, v1, v10

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->createQueryCallBarringResultMessage(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2387
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_CallNexti"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v8, "351"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2389
    const/4 v4, 0x0

    .line 2390
    .local v4, "maskDataService":I
    or-int/lit8 v4, v4, 0x2

    .line 2391
    or-int/lit8 v4, v4, 0x10

    .line 2392
    or-int/lit8 v4, v4, 0x20

    .line 2393
    aget v7, v1, v10

    and-int/lit8 v7, v7, 0x32

    if-eqz v7, :cond_b

    .line 2394
    const/4 v5, 0x0

    .line 2395
    .local v5, "maskNoDataService":I
    or-int/lit8 v5, v5, 0x1

    .line 2396
    or-int/lit8 v5, v5, 0x4

    .line 2397
    or-int/lit8 v5, v5, 0x8

    .line 2398
    or-int/lit8 v5, v5, 0x40

    .line 2399
    or-int/lit16 v5, v5, 0x80

    .line 2400
    aget v7, v1, v10

    and-int/lit16 v7, v7, 0xcd

    if-nez v7, :cond_f

    .line 2402
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "**24#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->ussdCode:Ljava/lang/CharSequence;

    goto/16 :goto_4

    .line 2405
    :cond_f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "**24*16*32#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->ussdCode:Ljava/lang/CharSequence;

    goto/16 :goto_4

    .line 2409
    .end local v4    # "maskDataService":I
    .end local v5    # "maskNoDataService":I
    :cond_10
    aget v7, v1, v10

    if-ne v7, v12, :cond_14

    .line 2411
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v7, :cond_11

    .line 2412
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 2413
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->barringTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2414
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2418
    :cond_11
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v8, "30"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v8, "300"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 2419
    :cond_12
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v8, 0x1040906

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 2422
    :cond_13
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v8, 0x104008d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 2429
    :cond_14
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_CallUssdException"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 2431
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 2433
    :cond_15
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 2444
    .restart local v2    # "ints_length":I
    .restart local v3    # "loop":I
    :cond_16
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->ussdCode:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->ussdCode:Ljava/lang/CharSequence;

    .line 2453
    .end local v2    # "ints_length":I
    .end local v3    # "loop":I
    :cond_17
    :goto_6
    sget-object v7, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_1

    .line 2447
    :cond_18
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_CallUssdException"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 2449
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 2451
    :cond_19
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_6
.end method

.method private onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const v12, 0x1040090

    const/4 v11, 0x1

    const/4 v10, 0x0

    const v9, 0x104093a

    const v8, 0x104008b

    .line 1723
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1725
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    .line 1727
    :cond_0
    const-string v6, "GsmMmiCode"

    const-string v7, "WFC SS error, mmi done"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    sget-object v6, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1729
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1730
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1731
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    .line 1967
    :goto_0
    return-void

    .line 1735
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1736
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1738
    iget-object v6, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_1b

    .line 1739
    sget-object v6, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1740
    iget-object v6, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v6, v6, Lcom/android/internal/telephony/CommandException;

    if-eqz v6, :cond_19

    .line 1741
    iget-object v6, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    .line 1742
    .local v1, "err":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v6, :cond_e

    .line 1743
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPinPukCommand()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1747
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v7, "05"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1748
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x1040095

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1762
    :goto_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1763
    .local v0, "attemptsRemaining":I
    if-gtz v0, :cond_7

    .line 1764
    const-string v6, "GsmMmiCode"

    const-string v7, "onSetComplete: PUK locked, cancel as lock screen will handle this"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    sget-object v6, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1862
    .end local v0    # "attemptsRemaining":I
    :cond_2
    :goto_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_CallNexti"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v7, "351"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1864
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getErrorCode(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->ussdCode:Ljava/lang/CharSequence;

    .line 1865
    const-string v6, "GsmMmiCode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSetComplete exception ussd="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->ussdCode:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    .end local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_3
    :goto_3
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1966
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto/16 :goto_0

    .line 1750
    .restart local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v7, "052"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1751
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x1040939

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1753
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v7, "042"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1754
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x1040938

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1758
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x1040094

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1767
    .restart local v0    # "attemptsRemaining":I
    :cond_7
    if-lez v0, :cond_2

    .line 1768
    const-string v6, "GsmMmiCode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSetComplete: attemptsRemaining="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1770
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x1140000

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v0, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1775
    .end local v0    # "attemptsRemaining":I
    :cond_8
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1776
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_CallUssdException"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1778
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1781
    :goto_4
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1782
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->forwardingTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1783
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1784
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassString(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1780
    :cond_9
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1785
    :cond_a
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1786
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_CallUssdException"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1788
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1791
    :goto_5
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1792
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->barringTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1793
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1794
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassString(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1790
    :cond_b
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1795
    :cond_c
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v7, "43"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1796
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x1040916

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1797
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1798
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassString(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1800
    :cond_d
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1801
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x1040092

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1808
    :cond_e
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v6, :cond_f

    .line 1809
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x104009a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1811
    :cond_f
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v6, :cond_12

    .line 1812
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v7, "04"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1813
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x104009b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1815
    :cond_10
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1816
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1817
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v7, "43"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1818
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassString(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1819
    :cond_11
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1820
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->barringTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1821
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1822
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassString(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1825
    :cond_12
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v6, :cond_13

    .line 1826
    const-string v6, "GsmMmiCode"

    const-string v7, "FDN_CHECK_FAILURE"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x104008c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1829
    :cond_13
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_CallUssdException"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1831
    const-string v6, "ril.ss.errorcode"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1832
    .local v2, "errorcode":Ljava/lang/String;
    const-string v6, "onSetComplete"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ERROR CODE : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->ErrcodeToString(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1835
    .end local v2    # "errorcode":Ljava/lang/String;
    :cond_14
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1836
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1837
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1838
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->forwardingTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1839
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1840
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassString(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1841
    :cond_15
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 1842
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1843
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1844
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->barringTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1845
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1846
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassString(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1847
    :cond_16
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v7, "43"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 1848
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->NOT_SUBCRIBED_USER:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v6, :cond_17

    .line 1849
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v8, 0x104095d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v10, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1851
    :cond_17
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x1040916

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1852
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1853
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassString(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1856
    :cond_18
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1868
    .end local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_19
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_CallUssdException"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1870
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1872
    :cond_1a
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1876
    :cond_1b
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v6

    if-eqz v6, :cond_21

    .line 1877
    sget-object v6, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1879
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 1880
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->forwardingTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1881
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1888
    :cond_1c
    :goto_6
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsCallFwdReg:Z

    if-eqz v6, :cond_1f

    .line 1889
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1896
    :goto_7
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v7, "31"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1897
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6, v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveClirSetting(I)V

    .line 1900
    :cond_1d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_CallNexti"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v7, "351"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1902
    iget-object v6, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    move-object v3, v6

    check-cast v3, [I

    .line 1903
    .local v3, "ints":[I
    const/4 v4, 0x0

    .local v4, "loop":I
    :goto_8
    array-length v6, v3

    if-ge v4, v6, :cond_20

    .line 1904
    const-string v6, "GsmMmiCode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSetComplete ints["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v3, v4

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1882
    .end local v3    # "ints":[I
    .end local v4    # "loop":I
    :cond_1e
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1883
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->barringTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1884
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 1892
    :cond_1f
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x104008d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 1906
    .restart local v3    # "ints":[I
    .restart local v4    # "loop":I
    :cond_20
    const-string v6, "351*5#"

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->ussdCode:Ljava/lang/CharSequence;

    .line 1907
    const-string v6, "GsmMmiCode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSetComplete Activate ussd="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->ussdCode:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1909
    .end local v3    # "ints":[I
    .end local v4    # "loop":I
    :cond_21
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v6

    if-eqz v6, :cond_25

    .line 1910
    sget-object v6, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1912
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 1913
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->forwardingTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1914
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1921
    :cond_22
    :goto_9
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x104008f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1924
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v7, "31"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 1925
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveClirSetting(I)V

    .line 1928
    :cond_23
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_CallNexti"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v7, "351"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1930
    const-string v6, "351*4#"

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->ussdCode:Ljava/lang/CharSequence;

    .line 1931
    const-string v6, "GsmMmiCode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSetComplete Deactivate ussd="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->ussdCode:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1915
    :cond_24
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 1916
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->barringTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1917
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 1933
    :cond_25
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isRegister()Z

    move-result v6

    if-eqz v6, :cond_27

    .line 1934
    sget-object v6, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1936
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 1937
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->forwardingTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1938
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1942
    :cond_26
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1944
    :cond_27
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isErasure()Z

    move-result v6

    if-eqz v6, :cond_29

    .line 1945
    sget-object v6, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1947
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 1948
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->forwardingTypeToString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1949
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1953
    :cond_28
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x1040091

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1956
    :cond_29
    sget-object v6, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1957
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_CallUssdException"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 1959
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1961
    :cond_2a
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_3
.end method

.method static scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "sc"    # Ljava/lang/String;

    .prologue
    .line 730
    if-nez p0, :cond_0

    .line 731
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call barring sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 734
    :cond_0
    const-string v0, "33"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 735
    const-string v0, "AO"

    .line 749
    :goto_0
    return-object v0

    .line 736
    :cond_1
    const-string v0, "331"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 737
    const-string v0, "OI"

    goto :goto_0

    .line 738
    :cond_2
    const-string v0, "332"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 739
    const-string v0, "OX"

    goto :goto_0

    .line 740
    :cond_3
    const-string v0, "35"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 741
    const-string v0, "AI"

    goto :goto_0

    .line 742
    :cond_4
    const-string v0, "351"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 743
    const-string v0, "IR"

    goto :goto_0

    .line 744
    :cond_5
    const-string v0, "330"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 745
    const-string v0, "AB"

    goto :goto_0

    .line 746
    :cond_6
    const-string v0, "333"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 747
    const-string v0, "AG"

    goto :goto_0

    .line 748
    :cond_7
    const-string v0, "353"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 749
    const-string v0, "AC"

    goto :goto_0

    .line 751
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call barring sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static scToCallForwardReason(Ljava/lang/String;)I
    .locals 2
    .param p0, "sc"    # Ljava/lang/String;

    .prologue
    .line 615
    if-nez p0, :cond_0

    .line 616
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call forward sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 619
    :cond_0
    const-string v0, "002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 620
    const/4 v0, 0x4

    .line 630
    :goto_0
    return v0

    .line 621
    :cond_1
    const-string v0, "21"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 622
    const/4 v0, 0x0

    goto :goto_0

    .line 623
    :cond_2
    const-string v0, "67"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 624
    const/4 v0, 0x1

    goto :goto_0

    .line 625
    :cond_3
    const-string v0, "62"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 626
    const/4 v0, 0x3

    goto :goto_0

    .line 627
    :cond_4
    const-string v0, "61"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 628
    const/4 v0, 0x2

    goto :goto_0

    .line 629
    :cond_5
    const-string v0, "004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 630
    const/4 v0, 0x5

    goto :goto_0

    .line 632
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call forward sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private serviceClassString(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "serviceClass"    # I

    .prologue
    .line 2849
    sparse-switch p1, :sswitch_data_0

    .line 2866
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104092b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2850
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104091c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2851
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104091d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2852
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104091e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2853
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104091f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2854
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040920

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2855
    :sswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040921

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2856
    :sswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040922

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2857
    :sswitch_7
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040923

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2858
    :sswitch_8
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040924

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2859
    :sswitch_9
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040925

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2860
    :sswitch_a
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040926

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2861
    :sswitch_b
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040927

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2862
    :sswitch_c
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040928

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 2863
    :sswitch_d
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040929

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 2864
    :sswitch_e
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104092a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 2849
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_c
        0x8 -> :sswitch_3
        0xc -> :sswitch_b
        0xd -> :sswitch_a
        0x10 -> :sswitch_4
        0x11 -> :sswitch_e
        0x20 -> :sswitch_5
        0x30 -> :sswitch_d
        0x40 -> :sswitch_6
        0x60 -> :sswitch_9
        0x80 -> :sswitch_7
        0xa0 -> :sswitch_8
    .end sparse-switch
.end method

.method private serviceClassToCFString(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "serviceClass"    # I

    .prologue
    .line 2071
    sparse-switch p1, :sswitch_data_0

    .line 2089
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2073
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400c0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2075
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400c1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2077
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400c2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2079
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2081
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400c5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2083
    :sswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400c4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2085
    :sswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400c6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2087
    :sswitch_7
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400c7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2071
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
    .end sparse-switch
.end method

.method private serviceModeToCFString(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 2834
    packed-switch p1, :pswitch_data_0

    .line 2841
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2835
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040917

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2836
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040904

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2837
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040918

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2838
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040919

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2839
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104091a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2840
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104091b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 2834
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static siToServiceClass(Ljava/lang/String;)I
    .locals 4
    .param p0, "si"    # Ljava/lang/String;

    .prologue
    .line 638
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 639
    :cond_0
    const/4 v1, 0x0

    .line 667
    :goto_0
    return v1

    .line 642
    :cond_1
    const/16 v1, 0xa

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 644
    .local v0, "serviceCode":I
    sparse-switch v0, :sswitch_data_0

    .line 670
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported MMI service code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 645
    :sswitch_0
    const/16 v1, 0xd

    goto :goto_0

    .line 646
    :sswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 647
    :sswitch_2
    const/16 v1, 0xc

    goto :goto_0

    .line 648
    :sswitch_3
    const/4 v1, 0x4

    goto :goto_0

    .line 650
    :sswitch_4
    const/16 v1, 0x8

    goto :goto_0

    .line 652
    :sswitch_5
    const/4 v1, 0x5

    goto :goto_0

    .line 660
    :sswitch_6
    const/16 v1, 0x30

    goto :goto_0

    .line 662
    :sswitch_7
    const/16 v1, 0xa0

    goto :goto_0

    .line 663
    :sswitch_8
    const/16 v1, 0x50

    goto :goto_0

    .line 664
    :sswitch_9
    const/16 v1, 0x10

    goto :goto_0

    .line 665
    :sswitch_a
    const/16 v1, 0x20

    goto :goto_0

    .line 666
    :sswitch_b
    const/16 v1, 0x11

    goto :goto_0

    .line 667
    :sswitch_c
    const/16 v1, 0x40

    goto :goto_0

    .line 644
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_3
        0x10 -> :sswitch_4
        0x13 -> :sswitch_5
        0x14 -> :sswitch_6
        0x15 -> :sswitch_7
        0x16 -> :sswitch_8
        0x18 -> :sswitch_9
        0x19 -> :sswitch_a
        0x1a -> :sswitch_b
        0x63 -> :sswitch_c
    .end sparse-switch
.end method

.method private static siToTime(Ljava/lang/String;)I
    .locals 1
    .param p0, "si"    # Ljava/lang/String;

    .prologue
    .line 677
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 678
    :cond_0
    const/4 v0, 0x0

    .line 681
    :goto_0
    return v0

    :cond_1
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public IsUssdConnectToCall()Z
    .locals 4

    .prologue
    .line 3017
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_UssdConnectToCall"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3018
    .local v0, "scUssd2Call":Ljava/lang/String;
    const-string v1, "GsmMmiCode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsUssdConnect2Call : ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), serviceCode = ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3022
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3023
    const/4 v1, 0x1

    .line 3026
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_1

    .line 818
    :cond_0
    :goto_0
    return-void

    .line 797
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 799
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsPendingUSSD:Z

    if-eqz v0, :cond_2

    .line 804
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x7

    invoke-virtual {p0, v1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->cancelPendingUssd(Landroid/os/Message;)V

    goto :goto_0

    .line 815
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto :goto_0
.end method

.method getCLIRMode()I
    .locals 2

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1022
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1023
    const/4 v0, 0x2

    .line 1029
    :goto_0
    return v0

    .line 1024
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1025
    const/4 v0, 0x1

    goto :goto_0

    .line 1029
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2942
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialString:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/MmiCode$State;
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    return-object v0
.end method

.method public getUssdCode()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2938
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->ussdCode:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1513
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    .line 1514
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_0

    .line 1515
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->lastErr:Lcom/android/internal/telephony/CommandException$Error;

    .line 1516
    const-string v3, "ILO"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "PCL"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CEL"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "PTR"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "MIR"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1521
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iput-boolean v5, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiInitBySTK:Z

    .line 1526
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1637
    :cond_1
    :goto_0
    return-void

    .line 1528
    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    .line 1530
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1534
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    .line 1537
    const/4 v1, 0x0

    .line 1538
    .local v1, "bIsSupportVoLTECmcc":Z
    const-string v3, "CMCC"

    const-string v6, "EUR"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "CHM-"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1540
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "voicecall_type"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_9

    move v1, v4

    .line 1541
    :goto_1
    const-string v3, "GsmMmiCode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bIsSupportVoLTECmcc - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v6, "TGY"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v6, "BRI"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    if-eqz v1, :cond_b

    .line 1554
    :cond_5
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_8

    iget v3, p1, Landroid/os/Message;->arg2:I

    const/4 v6, -0x1

    if-eq v3, v6, :cond_8

    .line 1555
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v4, :cond_a

    move v2, v4

    .line 1556
    .local v2, "cffEnabled":Z
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v3, :cond_8

    .line 1557
    iget v3, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_6

    .line 1558
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1560
    :cond_6
    iget v3, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_7

    .line 1561
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVideoCallForwardingFlag(IZLjava/lang/String;)V

    .line 1563
    :cond_7
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_8

    .line 1564
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3, v4, v2, v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCallForwardingFlag(IZLjava/lang/String;)V

    .line 1581
    .end local v2    # "cffEnabled":Z
    :cond_8
    :goto_3
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :cond_9
    move v1, v5

    .line 1540
    goto :goto_1

    :cond_a
    move v2, v5

    .line 1555
    goto :goto_2

    .line 1573
    :cond_b
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_8

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_8

    .line 1574
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v4, :cond_c

    move v2, v4

    .line 1575
    .restart local v2    # "cffEnabled":Z
    :goto_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v3, :cond_8

    .line 1576
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    goto :goto_3

    .end local v2    # "cffEnabled":Z
    :cond_c
    move v2, v5

    .line 1574
    goto :goto_4

    .line 1585
    .end local v1    # "bIsSupportVoLTECmcc":Z
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    .line 1586
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onGetClirComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1590
    :pswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    .line 1591
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onQueryCfComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1595
    :pswitch_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    .line 1596
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onQueryComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1600
    :pswitch_5
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    .line 1602
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isSsCode()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v5, "CscFeature_RIL_RerouteSsToSip"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1603
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_d

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isCfIconUpdateRequired()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1604
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getCfIconStatus()Z

    move-result v2

    .line 1605
    .restart local v2    # "cffEnabled":Z
    const-string v3, "GsmMmiCode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cf Set with cffEnabled :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v3, :cond_d

    .line 1607
    const-string v3, "GsmMmiCode"

    const-string v5, "mIccRecords is not null"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3, v4, v2, v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1611
    .end local v2    # "cffEnabled":Z
    :cond_d
    const-string v3, "GsmMmiCode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIP SS onSetComplete : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ril.sip_forwarded_ss"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    const-string v3, "403"

    const-string v4, "ril.sip_forwarded_ss"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1613
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processCode()V

    goto/16 :goto_0

    .line 1616
    :cond_e
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1619
    :cond_f
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 1620
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1621
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1623
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto/16 :goto_0

    .line 1634
    :pswitch_6
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto/16 :goto_0

    .line 1526
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method isActivate()Z
    .locals 2

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCancelable()Z
    .locals 2

    .prologue
    .line 823
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isSsCode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_RerouteSsToSip"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    const/4 v0, 0x0

    .line 826
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsPendingUSSD:Z

    goto :goto_0
.end method

.method isDeactivate()Z
    .locals 2

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isErasure()Z
    .locals 2

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isGlobalDevMmi()Z
    .locals 2

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "611"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInterrogate()Z
    .locals 2

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    const-string v1, "*#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMMI()Z
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPendingUSSD()Z
    .locals 1

    .prologue
    .line 1105
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsPendingUSSD:Z

    return v0
.end method

.method isPinPukCommand()Z
    .locals 2

    .prologue
    .line 998
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "042"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "052"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRegister()Z
    .locals 2

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    const-string v1, "**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequiredToRouteCS()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1042
    const-string v7, "ro.csc.sales_code"

    const-string v8, "NONE"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1043
    .local v4, "salesCode":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v2

    .line 1044
    .local v2, "phoneId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v7, "gsm.operator.numeric"

    const-string v8, "0"

    invoke-static {v2, v7, v8}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1046
    .local v3, "plmn":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v7, "gsm.sim.operator.numeric"

    const-string v8, "0"

    invoke-static {v2, v7, v8}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1050
    .local v1, "SimOperator":Ljava/lang/String;
    const-string v7, "TMO"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1051
    const/16 v0, 0x20

    .line 1052
    .local v0, "IMS_TYPE_CDPN":I
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getImsRegisteredFeature()I

    move-result v7

    and-int/2addr v7, v0

    if-ne v7, v0, :cond_1

    .line 1053
    const-string v6, "GsmMmiCode"

    const-string v7, "Jansky support only CS ss on CDPN"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    .end local v0    # "IMS_TYPE_CDPN":I
    :cond_0
    :goto_0
    return v5

    .line 1058
    :cond_1
    const-string v7, "46605"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "46605"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1059
    const-string v6, "GsmMmiCode"

    const-string v7, "For APT USSD Spec. DONOT route it over SIP"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1063
    :cond_2
    const-string v7, "BRI"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "TLA"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1064
    :cond_3
    const-string v7, "46697"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "46697"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "46693"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "46699"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    const-string v7, "46689"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "46689"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1066
    :cond_5
    const-string v6, "GsmMmiCode"

    const-string v7, "TWM and T Star SSC is required to CS"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1069
    :cond_6
    const-string v5, "GsmMmiCode"

    const-string v7, "Other operator all SSC is requested over IMS for TW"

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 1070
    goto :goto_0

    .line 1072
    :cond_7
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v7, :cond_d

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v8, "21"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v8, "61"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v8, "62"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v8, "67"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v8, "43"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v8, "30"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v8, "31"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_8
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSic:Ljava/lang/String;

    if-eqz v7, :cond_0

    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isErasure()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v8, "004"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSic:Ljava/lang/String;

    if-eqz v7, :cond_0

    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isRegister()Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v8, "004"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v8, "002"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_b
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    if-nez v7, :cond_c

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSic:Ljava/lang/String;

    if-eqz v7, :cond_0

    :cond_c
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v8, "61"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    if-nez v7, :cond_d

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSic:Ljava/lang/String;

    if-nez v7, :cond_0

    :cond_d
    move v5, v6

    goto/16 :goto_0
.end method

.method isShortCode()Z
    .locals 2

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSsCode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 846
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 853
    :cond_0
    :goto_0
    return v0

    .line 849
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v2, "30"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v2, "31"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v2, "300"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v2, "43"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 851
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSsInfo()Z
    .locals 1

    .prologue
    .line 1114
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsSsInfo:Z

    return v0
.end method

.method isTemporaryModeCLIR()Z
    .locals 2

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUssdRequest()Z
    .locals 1

    .prologue
    .line 1110
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsUssdRequest:Z

    return v0
.end method

.method onUssdFinished(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "ussdMessage"    # Ljava/lang/String;
    .param p2, "isUssdRequest"    # Z

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_2

    .line 1433
    if-nez p1, :cond_3

    .line 1434
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040093

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1440
    :cond_0
    :goto_0
    iput-boolean p2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsUssdRequest:Z

    .line 1442
    if-nez p2, :cond_1

    .line 1443
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1446
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    .line 1448
    :cond_2
    return-void

    .line 1436
    :cond_3
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1437
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_CallNexti"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1438
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->ussdCode:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method onUssdFinishedError()V
    .locals 2

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_0

    .line 1459
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1460
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_CallUssdException"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1462
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104093a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1470
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    .line 1472
    :cond_0
    return-void

    .line 1463
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ReplaceUssdFail"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1465
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040915

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1467
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104008b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method onUssdRelease()V
    .locals 2

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_0

    .line 1486
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1487
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1489
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    .line 1491
    :cond_0
    return-void
.end method

.method parseSsData(Lcom/android/internal/telephony/gsm/SsData;)V
    .locals 7
    .param p1, "ssData"    # Lcom/android/internal/telephony/gsm/SsData;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 472
    iget v3, p1, Lcom/android/internal/telephony/gsm/SsData;->result:I

    invoke-static {v3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    .line 473
    .local v1, "ex":Lcom/android/internal/telephony/CommandException;
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScStringFromScType(Lcom/android/internal/telephony/gsm/SsData$ServiceType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    .line 474
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getActionStringFromReqType(Lcom/android/internal/telephony/gsm/SsData$RequestType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    .line 475
    const-string v3, "GsmMmiCode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseSsData msc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    if-eqz v1, :cond_0

    .line 478
    const-string v3, "ILO"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "PCL"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CEL"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "PTR"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "MIR"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 483
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iput-boolean v0, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiInitBySTK:Z

    .line 488
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmMmiCode$1;->$SwitchMap$com$android$internal$telephony$gsm$SsData$RequestType:[I

    iget-object v4, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SsData$RequestType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 526
    const-string v2, "GsmMmiCode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invaid requestType in SSData : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :goto_0
    return-void

    .line 493
    :pswitch_0
    iget v3, p1, Lcom/android/internal/telephony/gsm/SsData;->result:I

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->isTypeUnConditional()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 500
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    sget-object v4, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_ACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    if-eq v3, v4, :cond_1

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    sget-object v4, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_REGISTRATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    if-ne v3, v4, :cond_2

    :cond_1
    iget v3, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceClass:I

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceClassVoiceorNone(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    .line 504
    .local v0, "cffEnabled":Z
    :cond_2
    const-string v3, "GsmMmiCode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setVoiceCallForwardingFlag cffEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v3, :cond_4

    .line 506
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3, v2, v0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 507
    const-string v2, "GsmMmiCode"

    const-string v3, "setVoiceCallForwardingFlag done from SS Info."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    .end local v0    # "cffEnabled":Z
    :cond_3
    :goto_1
    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v2, v6, v3, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v6, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 509
    .restart local v0    # "cffEnabled":Z
    :cond_4
    const-string v2, "GsmMmiCode"

    const-string v3, "setVoiceCallForwardingFlag aborted. sim records is null."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 515
    .end local v0    # "cffEnabled":Z
    :pswitch_1
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->isTypeClir()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 516
    const-string v2, "GsmMmiCode"

    const-string v3, "CLIR INTERROGATION"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    invoke-direct {v2, v6, v3, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onGetClirComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 518
    :cond_5
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->isTypeCF()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 519
    const-string v2, "GsmMmiCode"

    const-string v3, "CALL FORWARD INTERROGATION"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v2, v6, v3, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onQueryCfComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 522
    :cond_6
    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    invoke-direct {v2, v6, v3, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onQueryComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 488
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method processCode()V
    .locals 30

    .prologue
    .line 1120
    const-string v4, "ro.csc.sales_code"

    const-string v10, "NONE"

    invoke-static {v4, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1122
    .local v29, "salesCode":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMmiErrorMsg()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1123
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->setMmiErrorMsg(Ljava/lang/String;)V

    .line 1125
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isShortCode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1126
    const-string v4, "GsmMmiCode"

    const-string v10, "isShortCode"

    invoke-static {v4, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    .line 1410
    :goto_0
    return-void

    .line 1129
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1131
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v10, "Invalid or Unsupported MMI Code"

    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1401
    :catch_0
    move-exception v22

    .line 1402
    .local v22, "exc":Ljava/lang/RuntimeException;
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1403
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v10, "CscFeature_RIL_CallUssdException"

    invoke-virtual {v4, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1405
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v10, 0x104093a

    invoke-virtual {v4, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1408
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto :goto_0

    .line 1132
    .end local v22    # "exc":Ljava/lang/RuntimeException;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isSsCode()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->isImsRegistered()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isRequiredToRouteCS()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v10, "CscFeature_RIL_RerouteSsToSip"

    invoke-virtual {v4, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "TLA"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const-string v4, "403"

    const-string v10, "ril.sip_forwarded_ss"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1135
    const-string v4, "GsmMmiCode"

    const-string v10, "Reroute SS to SIP(TMO)"

    invoke-static {v4, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    const-string v4, "ril.sip_forwarded_ss"

    const-string v10, "1"

    invoke-static {v4, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1138
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v10, "30"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1139
    const-string v4, "GsmMmiCode"

    const-string v10, "is CLIP"

    invoke-static {v4, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1141
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCLIP(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1144
    :cond_5
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v10, "Invalid or Unsupported MMI Code"

    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1146
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v10, "300"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1147
    const-string v4, "GsmMmiCode"

    const-string v10, "is CNAP"

    invoke-static {v4, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCNAP(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1150
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v10, "31"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1151
    const-string v4, "GsmMmiCode"

    const-string v10, "is CLIR"

    invoke-static {v4, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1153
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v10, "CscFeature_RIL_CallNexti"

    invoke-virtual {v4, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "44010"

    const-string v10, "gsm.sim.operator.numeric"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1155
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1156
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v10, 0x104008b

    invoke-virtual {v4, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1157
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto/16 :goto_0

    .line 1159
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x1

    const/4 v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-interface {v4, v10, v12}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1162
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1163
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v10, "CscFeature_RIL_CallNexti"

    invoke-virtual {v4, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "44010"

    const-string v10, "gsm.sim.operator.numeric"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1165
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1166
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v10, 0x104008b

    invoke-virtual {v4, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1167
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto/16 :goto_0

    .line 1169
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x2

    const/4 v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-interface {v4, v10, v12}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1172
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1173
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1176
    :cond_c
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v10, "Invalid or Unsupported MMI Code"

    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1178
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1179
    const-string v4, "GsmMmiCode"

    const-string v10, "is CF"

    invoke-static {v4, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    .line 1182
    .local v8, "dialingNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v7

    .line 1183
    .local v7, "serviceClass":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->scToCallForwardReason(Ljava/lang/String;)I

    move-result v6

    .line 1184
    .local v6, "reason":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSic:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToTime(Ljava/lang/String;)I

    move-result v9

    .line 1186
    .local v9, "time":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1188
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mQueryCfClass:I

    .line 1190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v4, v6, v7, v8, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1196
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1201
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1202
    const/4 v5, 0x1

    .line 1203
    .local v5, "cfAction":I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsCallFwdReg:Z

    .line 1218
    :goto_2
    const/16 v20, 0x0

    .line 1219
    .local v20, "bIsSupportVoLTECmcc":Z
    const-string v4, "CMCC"

    const-string v10, "EUR"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "CHM-"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v12, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v10, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1221
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v10, "voicecall_type"

    const/4 v12, 0x1

    invoke-static {v4, v10, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1b

    const/16 v20, 0x1

    .line 1222
    :goto_3
    const-string v4, "GsmMmiCode"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bIsSupportVoLTECmcc - "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v10, "TGY"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v10, "BRI"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_11
    if-eqz v20, :cond_1d

    .line 1229
    :cond_12
    const/16 v21, -0x1

    .line 1230
    .local v21, "enableDesiredIfCfu":I
    if-eqz v6, :cond_13

    const/4 v4, 0x4

    if-ne v6, v4, :cond_15

    .line 1232
    :cond_13
    const/4 v4, 0x1

    if-eq v5, v4, :cond_14

    const/4 v4, 0x3

    if-ne v5, v4, :cond_1c

    :cond_14
    const/16 v21, 0x1

    .line 1236
    :cond_15
    :goto_4
    const-string v4, "GsmMmiCode"

    const-string v10, "is CF setCallForward"

    invoke-static {v4, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, p0

    invoke-virtual {v0, v10, v7, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1205
    .end local v5    # "cfAction":I
    .end local v20    # "bIsSupportVoLTECmcc":Z
    .end local v21    # "enableDesiredIfCfu":I
    :cond_16
    const/4 v5, 0x3

    .line 1206
    .restart local v5    # "cfAction":I
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsCallFwdReg:Z

    goto/16 :goto_2

    .line 1208
    .end local v5    # "cfAction":I
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1209
    const/4 v5, 0x0

    .restart local v5    # "cfAction":I
    goto/16 :goto_2

    .line 1210
    .end local v5    # "cfAction":I
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isRegister()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1211
    const/4 v5, 0x3

    .restart local v5    # "cfAction":I
    goto/16 :goto_2

    .line 1212
    .end local v5    # "cfAction":I
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isErasure()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1213
    const/4 v5, 0x4

    .restart local v5    # "cfAction":I
    goto/16 :goto_2

    .line 1215
    .end local v5    # "cfAction":I
    :cond_1a
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v10, "invalid action"

    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1221
    .restart local v5    # "cfAction":I
    .restart local v20    # "bIsSupportVoLTECmcc":Z
    :cond_1b
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 1232
    .restart local v21    # "enableDesiredIfCfu":I
    :cond_1c
    const/16 v21, 0x0

    goto :goto_4

    .line 1243
    .end local v21    # "enableDesiredIfCfu":I
    :cond_1d
    if-eqz v6, :cond_1e

    const/4 v4, 0x4

    if-ne v6, v4, :cond_21

    :cond_1e
    and-int/lit8 v4, v7, 0x1

    if-nez v4, :cond_1f

    if-nez v7, :cond_21

    :cond_1f
    const/16 v24, 0x1

    .line 1249
    .local v24, "isSettingUnconditionalVoice":I
    :goto_5
    const/4 v4, 0x1

    if-eq v5, v4, :cond_20

    const/4 v4, 0x3

    if-ne v5, v4, :cond_22

    :cond_20
    const/16 v23, 0x1

    .line 1253
    .local v23, "isEnableDesired":I
    :goto_6
    const-string v4, "GsmMmiCode"

    const-string v10, "is CF setCallForward"

    invoke-static {v4, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v23

    move-object/from16 v3, p0

    invoke-virtual {v0, v10, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1243
    .end local v23    # "isEnableDesired":I
    .end local v24    # "isSettingUnconditionalVoice":I
    :cond_21
    const/16 v24, 0x0

    goto :goto_5

    .line 1249
    .restart local v24    # "isSettingUnconditionalVoice":I
    :cond_22
    const/16 v23, 0x0

    goto :goto_6

    .line 1261
    .end local v5    # "cfAction":I
    .end local v6    # "reason":I
    .end local v7    # "serviceClass":I
    .end local v8    # "dialingNumber":Ljava/lang/String;
    .end local v9    # "time":I
    .end local v20    # "bIsSupportVoLTECmcc":Z
    .end local v24    # "isSettingUnconditionalVoice":I
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 1265
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    .line 1266
    .local v13, "password":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v7

    .line 1267
    .restart local v7    # "serviceClass":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1269
    .local v11, "facility":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1270
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v4, v11, v13, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1272
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v4

    if-nez v4, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1273
    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v10, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v12

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    move v14, v7

    invoke-interface/range {v10 .. v15}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1276
    :cond_26
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v10, "Invalid or Unsupported MMI Code"

    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1279
    .end local v7    # "serviceClass":I
    .end local v11    # "facility":Ljava/lang/String;
    .end local v13    # "password":Ljava/lang/String;
    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v4, :cond_2b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v10, "03"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1286
    .local v16, "oldPwd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSic:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1287
    .local v17, "newPwd":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v4

    if-nez v4, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isRegister()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1289
    :cond_28
    const-string v4, "**"

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    .line 1291
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    if-nez v4, :cond_29

    .line 1293
    const-string v11, "AB"

    .line 1298
    .restart local v11    # "facility":Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v14, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPwd:Ljava/lang/String;

    move-object/from16 v18, v0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    move-object v15, v11

    invoke-interface/range {v14 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1295
    .end local v11    # "facility":Ljava/lang/String;
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "facility":Ljava/lang/String;
    goto :goto_7

    .line 1310
    .end local v11    # "facility":Ljava/lang/String;
    :cond_2a
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v10, "Invalid or Unsupported MMI Code"

    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1313
    .end local v16    # "oldPwd":Ljava/lang/String;
    .end local v17    # "newPwd":Ljava/lang/String;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v4, :cond_31

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v10, "43"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1315
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v7

    .line 1317
    .restart local v7    # "serviceClass":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v4

    if-nez v4, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1318
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyFeatures;->alwaysTerminalbasedCW(I)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1319
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v10

    const/4 v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v4, v10, v7, v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCallWaiting(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1322
    :cond_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v10

    const/4 v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-interface {v4, v10, v7, v12}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1325
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1326
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyFeatures;->alwaysTerminalbasedCW(I)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1327
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v10, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v4, v7, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallWaiting(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1330
    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v4, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1334
    :cond_30
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v10, "Invalid or Unsupported MMI Code"

    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1336
    .end local v7    # "serviceClass":I
    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPinPukCommand()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 1345
    .local v27, "oldPinOrPuk":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 1346
    .local v25, "newPinOrPuk":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v28

    .line 1348
    .local v28, "pinLen":I
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v26

    .line 1350
    .local v26, "oldPinLen":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isRegister()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 1351
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSic:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 1353
    const v4, 0x1040096

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->handlePasswordError(I)V

    goto/16 :goto_0

    .line 1355
    :cond_32
    const/4 v4, 0x4

    move/from16 v0, v26

    if-lt v0, v4, :cond_33

    const/16 v4, 0x8

    move/from16 v0, v26

    if-gt v0, v4, :cond_33

    const/4 v4, 0x4

    move/from16 v0, v28

    if-lt v0, v4, :cond_33

    const/16 v4, 0x8

    move/from16 v0, v28

    if-le v0, v4, :cond_34

    .line 1358
    :cond_33
    const v4, 0x1040097

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->handlePasswordError(I)V

    goto/16 :goto_0

    .line 1359
    :cond_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v10, "04"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v4, :cond_35

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v4

    sget-object v10, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v4, v10, :cond_35

    .line 1363
    const v4, 0x1040099

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->handlePasswordError(I)V

    goto/16 :goto_0

    .line 1365
    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v10, "04"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v4, :cond_36

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccLockEnabled()Z

    move-result v4

    if-nez v4, :cond_36

    .line 1369
    const v4, 0x104009b

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->handlePasswordError(I)V

    goto/16 :goto_0

    .line 1371
    :cond_36
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v4, :cond_3b

    .line 1372
    const-string v4, "GsmMmiCode"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "process mmi service code using UiccApp sc="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v10, "04"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1376
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1, v10}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1378
    :cond_37
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v10, "042"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 1379
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1, v10}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1381
    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v10, "05"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1382
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1, v10}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1384
    :cond_39
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v10, "052"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 1385
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1, v10}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1388
    :cond_3a
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "uicc unsupported service code="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1391
    :cond_3b
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v10, "No application mUiccApplicaiton is null"

    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1394
    :cond_3c
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ivalid register/action="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1396
    .end local v25    # "newPinOrPuk":Ljava/lang/String;
    .end local v26    # "oldPinLen":I
    .end local v27    # "oldPinOrPuk":Ljava/lang/String;
    .end local v28    # "pinLen":I
    :cond_3d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz v4, :cond_3e

    .line 1397
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1399
    :cond_3e
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v10, "Invalid or Unsupported MMI Code"

    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1407
    .restart local v22    # "exc":Ljava/lang/RuntimeException;
    :cond_3f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v10, 0x104008b

    invoke-virtual {v4, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    goto/16 :goto_1
.end method

.method processSsData(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "data"    # Landroid/os/AsyncResult;

    .prologue
    .line 456
    const-string v2, "GsmMmiCode"

    const-string v3, "In processSsData"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsSsInfo:Z

    .line 460
    :try_start_0
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gsm/SsData;

    .line 461
    .local v1, "ssData":Lcom/android/internal/telephony/gsm/SsData;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->parseSsData(Lcom/android/internal/telephony/gsm/SsData;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 467
    .end local v1    # "ssData":Lcom/android/internal/telephony/gsm/SsData;
    :goto_0
    return-void

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, "ex":Ljava/lang/ClassCastException;
    const-string v2, "GsmMmiCode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class Cast Exception in parsing SS Data : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 464
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 465
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "GsmMmiCode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Null Pointer Exception in parsing SS Data : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method sendEncodedUssd([BII)V
    .locals 2
    .param p1, "ussdMessage"    # [B
    .param p2, "length"    # I
    .param p3, "dcsCode"    # I

    .prologue
    .line 2949
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsPendingUSSD:Z

    .line 2956
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendEncodedUSSD([BIILandroid/os/Message;)V

    .line 2958
    return-void
.end method

.method sendUssd(Ljava/lang/String;)V
    .locals 2
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .prologue
    .line 1495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsPendingUSSD:Z

    .line 1502
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendUSSD(Ljava/lang/String;Landroid/os/Message;)V

    .line 1504
    return-void
.end method

.method public setVoiceCallForwardingFlag(Z)V
    .locals 3
    .param p1, "cffEnabled"    # Z

    .prologue
    .line 2658
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 2659
    const-string v0, "GsmMmiCode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIccRecords is not null, set cffEnabled :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 2662
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2518
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GsmMmiCode {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2520
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2521
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2522
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2523
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sia="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2524
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sib="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2525
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSic:Ljava/lang/String;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2527
    :cond_4
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    .line 2528
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " poundString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2529
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " dialingNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2530
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPwd:Ljava/lang/String;

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " pwd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2533
    :cond_7
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2534
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
