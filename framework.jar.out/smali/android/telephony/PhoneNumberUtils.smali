.class public Landroid/telephony/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    }
.end annotation


# static fields
.field private static final CCC_LENGTH:I

.field private static final CLIDIGITS_KEY:Ljava/lang/String; = "Clidigits"

.field private static final CLIDIGITS_PREFERENCES_NAME:Ljava/lang/String; = "clidigits.preferences_name"

.field private static final CLIR_OFF:Ljava/lang/String; = "#31#"

.field private static final CLIR_ON:Ljava/lang/String; = "*31#"

.field private static final COUNTRY_CALLING_CALL:[Z

.field private static final DBG:Z = false

.field private static final ECC_CATEGORY_Ambulance:I = 0x2

.field private static final ECC_CATEGORY_Cyber_Terror:I = 0x13

.field private static final ECC_CATEGORY_Default_Emergency_Center:I = 0x0

.field private static final ECC_CATEGORY_Drug_Report:I = 0x11

.field private static final ECC_CATEGORY_Fire_Brigade:I = 0x4

.field private static final ECC_CATEGORY_Marine_Guard:I = 0x8

.field private static final ECC_CATEGORY_Mountain_Rescue:I = 0x10

.field private static final ECC_CATEGORY_National_Intelligence_Service_KT:I = 0x7

.field private static final ECC_CATEGORY_National_Intelligence_Service_SKT:I = 0x6

.field private static final ECC_CATEGORY_Normal_Call:I = 0xff

.field private static final ECC_CATEGORY_Police:I = 0x1

.field private static final ECC_CATEGORY_School_Violence:I = 0x12

.field private static final ECC_CATEGORY_Smuggling_Report:I = 0x9

.field private static final ECC_CATEGORY_Spy_Report:I = 0x3

.field public static final FORMAT_JAPAN:I = 0x2

.field public static final FORMAT_KOREA:I = 0x52

.field public static final FORMAT_NANP:I = 0x1

.field public static final FORMAT_UNKNOWN:I = 0x0

.field private static final GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field private static final IP_CALL_PREFIX:Ljava/lang/String; = "ip_call_prefix_sub"

.field private static final KEYPAD_MAP:Landroid/util/SparseIntArray;

.field private static final KOREA_ISO_COUNTRY_CODE:Ljava/lang/String; = "KR"

.field private static final KRNP_STATE_0505_START:I = 0xe

.field private static final KRNP_STATE_AREA_SEOUL:I = 0x6

.field private static final KRNP_STATE_EXCEPT_CASE_1:I = 0xa

.field private static final KRNP_STATE_EXCEPT_CASE_2:I = 0xb

.field private static final KRNP_STATE_NORMAL:I = 0x5

.field private static final KRNP_STATE_PLUS:I = 0x9

.field private static final KRNP_STATE_SHARP:I = 0xd

.field private static final KRNP_STATE_SHARP_NINE:I = 0x8

.field private static final KRNP_STATE_STAR:I = 0xc

.field private static final KRNP_STATE_ZERO_START:I = 0x7

.field static final LOG_TAG:Ljava/lang/String; = "PhoneNumberUtils"

.field private static final MCC_OTA_URI:Landroid/net/Uri;

.field static final MIN_MATCH:I = 0x7

.field static final MIN_MATCH_CHINA:I = 0xb

.field static final MIN_MATCH_HK:I = 0x8

.field static final MIN_MATCH_TW:I = 0x9

.field private static final NANP_COUNTRIES:[Ljava/lang/String;

.field private static final NANP_IDP_STRING:Ljava/lang/String; = "011"

.field private static final NANP_IDP_STRING_00:Ljava/lang/String; = "00"

.field private static final NANP_IDP_STRING_001:Ljava/lang/String; = "001"

.field private static final NANP_IDP_STRING_005:Ljava/lang/String; = "005"

.field private static final NANP_IDP_STRING_00700:Ljava/lang/String; = "00700"

.field private static final NANP_IDP_STRING_010:Ljava/lang/String; = "010"

.field private static final NANP_IDP_STRING_011:Ljava/lang/String; = "011"

.field private static final NANP_LENGTH:I = 0xa

.field private static final NANP_STATE_DASH:I = 0x4

.field private static final NANP_STATE_DIGIT:I = 0x1

.field private static final NANP_STATE_ONE:I = 0x3

.field private static final NANP_STATE_PLUS:I = 0x2

.field public static final OTA_COUNTRY_MCC_KEY:Ljava/lang/String; = "otaCountryMccKey"

.field private static final OTA_COUNTRY_URI:Landroid/net/Uri;

.field public static final PAUSE:C = ','

.field private static final PLUS_SIGN_CHAR:C = '+'

.field private static final PLUS_SIGN_STRING:Ljava/lang/String; = "+"

.field private static final REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

.field public static final TOA_International:I = 0x91

.field public static final TOA_Unknown:I = 0x81

.field public static final WAIT:C = ';'

.field public static final WILD:C = 'N'

.field public static isAssistedDialingNumber:Z

.field private static isCDMARegistered:Z

.field private static isGSMRegistered:Z

.field private static isNANPCountry:Z

.field private static isNBPCDSupported:Z

.field private static isNetRoaming:Z

.field private static isOTANANPCountry:Z

.field private static isOTANBPCDSupported:Z

.field private static mConfigNetworkTypeCapability:Ljava/lang/String;

.field private static mCursor:Landroid/database/Cursor;

.field private static mCursorContry:Landroid/database/Cursor;

.field private static numberLength:I

.field private static otaCountryCountryCode:Ljava/lang/String;

.field private static otaCountryIDDPrefix:Ljava/lang/String;

.field private static otaCountryMCC:Ljava/lang/String;

.field private static otaCountryNDDPrefix:Ljava/lang/String;

.field private static otaCountryName:Ljava/lang/String;

.field private static phoneType:I

.field private static refCountryAreaCode:Ljava/lang/String;

.field private static refCountryCountryCode:Ljava/lang/String;

.field private static refCountryIDDPrefix:Ljava/lang/String;

.field private static refCountryMCC:Ljava/lang/String;

.field private static refCountryNDDPrefix:Ljava/lang/String;

.field private static refCountryName:Ljava/lang/String;

.field private static refCountryNationalNumberLength:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x33

    const/16 v5, 0x32

    const/16 v4, 0x39

    const/16 v3, 0x37

    const/4 v2, 0x0

    .line 130
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->mConfigNetworkTypeCapability:Ljava/lang/String;

    .line 136
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryName:Ljava/lang/String;

    .line 137
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    .line 138
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    .line 139
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    .line 140
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryMCC:Ljava/lang/String;

    .line 141
    sput-boolean v2, Landroid/telephony/PhoneNumberUtils;->isNANPCountry:Z

    .line 142
    sput-boolean v2, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    .line 144
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    .line 146
    sput-boolean v2, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    .line 147
    sput-boolean v2, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    .line 150
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryName:Ljava/lang/String;

    .line 151
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    .line 152
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    .line 153
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    .line 154
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    .line 155
    sput-boolean v2, Landroid/telephony/PhoneNumberUtils;->isOTANANPCountry:Z

    .line 156
    sput-boolean v2, Landroid/telephony/PhoneNumberUtils;->isOTANBPCDSupported:Z

    .line 157
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    .line 159
    sput v2, Landroid/telephony/PhoneNumberUtils;->phoneType:I

    .line 160
    sput v2, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    .line 162
    const-string v0, "content://assisteddialing/refcountry"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    .line 163
    const-string v0, "content://assisteddialing/mcc_otalookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    .line 164
    const-string v0, "content://assisteddialing/ota_country"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->OTA_COUNTRY_URI:Landroid/net/Uri;

    .line 167
    sput-boolean v2, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 168
    sput-boolean v2, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    .line 183
    const-string v0, "[\\+]?[0-9.-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 1390
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "US"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "CA"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "AS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "AI"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "BS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BB"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "BM"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "VG"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "KY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DM"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "DO"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "GD"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GU"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "JM"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "PR"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "MS"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "MP"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "KN"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "LC"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "VC"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TT"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TC"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "VI"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    .line 2814
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    .line 2816
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x61

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x62

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x63

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2817
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x41

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x43

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2819
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2820
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x44

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x45

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2822
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x67

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x68

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x69

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2823
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x47

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x48

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x49

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2825
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2826
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2828
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6d

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6e

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2829
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4d

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4e

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2831
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x70

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x72

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x73

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2832
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x50

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x51

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x52

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x53

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2834
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x74

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x75

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x76

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2835
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x54

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x55

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x56

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2837
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x77

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x78

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x79

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x7a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2838
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x57

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x58

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x59

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 3668
    const/16 v0, 0x64

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    .line 3680
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    array-length v0, v0

    sput v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    return-void

    .line 3668
    :array_0
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3703
    return-void
.end method

.method public static DocomoNetworkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1256
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1257
    .local v0, "networkPortion":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->DocomoNumberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method private static DocomoNumberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B
    .locals 18
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "includeLength"    # Z

    .prologue
    .line 1327
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v9

    .line 1328
    .local v9, "numberLenReal":I
    move v8, v9

    .line 1329
    .local v8, "numberLenEffective":I
    const/16 v15, 0x2b

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    const/4 v4, 0x1

    .line 1330
    .local v4, "hasPlus":Z
    :goto_0
    const/16 v15, 0x23

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    const/4 v5, 0x1

    .line 1331
    .local v5, "hasSharp":Z
    :goto_1
    const/16 v15, 0x2a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    const/4 v6, 0x1

    .line 1333
    .local v6, "hasStar":Z
    :goto_2
    if-eqz v4, :cond_0

    add-int/lit8 v8, v8, -0x1

    .line 1335
    :cond_0
    if-nez v8, :cond_4

    const/4 v12, 0x0

    .line 1368
    :goto_3
    return-object v12

    .line 1329
    .end local v4    # "hasPlus":Z
    .end local v5    # "hasSharp":Z
    .end local v6    # "hasStar":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1330
    .restart local v4    # "hasPlus":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 1331
    .restart local v5    # "hasSharp":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 1337
    .restart local v6    # "hasStar":Z
    :cond_4
    add-int/lit8 v15, v8, 0x1

    div-int/lit8 v13, v15, 0x2

    .line 1338
    .local v13, "resultLen":I
    const/4 v3, 0x1

    .line 1339
    .local v3, "extraBytes":I
    if-eqz p1, :cond_5

    add-int/lit8 v3, v3, 0x1

    .line 1340
    :cond_5
    add-int/2addr v13, v3

    .line 1342
    new-array v12, v13, [B

    .line 1344
    .local v12, "result":[B
    const/4 v2, 0x0

    .line 1345
    .local v2, "digitCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    if-ge v7, v9, :cond_8

    .line 1346
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1347
    .local v1, "c":C
    const/16 v15, 0x2b

    if-ne v1, v15, :cond_6

    .line 1345
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1348
    :cond_6
    and-int/lit8 v15, v2, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    const/4 v14, 0x4

    .line 1349
    .local v14, "shift":I
    :goto_6
    shr-int/lit8 v15, v2, 0x1

    add-int/2addr v15, v3

    aget-byte v16, v12, v15

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->charToBCD(C)I

    move-result v17

    and-int/lit8 v17, v17, 0xf

    shl-int v17, v17, v14

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    or-int v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v12, v15

    .line 1350
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1348
    .end local v14    # "shift":I
    :cond_7
    const/4 v14, 0x0

    goto :goto_6

    .line 1354
    .end local v1    # "c":C
    :cond_8
    and-int/lit8 v15, v2, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    shr-int/lit8 v15, v2, 0x1

    add-int/2addr v15, v3

    aget-byte v16, v12, v15

    move/from16 v0, v16

    or-int/lit16 v0, v0, 0xf0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v12, v15

    .line 1356
    :cond_9
    const/4 v10, 0x0

    .line 1357
    .local v10, "offset":I
    if-eqz p1, :cond_a

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "offset":I
    .local v11, "offset":I
    add-int/lit8 v15, v13, -0x1

    int-to-byte v15, v15

    aput-byte v15, v12, v10

    move v10, v11

    .line 1358
    .end local v11    # "offset":I
    .restart local v10    # "offset":I
    :cond_a
    if-eqz v4, :cond_d

    const/16 v15, 0x91

    :goto_7
    int-to-byte v15, v15

    aput-byte v15, v12, v10

    .line 1361
    if-nez v5, :cond_b

    if-eqz v6, :cond_c

    .line 1362
    :cond_b
    aget-byte v15, v12, v10

    and-int/lit16 v15, v15, 0xf0

    int-to-byte v15, v15

    aput-byte v15, v12, v10

    .line 1366
    :cond_c
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TOA: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-byte v16, v12, v10

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1358
    :cond_d
    const/16 v15, 0x81

    goto :goto_7
.end method

.method private static KorMsgbcdToChar(B)C
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 1183
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 1184
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    .line 1191
    :goto_0
    return v0

    .line 1185
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 1191
    const/4 v0, 0x0

    goto :goto_0

    .line 1186
    :pswitch_0
    const/16 v0, 0x2a

    goto :goto_0

    .line 1187
    :pswitch_1
    const/16 v0, 0x23

    goto :goto_0

    .line 1188
    :pswitch_2
    const/16 v0, 0x61

    goto :goto_0

    .line 1189
    :pswitch_3
    const/16 v0, 0x62

    goto :goto_0

    .line 1190
    :pswitch_4
    const/16 v0, 0x63

    goto :goto_0

    .line 1185
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static addTtsSpan(Landroid/text/Spannable;II)V
    .locals 2
    .param p0, "s"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "endExclusive"    # I

    .prologue
    .line 3092
    invoke-interface {p0, p1, p2}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->createTtsSpan(Ljava/lang/String;)Landroid/text/style/TtsSpan;

    move-result-object v0

    const/16 v1, 0x21

    invoke-interface {p0, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3096
    return-void
.end method

.method private static appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "dialableIndex"    # I
    .param p1, "origStr"    # Ljava/lang/String;
    .param p2, "dialStr"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 3528
    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    .line 3529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3530
    .local v1, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3531
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3538
    .end local v1    # "ret":Ljava/lang/StringBuilder;
    .local v2, "retStr":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 3535
    .end local v2    # "retStr":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3536
    .local v0, "nonDigitStr":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "retStr":Ljava/lang/String;
    goto :goto_0
.end method

.method public static assistedDialFromContactList(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 27
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 4721
    :try_start_0
    const-string v5, "PhoneNumberUtils"

    const-string v6, "Called assistedDialFromContactList : "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4722
    if-eqz p0, :cond_0

    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4723
    :cond_0
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5260
    .end local p0    # "phoneNumber":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 4727
    .restart local p0    # "phoneNumber":Ljava/lang/String;
    :cond_1
    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4728
    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4730
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 4731
    .local v11, "ch":C
    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v5

    if-nez v5, :cond_2

    const/16 v5, 0x2b

    if-ne v5, v11, :cond_3

    .line 4733
    :cond_2
    const-string v5, "PhoneNumberUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Assisted Dialing PhoneNumber is OK: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4742
    invoke-static/range {p0 .. p1}, Landroid/telephony/PhoneNumberUtils;->retrieveAssistedParams(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 4744
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5257
    .end local v11    # "ch":C
    :catch_0
    move-exception v12

    .line 5258
    .local v12, "e":Ljava/lang/Exception;
    const-string v5, "PhoneNumberUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot assist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5259
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto :goto_0

    .line 4737
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v11    # "ch":C
    :cond_3
    :try_start_1
    const-string v5, "PhoneNumberUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Assisted Dialing PhoneNumber is FAILED: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4738
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto :goto_0

    .line 4749
    :cond_4
    new-instance v17, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4751
    .local v17, "newPhoneNumber":Ljava/lang/StringBuilder;
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    .line 4752
    .local v25, "numberBeginsWithRefCountryNDDPrefix":Z
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    .line 4753
    .local v24, "numberBeginsWithRefCountryIDDPrefix":Z
    const-string v5, "011"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    const/16 v21, 0x1

    .line 4754
    .local v21, "numberBeginsWithNonUSIDDPrefix":Z
    :goto_1
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    .line 4755
    .local v22, "numberBeginsWithOTAIDDPrefix":Z
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    .line 4758
    .local v23, "numberBeginsWithOTANDDPrefix":Z
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 4760
    .local v10, "c":C
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->checkAssistedDialingTestmode(Landroid/content/Context;)V

    .line 4762
    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    if-eqz v5, :cond_2d

    .line 4765
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 4767
    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    if-eqz v5, :cond_5

    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isOTANANPCountry:Z

    if-eqz v5, :cond_13

    .line 4770
    :cond_5
    if-eqz v21, :cond_e

    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_e

    const/16 v5, 0x31

    if-eq v5, v10, :cond_e

    .line 4772
    const/4 v15, 0x0

    .line 4773
    .local v15, "match":Z
    const/4 v13, 0x0

    .line 4779
    .local v13, "findIDDLen":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4781
    .local v2, "iddcr":Landroid/content/ContentResolver;
    sget-object v3, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    sput-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    .line 4782
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4784
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4785
    .local v3, "ContryCode":Landroid/content/ContentResolver;
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    sput-object v5, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    .line 4786
    :goto_2
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_7

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_7

    .line 4788
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4789
    :goto_3
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    if-eqz v5, :cond_6

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_6

    .line 4791
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    const/4 v7, 0x6

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 4793
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    .line 4794
    const/4 v15, 0x1

    .line 4800
    :cond_6
    if-eqz v15, :cond_c

    .line 4807
    :cond_7
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    if-eqz v5, :cond_8

    .line 4809
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 4811
    :cond_8
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_9

    .line 4813
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 4816
    :cond_9
    if-nez v15, :cond_d

    .line 4820
    const-string v5, "011"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4821
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4823
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing1-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4824
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4825
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4753
    .end local v2    # "iddcr":Landroid/content/ContentResolver;
    .end local v3    # "ContryCode":Landroid/content/ContentResolver;
    .end local v10    # "c":C
    .end local v13    # "findIDDLen":I
    .end local v15    # "match":Z
    .end local v21    # "numberBeginsWithNonUSIDDPrefix":Z
    .end local v22    # "numberBeginsWithOTAIDDPrefix":Z
    .end local v23    # "numberBeginsWithOTANDDPrefix":Z
    :cond_a
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 4797
    .restart local v2    # "iddcr":Landroid/content/ContentResolver;
    .restart local v3    # "ContryCode":Landroid/content/ContentResolver;
    .restart local v10    # "c":C
    .restart local v13    # "findIDDLen":I
    .restart local v15    # "match":Z
    .restart local v21    # "numberBeginsWithNonUSIDDPrefix":Z
    .restart local v22    # "numberBeginsWithOTAIDDPrefix":Z
    .restart local v23    # "numberBeginsWithOTANDDPrefix":Z
    :cond_b
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    .line 4804
    :cond_c
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    .line 4829
    :cond_d
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4830
    const/4 v5, 0x0

    const-string v6, "011"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v13, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4832
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing1-2] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4833
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4834
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4836
    .end local v2    # "iddcr":Landroid/content/ContentResolver;
    .end local v3    # "ContryCode":Landroid/content/ContentResolver;
    .end local v13    # "findIDDLen":I
    .end local v15    # "match":Z
    :cond_e
    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    if-ne v5, v6, :cond_12

    .line 4838
    if-eqz v25, :cond_10

    .line 4840
    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    if-eqz v5, :cond_f

    .line 4843
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4844
    const/4 v5, 0x0

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "+"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4846
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing4-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4847
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4848
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4854
    :cond_f
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing4-2] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4855
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto/16 :goto_0

    .line 4859
    :cond_10
    if-eqz v23, :cond_12

    .line 4861
    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    if-eqz v5, :cond_11

    .line 4864
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4865
    const/4 v5, 0x0

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "+"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4867
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing4-3] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4868
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4869
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4875
    :cond_11
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing4-4] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4876
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto/16 :goto_0

    .line 4882
    :cond_12
    if-eqz v24, :cond_25

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 4884
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    const-string v6, "011"

    if-ne v5, v6, :cond_25

    .line 4887
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing5-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4888
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto/16 :goto_0

    .line 4896
    :cond_13
    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v5, v6, :cond_19

    .line 4898
    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_16

    .line 4900
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 4902
    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    if-eqz v5, :cond_14

    .line 4905
    const-string v5, "+"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4906
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4907
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4909
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing2-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4910
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4911
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4916
    :cond_14
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4917
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4918
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4920
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing2-2] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4921
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4922
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4929
    :cond_15
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing2-3] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4930
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto/16 :goto_0

    .line 4934
    :cond_16
    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    if-ne v5, v6, :cond_19

    .line 4936
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 4938
    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    if-eqz v5, :cond_17

    .line 4941
    const-string v5, "+"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4942
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4943
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4944
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4946
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing3-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4947
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4948
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4953
    :cond_17
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4954
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4955
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4956
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4958
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing3-2] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4959
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4960
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4967
    :cond_18
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing3-3] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4968
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto/16 :goto_0

    .line 4974
    :cond_19
    const/4 v14, 0x0

    .local v14, "iddPrefix":Ljava/lang/String;
    const/16 v18, 0x0

    .line 4975
    .local v18, "numberAfterIDDPrefix":Ljava/lang/String;
    if-nez v24, :cond_1a

    if-eqz v22, :cond_20

    .line 4977
    :cond_1a
    const/4 v5, 0x1

    move/from16 v0, v24

    if-ne v5, v0, :cond_1b

    .line 4979
    sget-object v14, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    .line 4980
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 4989
    :goto_4
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 4991
    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    if-eqz v5, :cond_1c

    .line 4994
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4995
    const/4 v5, 0x0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v6

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    const-string v7, "+"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4997
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing6-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4998
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4999
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4984
    :cond_1b
    sget-object v14, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    .line 4985
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    goto :goto_4

    .line 5004
    :cond_1c
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5005
    const/4 v5, 0x0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v6

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5007
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing6-2] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5008
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5009
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 5014
    :cond_1d
    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    if-eqz v5, :cond_1e

    .line 5017
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5018
    const/4 v5, 0x0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "+"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5020
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing6-3] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5021
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5022
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 5026
    :cond_1e
    if-eqz v24, :cond_1f

    .line 5029
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5030
    const/4 v5, 0x0

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5032
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing6-4] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5033
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5034
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 5036
    :cond_1f
    if-eqz v22, :cond_25

    .line 5040
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing6-5] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5041
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto/16 :goto_0

    .line 5049
    :cond_20
    if-nez v25, :cond_21

    if-eqz v23, :cond_25

    :cond_21
    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    if-ne v5, v6, :cond_25

    .line 5052
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_24

    .line 5054
    const/16 v16, 0x0

    .line 5055
    .local v16, "nddPrefix":Ljava/lang/String;
    const/4 v5, 0x1

    move/from16 v0, v25

    if-ne v5, v0, :cond_22

    .line 5057
    sget-object v16, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    .line 5063
    :goto_5
    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    if-eqz v5, :cond_23

    .line 5066
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5067
    const/4 v5, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "+"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5069
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing7-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5070
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5071
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 5061
    :cond_22
    sget-object v16, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    goto :goto_5

    .line 5076
    :cond_23
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    .line 5077
    .local v26, "temp":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5078
    const/4 v5, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v5, v6, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5080
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing7-2] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5081
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5082
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 5089
    .end local v16    # "nddPrefix":Ljava/lang/String;
    .end local v26    # "temp":Ljava/lang/String;
    :cond_24
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing7-3] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5090
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto/16 :goto_0

    .line 5099
    .end local v14    # "iddPrefix":Ljava/lang/String;
    .end local v18    # "numberAfterIDDPrefix":Ljava/lang/String;
    :cond_25
    const/16 v5, 0x2b

    if-ne v5, v10, :cond_2d

    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    if-nez v5, :cond_2d

    .line 5101
    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 5102
    .local v19, "numberAfterPlus":Ljava/lang/String;
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    .line 5104
    .local v20, "numberAfterPlusContainsOTACountryCode":Z
    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    if-eqz v5, :cond_27

    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isOTANANPCountry:Z

    if-nez v5, :cond_27

    .line 5107
    if-eqz v20, :cond_26

    .line 5109
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5110
    const/4 v5, 0x0

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5112
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing8-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5115
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5116
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 5120
    :cond_26
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5121
    const/4 v5, 0x0

    const/4 v6, 0x1

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5123
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing8-2] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5126
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5127
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 5133
    :cond_27
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xb

    if-lt v5, v6, :cond_2d

    .line 5135
    const/16 v5, 0xb

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_28

    const/16 v5, 0x31

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_28

    .line 5139
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing9-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5140
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto/16 :goto_0

    .line 5144
    :cond_28
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 5145
    .local v4, "pluscr":Landroid/content/ContentResolver;
    const/4 v15, 0x0

    .line 5146
    .restart local v15    # "match":Z
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    sput-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    .line 5147
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5151
    :goto_6
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_29

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_29

    .line 5153
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 5155
    const/4 v15, 0x1

    .line 5161
    :cond_29
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_2a

    if-nez v15, :cond_2c

    .line 5165
    :cond_2a
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing9-2] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5166
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto/16 :goto_0

    .line 5158
    :cond_2b
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_6

    .line 5169
    :cond_2c
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v5

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x6

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_2d

    .line 5171
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 5173
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5174
    const/4 v5, 0x0

    const/4 v6, 0x1

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5176
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing9-3] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5177
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5178
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 5185
    .end local v4    # "pluscr":Landroid/content/ContentResolver;
    .end local v15    # "match":Z
    .end local v19    # "numberAfterPlus":Ljava/lang/String;
    .end local v20    # "numberAfterPlusContainsOTACountryCode":Z
    :cond_2d
    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    if-eqz v5, :cond_32

    .line 5187
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 5189
    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v5, v6, :cond_2f

    .line 5191
    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_2e

    .line 5194
    const-string v5, "+"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5195
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5196
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5198
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing10-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5199
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5200
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 5202
    :cond_2e
    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    if-ne v5, v6, :cond_32

    .line 5204
    const-string v5, "+"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5205
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5206
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5207
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5209
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing10-2] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5210
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5211
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 5216
    :cond_2f
    if-eqz v24, :cond_30

    .line 5219
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5220
    const/4 v5, 0x0

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "+"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5222
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing11-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5223
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5224
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 5226
    :cond_30
    if-eqz v25, :cond_32

    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    if-ne v5, v6, :cond_32

    .line 5228
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    .line 5229
    .restart local v26    # "temp":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5230
    const/4 v5, 0x0

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v5, v6, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5232
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing11-2] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5233
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5234
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 5237
    .end local v26    # "temp":Ljava/lang/String;
    :cond_31
    const-string v5, "+011"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 5238
    const-string v5, "+"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5239
    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5240
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5241
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 5246
    :cond_32
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing13-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5247
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static assistedDialFromDialPad(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 15
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 5459
    :try_start_0
    const-string v12, "PhoneNumberUtils"

    const-string v13, "Called assistedDialFromDialPad : "

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5461
    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 5462
    :cond_0
    const/4 v12, 0x0

    sput-boolean v12, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5642
    .end local p0    # "phoneNumber":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 5466
    .restart local p0    # "phoneNumber":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5467
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5469
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 5470
    .local v1, "ch":C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v12

    if-nez v12, :cond_2

    const/16 v12, 0x2b

    if-ne v12, v1, :cond_3

    .line 5472
    :cond_2
    const-string v12, "PhoneNumberUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Assisted Dialing PhoneNumber is OK: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5481
    invoke-static/range {p0 .. p1}, Landroid/telephony/PhoneNumberUtils;->retrieveAssistedParams(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 5482
    const-string v12, "PhoneNumberUtils"

    const-string v13, "Problem in retrieving Assisted db params, Returning original number"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5483
    const/4 v12, 0x0

    sput-boolean v12, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5639
    .end local v1    # "ch":C
    :catch_0
    move-exception v2

    .line 5640
    .local v2, "e":Ljava/lang/Exception;
    const-string v12, "PhoneNumberUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot assist: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5641
    const/4 v12, 0x0

    sput-boolean v12, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto :goto_0

    .line 5476
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "ch":C
    :cond_3
    :try_start_1
    const-string v12, "PhoneNumberUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Assisted Dialing PhoneNumber is FAILED: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5477
    const/4 v12, 0x0

    sput-boolean v12, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto :goto_0

    .line 5488
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v12, 0x80

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5490
    .local v5, "newPhoneNumber":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "assisted_dialing"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    const/4 v3, 0x1

    .line 5491
    .local v3, "enableAssistedDialing":Z
    :goto_1
    if-eqz v3, :cond_7

    sget-object v12, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {p0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v11, 0x1

    .line 5492
    .local v11, "numberBeginsWithRefCountryIDDPrefixWithAdEnabled":Z
    :goto_2
    sget-object v12, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {p0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    .line 5494
    .local v10, "numberBeginsWithOTAIDDPrefix":Z
    const-string v12, "PhoneNumberUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "enableAssistedDialing: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", numberBeginsWithRefCountryIDDPrefixWithAdEnabled: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", numberBeginsWithOTAIDDPrefix: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5498
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->checkAssistedDialingTestmode(Landroid/content/Context;)V

    .line 5500
    sget-boolean v12, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    if-eqz v12, :cond_16

    .line 5502
    sget-boolean v12, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    if-eqz v12, :cond_5

    sget-boolean v12, Landroid/telephony/PhoneNumberUtils;->isOTANANPCountry:Z

    if-eqz v12, :cond_9

    .line 5505
    :cond_5
    const-string v12, "011"

    invoke-virtual {p0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    const/4 v9, 0x1

    .line 5506
    .local v9, "numberBeginsWithNonUSIDDPrefix":Z
    :goto_3
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 5507
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 5509
    if-eqz v9, :cond_16

    sget v12, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    const/16 v13, 0xb

    if-lt v12, v13, :cond_16

    const/16 v12, 0x31

    if-eq v12, v0, :cond_16

    .line 5511
    const-string v12, "011"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5512
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5514
    const-string v12, "PhoneNumberUtils"

    const-string v13, "[AssistDialingA-1] "

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5515
    const/4 v12, 0x1

    sput-boolean v12, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5516
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 5490
    .end local v0    # "c":C
    .end local v3    # "enableAssistedDialing":Z
    .end local v9    # "numberBeginsWithNonUSIDDPrefix":Z
    .end local v10    # "numberBeginsWithOTAIDDPrefix":Z
    .end local v11    # "numberBeginsWithRefCountryIDDPrefixWithAdEnabled":Z
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 5491
    .restart local v3    # "enableAssistedDialing":Z
    :cond_7
    const/4 v11, 0x0

    goto :goto_2

    .line 5505
    .restart local v10    # "numberBeginsWithOTAIDDPrefix":Z
    .restart local v11    # "numberBeginsWithRefCountryIDDPrefixWithAdEnabled":Z
    :cond_8
    const/4 v9, 0x0

    goto :goto_3

    .line 5523
    :cond_9
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 5524
    .restart local v0    # "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v12

    if-nez v12, :cond_a

    const/16 v12, 0x2b

    if-ne v12, v0, :cond_16

    .line 5526
    :cond_a
    sget v12, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    const/16 v13, 0xb

    if-lt v12, v13, :cond_16

    sget v12, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    const/16 v13, 0xb

    if-ne v12, v13, :cond_b

    const/16 v12, 0x31

    if-eq v12, v0, :cond_16

    .line 5528
    :cond_b
    const/4 v4, 0x0

    .local v4, "iddPrefix":Ljava/lang/String;
    const/4 v6, 0x0

    .line 5529
    .local v6, "numberAfterIDDPrefix":Ljava/lang/String;
    if-nez v11, :cond_c

    if-eqz v10, :cond_d

    .line 5531
    :cond_c
    const/4 v12, 0x1

    if-ne v12, v11, :cond_e

    .line 5533
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    .line 5534
    sget-object v12, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {p0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 5543
    :cond_d
    :goto_4
    const/16 v12, 0x2b

    if-ne v12, v0, :cond_10

    sget-boolean v12, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    if-nez v12, :cond_10

    .line 5545
    const/4 v12, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {p0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 5546
    .local v7, "numberAfterPlus":Ljava/lang/String;
    sget-object v12, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    .line 5547
    .local v8, "numberAfterPlusContainsOTACountryCode":Z
    if-eqz v8, :cond_f

    .line 5550
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5551
    const/4 v12, 0x0

    sget-object v13, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    sget-object v14, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v5, v12, v13, v14}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5553
    const-string v12, "PhoneNumberUtils"

    const-string v13, "[AssistDialingB-2] "

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5554
    const/4 v12, 0x0

    sput-boolean v12, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5555
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 5538
    .end local v7    # "numberAfterPlus":Ljava/lang/String;
    .end local v8    # "numberAfterPlusContainsOTACountryCode":Z
    :cond_e
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    .line 5539
    sget-object v12, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {p0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 5560
    .restart local v7    # "numberAfterPlus":Ljava/lang/String;
    .restart local v8    # "numberAfterPlusContainsOTACountryCode":Z
    :cond_f
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5561
    const/4 v12, 0x0

    const/4 v13, 0x1

    sget-object v14, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v5, v12, v13, v14}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5563
    const-string v12, "PhoneNumberUtils"

    const-string v13, "[AssistDialingB-3] "

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5564
    const/4 v12, 0x0

    sput-boolean v12, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5565
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 5568
    .end local v7    # "numberAfterPlus":Ljava/lang/String;
    .end local v8    # "numberAfterPlusContainsOTACountryCode":Z
    :cond_10
    if-nez v11, :cond_11

    if-eqz v10, :cond_16

    .line 5570
    :cond_11
    sget-object v12, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 5572
    sget-boolean v12, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    if-eqz v12, :cond_13

    .line 5575
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5576
    const/4 v12, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    sget-object v14, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    const-string v14, "+"

    invoke-virtual {v5, v12, v13, v14}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5578
    const-string v12, "PhoneNumberUtils"

    const-string v13, "[AssistDialingC-1] "

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5579
    if-eqz v10, :cond_12

    .line 5580
    const/4 v12, 0x0

    sput-boolean v12, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5583
    :goto_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 5582
    :cond_12
    const/4 v12, 0x1

    sput-boolean v12, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto :goto_5

    .line 5589
    :cond_13
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5590
    const/4 v12, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    sget-object v14, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    sget-object v14, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v5, v12, v13, v14}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5592
    const-string v12, "PhoneNumberUtils"

    const-string v13, "[AssistDialingC-2] "

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5593
    if-eqz v10, :cond_14

    .line 5594
    const/4 v12, 0x0

    sput-boolean v12, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5597
    :goto_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 5596
    :cond_14
    const/4 v12, 0x1

    sput-boolean v12, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto :goto_6

    .line 5600
    :cond_15
    if-eqz v11, :cond_16

    .line 5603
    sget-object v12, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5604
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5606
    const-string v12, "PhoneNumberUtils"

    const-string v13, "[AssistDialingC-3] "

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5607
    const/4 v12, 0x1

    sput-boolean v12, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5608
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 5616
    .end local v0    # "c":C
    .end local v4    # "iddPrefix":Ljava/lang/String;
    .end local v6    # "numberAfterIDDPrefix":Ljava/lang/String;
    :cond_16
    sget-boolean v12, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    if-eqz v12, :cond_18

    .line 5617
    if-eqz v11, :cond_17

    .line 5619
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5620
    const/4 v12, 0x0

    sget-object v13, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const-string v14, "+"

    invoke-virtual {v5, v12, v13, v14}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5621
    const/4 v12, 0x1

    sput-boolean v12, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5622
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 5623
    :cond_17
    if-eqz v3, :cond_18

    const-string v12, "+011"

    invoke-virtual {p0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 5624
    const-string v12, "+"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5625
    const/4 v12, 0x4

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5626
    const/4 v12, 0x1

    sput-boolean v12, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5627
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 5633
    :cond_18
    const-string v12, "PhoneNumberUtils"

    const-string v13, "[AssistDialingD-1] "

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5636
    const/4 v12, 0x0

    sput-boolean v12, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private static bcdToChar(B)C
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 1149
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 1150
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    .line 1157
    :goto_0
    return v0

    .line 1151
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 1157
    const/4 v0, 0x0

    goto :goto_0

    .line 1152
    :pswitch_0
    const/16 v0, 0x2a

    goto :goto_0

    .line 1153
    :pswitch_1
    const/16 v0, 0x23

    goto :goto_0

    .line 1154
    :pswitch_2
    const/16 v0, 0x2c

    goto :goto_0

    .line 1155
    :pswitch_3
    const/16 v0, 0x4e

    goto :goto_0

    .line 1151
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static calledPartyBCDFragmentToString([BII)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 1139
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1141
    .local v0, "ret":Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 1143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static calledPartyBCDToString([BII)Ljava/lang/String;
    .locals 12
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 984
    const/4 v2, 0x0

    .line 985
    .local v2, "prependPlus":Z
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, p2, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 987
    .local v3, "ret":Ljava/lang/StringBuilder;
    if-ge p2, v7, :cond_0

    .line 988
    const-string v5, ""

    .line 1079
    :goto_0
    return-object v5

    .line 992
    :cond_0
    aget-byte v5, p0, p1

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0x90

    if-ne v5, v6, :cond_1

    .line 993
    const/4 v2, 0x1

    .line 996
    :cond_1
    add-int/lit8 v5, p1, 0x1

    add-int/lit8 v6, p2, -0x1

    invoke-static {v3, p0, v5, v6}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 999
    if-eqz v2, :cond_2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 1001
    const-string v5, ""

    goto :goto_0

    .line 1004
    :cond_2
    if-eqz v2, :cond_3

    .line 1030
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1031
    .local v4, "retString":Ljava/lang/String;
    const-string v5, "(^[#*])(.*)([#*])(.*)(#)$"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1032
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1033
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1034
    const-string v5, ""

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1038
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1039
    .restart local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "p":Ljava/util/regex/Pattern;
    .end local v4    # "retString":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1048
    .restart local v0    # "m":Ljava/util/regex/Matcher;
    .restart local v1    # "p":Ljava/util/regex/Pattern;
    .restart local v4    # "retString":Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1049
    .restart local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1057
    :cond_5
    const-string v5, "(^[#*])(.*)([#*])(.*)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1058
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1059
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1064
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1065
    .restart local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1072
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1073
    .restart local v3    # "ret":Ljava/lang/StringBuilder;
    const/16 v5, 0x2b

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1074
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    .line 2876
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2877
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2879
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v2

    .line 2880
    .local v2, "currIso":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v3

    .line 2883
    .local v3, "defaultIso":Ljava/lang/String;
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v5, :cond_1

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v6, "VZW-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2884
    const-string/jumbo v5, "persist.radio.test-assisteddial"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2885
    .local v0, "assistedDialingTest":Ljava/lang/String;
    const-string v5, "false"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2886
    const-string v4, ""

    .line 2887
    .local v4, "iso":Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2888
    .local v1, "assistedDialingTestParam":[Ljava/lang/String;
    array-length v5, v1

    if-le v5, v7, :cond_0

    .line 2889
    const-string/jumbo v4, "us"

    .line 2890
    const-string v5, "234"

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2891
    const-string v4, "gb"

    .line 2897
    :cond_0
    :goto_0
    const-string v5, "PhoneNumberUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Assited Dialing Testmode - currIso: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", defaultIso: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    move-object v2, v4

    .line 2899
    move-object v3, v4

    .line 2904
    .end local v0    # "assistedDialingTest":Ljava/lang/String;
    .end local v1    # "assistedDialingTestParam":[Ljava/lang/String;
    .end local v4    # "iso":Ljava/lang/String;
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2905
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v6

    invoke-static {p0, v5, v6}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 2911
    .end local v2    # "currIso":Ljava/lang/String;
    .end local v3    # "defaultIso":Ljava/lang/String;
    .end local p0    # "dialStr":Ljava/lang/String;
    :cond_2
    return-object p0

    .line 2892
    .restart local v0    # "assistedDialingTest":Ljava/lang/String;
    .restart local v1    # "assistedDialingTestParam":[Ljava/lang/String;
    .restart local v2    # "currIso":Ljava/lang/String;
    .restart local v3    # "defaultIso":Ljava/lang/String;
    .restart local v4    # "iso":Ljava/lang/String;
    .restart local p0    # "dialStr":Ljava/lang/String;
    :cond_3
    const-string v5, "460"

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2893
    const-string v4, "cn"

    goto :goto_0
.end method

.method public static cdmaCheckAndProcessPlusCode(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "dialStr"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2919
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2920
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2922
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 2923
    .local v0, "currIso":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 2925
    .local v1, "defaultIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2926
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v2, v3, p1}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;IILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 2932
    .end local v0    # "currIso":Ljava/lang/String;
    .end local v1    # "defaultIso":Ljava/lang/String;
    .end local p0    # "dialStr":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;
    .locals 11
    .param p0, "dialStr"    # Ljava/lang/String;
    .param p1, "currFormat"    # I
    .param p2, "defaultFormat"    # I

    .prologue
    const/4 v7, 0x1

    .line 2986
    move-object v3, p0

    .line 2988
    .local v3, "retStr":Ljava/lang/String;
    if-ne p1, p2, :cond_4

    if-ne p1, v7, :cond_4

    move v6, v7

    .line 2991
    .local v6, "useNanp":Z
    :goto_0
    if-eqz p0, :cond_3

    const-string v8, "+"

    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 2995
    const/4 v2, 0x0

    .line 2996
    .local v2, "postDialStr":Ljava/lang/String;
    move-object v5, p0

    .line 2999
    .local v5, "tempDialStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3008
    :cond_0
    if-eqz v6, :cond_5

    .line 3009
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3015
    .local v1, "networkDialStr":Ljava/lang/String;
    :goto_1
    const-string/jumbo v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3016
    .local v4, "salesCode":Ljava/lang/String;
    const-string v8, "CTC"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "KDI"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "LGT"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "domestic"

    const-string/jumbo v9, "ril.currentplmn"

    const-string v10, "domestic"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "+82"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_1
    if-nez v6, :cond_6

    .line 3028
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 3029
    if-nez v3, :cond_7

    .line 3030
    move-object v3, v1

    .line 3041
    :goto_3
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3042
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3043
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->findDialableIndexFromPostDialStr(Ljava/lang/String;)I

    move-result v0

    .line 3046
    .local v0, "dialableIndex":I
    if-lt v0, v7, :cond_9

    .line 3047
    invoke-static {v0, v3, v2}, Landroid/telephony/PhoneNumberUtils;->appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3050
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 3062
    .end local v0    # "dialableIndex":I
    :cond_2
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .end local v1    # "networkDialStr":Ljava/lang/String;
    .end local v2    # "postDialStr":Ljava/lang/String;
    .end local v4    # "salesCode":Ljava/lang/String;
    .end local v5    # "tempDialStr":Ljava/lang/String;
    :cond_3
    move-object p0, v3

    .line 3064
    .end local p0    # "dialStr":Ljava/lang/String;
    :goto_5
    return-object p0

    .line 2988
    .end local v6    # "useNanp":Z
    .restart local p0    # "dialStr":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 3011
    .restart local v2    # "postDialStr":Ljava/lang/String;
    .restart local v5    # "tempDialStr":Ljava/lang/String;
    .restart local v6    # "useNanp":Z
    :cond_5
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "networkDialStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 3024
    .restart local v4    # "salesCode":Ljava/lang/String;
    :cond_6
    invoke-static {v1, v6}, Landroid/telephony/PhoneNumberUtils;->processPlusCode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 3032
    :cond_7
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 3038
    :cond_8
    const-string v7, "checkAndProcessPlusCode: null newDialStr"

    invoke-static {v7, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 3055
    .restart local v0    # "dialableIndex":I
    :cond_9
    if-gez v0, :cond_a

    .line 3056
    const-string v2, ""

    .line 3058
    :cond_a
    const-string/jumbo v8, "wrong postDialStr="

    invoke-static {v8, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;IILandroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "dialStr"    # Ljava/lang/String;
    .param p1, "currFormat"    # I
    .param p2, "defaultFormat"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3188
    move-object v3, p0

    .line 3190
    .local v3, "retStr":Ljava/lang/String;
    if-ne p1, p2, :cond_5

    if-ne p1, v7, :cond_5

    move v6, v7

    .line 3192
    .local v6, "useNanp":Z
    :goto_0
    sget-object v9, Landroid/telephony/PhoneNumberUtils;->mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v9, :cond_0

    sget-object v9, Landroid/telephony/PhoneNumberUtils;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v10, "SPR-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v8, v7

    :cond_0
    or-int/2addr v6, v8

    .line 3195
    if-eqz p0, :cond_4

    const-string v8, "+"

    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    .line 3199
    const/4 v2, 0x0

    .line 3200
    .local v2, "postDialStr":Ljava/lang/String;
    move-object v5, p0

    .line 3203
    .local v5, "tempDialStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3212
    :cond_1
    if-eqz v6, :cond_6

    .line 3213
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3219
    .local v1, "networkDialStr":Ljava/lang/String;
    :goto_1
    const-string/jumbo v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3220
    .local v4, "salesCode":Ljava/lang/String;
    const-string v8, "CTC"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "LGT"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "domestic"

    const-string/jumbo v9, "ril.currentplmn"

    const-string v10, "domestic"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "+82"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_2
    if-nez v6, :cond_7

    .line 3232
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 3233
    if-nez v3, :cond_8

    .line 3234
    move-object v3, v1

    .line 3245
    :goto_3
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3246
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 3247
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->findDialableIndexFromPostDialStr(Ljava/lang/String;)I

    move-result v0

    .line 3250
    .local v0, "dialableIndex":I
    if-lt v0, v7, :cond_a

    .line 3251
    invoke-static {v0, v3, v2}, Landroid/telephony/PhoneNumberUtils;->appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3254
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 3266
    .end local v0    # "dialableIndex":I
    :cond_3
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .end local v1    # "networkDialStr":Ljava/lang/String;
    .end local v2    # "postDialStr":Ljava/lang/String;
    .end local v4    # "salesCode":Ljava/lang/String;
    .end local v5    # "tempDialStr":Ljava/lang/String;
    :cond_4
    move-object p0, v3

    .line 3268
    .end local p0    # "dialStr":Ljava/lang/String;
    :goto_5
    return-object p0

    .end local v6    # "useNanp":Z
    .restart local p0    # "dialStr":Ljava/lang/String;
    :cond_5
    move v6, v8

    .line 3190
    goto/16 :goto_0

    .line 3215
    .restart local v2    # "postDialStr":Ljava/lang/String;
    .restart local v5    # "tempDialStr":Ljava/lang/String;
    .restart local v6    # "useNanp":Z
    :cond_6
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "networkDialStr":Ljava/lang/String;
    goto :goto_1

    .line 3228
    .restart local v4    # "salesCode":Ljava/lang/String;
    :cond_7
    invoke-static {v1, v6, p3}, Landroid/telephony/PhoneNumberUtils;->processPlusCode(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 3236
    :cond_8
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 3242
    :cond_9
    const-string v7, "checkAndProcessPlusCode: null newDialStr"

    invoke-static {v7, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 3259
    .restart local v0    # "dialableIndex":I
    :cond_a
    if-gez v0, :cond_b

    .line 3260
    const-string v2, ""

    .line 3262
    :cond_b
    const-string/jumbo v8, "wrong postDialStr="

    invoke-static {v8, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 2945
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2946
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2947
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 2948
    .local v0, "defaultIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2949
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    .line 2950
    .local v1, "format":I
    invoke-static {p0, v1, v1}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 2954
    .end local v0    # "defaultIso":Ljava/lang/String;
    .end local v1    # "format":I
    .end local p0    # "dialStr":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static charToBCD(C)I
    .locals 3
    .param p0, "c"    # C

    .prologue
    .line 1163
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 1164
    add-int/lit8 v0, p0, -0x30

    .line 1174
    :goto_0
    return v0

    .line 1165
    :cond_0
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_1

    .line 1166
    const/16 v0, 0xa

    goto :goto_0

    .line 1167
    :cond_1
    const/16 v0, 0x23

    if-ne p0, v0, :cond_2

    .line 1168
    const/16 v0, 0xb

    goto :goto_0

    .line 1169
    :cond_2
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_3

    .line 1170
    const/16 v0, 0xc

    goto :goto_0

    .line 1171
    :cond_3
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_4

    .line 1172
    const/16 v0, 0xd

    goto :goto_0

    .line 1173
    :cond_4
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_5

    .line 1174
    const/16 v0, 0xe

    goto :goto_0

    .line 1176
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid char for BCD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkAssistedDialingTestmode(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x2

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 5395
    const-string/jumbo v1, "persist.radio.test-assisteddial"

    const-string v3, "false"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5396
    .local v6, "assistedDialingTest":Ljava/lang/String;
    const-string v1, "false"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5397
    const-string v1, ":"

    invoke-virtual {v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 5398
    .local v7, "assistedDialingTestParam":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v1, v7

    if-ge v9, v1, :cond_0

    .line 5399
    const-string v1, "PhoneNumberUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Assisted Dialing Testmode Parameter["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v7, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5398
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 5402
    :cond_0
    array-length v1, v7

    if-lez v1, :cond_2

    .line 5403
    const-string v1, "gsm"

    aget-object v3, v7, v11

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v10

    :goto_1
    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    .line 5404
    sget-boolean v1, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    if-nez v1, :cond_4

    move v1, v10

    :goto_2
    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    .line 5406
    array-length v1, v7

    if-le v1, v10, :cond_1

    .line 5407
    const-string/jumbo v1, "roam"

    aget-object v3, v7, v10

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v10

    :goto_3
    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    .line 5409
    array-length v1, v7

    if-le v1, v12, :cond_1

    .line 5410
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5412
    .local v0, "otacr":Landroid/content/ContentResolver;
    const-string v1, "310"

    aget-object v3, v7, v12

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5413
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    const-string/jumbo v3, "mcc=?"

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "310 to 316"

    aput-object v5, v4, v11

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 5418
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_4
    sput-object v2, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    .line 5419
    if-nez v8, :cond_7

    .line 5420
    const-string v1, "PhoneNumberUtils"

    const-string v2, "Assisted Dialing Testmode - cursor is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5440
    :goto_5
    if-eqz v8, :cond_1

    .line 5441
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 5446
    .end local v0    # "otacr":Landroid/content/ContentResolver;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    const-string v1, "PhoneNumberUtils"

    const-string v2, "========== Assisted Dialing Parameter for Testmode =========="

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5447
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->displayAssistedParams()V

    .line 5450
    .end local v7    # "assistedDialingTestParam":[Ljava/lang/String;
    .end local v9    # "i":I
    :cond_2
    return-void

    .restart local v7    # "assistedDialingTestParam":[Ljava/lang/String;
    .restart local v9    # "i":I
    :cond_3
    move v1, v11

    .line 5403
    goto :goto_1

    :cond_4
    move v1, v11

    .line 5404
    goto :goto_2

    :cond_5
    move v1, v11

    .line 5407
    goto :goto_3

    .line 5415
    .restart local v0    # "otacr":Landroid/content/ContentResolver;
    :cond_6
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    const-string/jumbo v3, "mcc=?"

    new-array v4, v10, [Ljava/lang/String;

    aget-object v5, v7, v12

    aput-object v5, v4, v11

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .restart local v8    # "cursor":Landroid/database/Cursor;
    goto :goto_4

    .line 5421
    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_8

    .line 5422
    const-string v1, "PhoneNumberUtils"

    const-string v2, "Assisted Dialing Testmode - cursor is empty"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 5424
    :cond_8
    const-string v1, "PhoneNumberUtils"

    const-string v2, "Assisted Dialing Testmode - find cursor"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5425
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryName:Ljava/lang/String;

    .line 5426
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    .line 5428
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    .line 5429
    const/4 v1, 0x4

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    .line 5430
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 5431
    const-string v1, ""

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    .line 5434
    :cond_9
    const/4 v1, 0x5

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NANP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_6
    sput-boolean v10, Landroid/telephony/PhoneNumberUtils;->isOTANANPCountry:Z

    .line 5435
    const/4 v1, 0x6

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    .line 5436
    const/4 v1, 0x7

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->isOTANBPCDSupported:Z

    .line 5437
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    const-string v2, "310 to 316"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "310"

    :goto_7
    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    goto/16 :goto_5

    :cond_a
    move v10, v11

    .line 5434
    goto :goto_6

    .line 5437
    :cond_b
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    const-string v2, "430 to 431"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "430"

    goto :goto_7

    :cond_c
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    goto :goto_7
.end method

.method private static checkPrefixIsIgnorable(Ljava/lang/String;II)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "forwardIndex"    # I
    .param p2, "backwardIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 3831
    const/4 v0, 0x0

    .line 3832
    .local v0, "trunk_prefix_was_read":Z
    :goto_0
    if-lt p2, p1, :cond_3

    .line 3833
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v2

    if-ltz v2, :cond_2

    .line 3834
    if-eqz v0, :cond_0

    .line 3849
    :goto_1
    return v1

    .line 3840
    :cond_0
    const/4 v0, 0x1

    .line 3846
    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 3842
    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 3849
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    .prologue
    .line 526
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 528
    .local v0, "useStrict":Z
    invoke-static {p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 517
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "useStrictComparation"    # Z

    .prologue
    .line 535
    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 556
    const/4 v9, 0x0

    .line 557
    .local v9, "numNonDialableCharsInA":I
    const/4 v10, 0x0

    .line 559
    .local v10, "numNonDialableCharsInB":I
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v13, 0x1

    .line 709
    :goto_0
    return v13

    .line 559
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 561
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_4

    .line 562
    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .line 565
    :cond_4
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v6

    .line 566
    .local v6, "ia":I
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v7

    .line 567
    .local v7, "ib":I
    const/4 v8, 0x0

    .line 569
    .local v8, "matched":I
    :cond_5
    :goto_1
    if-ltz v6, :cond_8

    if-ltz v7, :cond_8

    .line 571
    const/4 v12, 0x0

    .line 573
    .local v12, "skipCmp":Z
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 575
    .local v2, "ca":C
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v13

    if-nez v13, :cond_6

    .line 576
    add-int/lit8 v6, v6, -0x1

    .line 577
    const/4 v12, 0x1

    .line 578
    add-int/lit8 v9, v9, 0x1

    .line 581
    :cond_6
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 583
    .local v3, "cb":C
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v13

    if-nez v13, :cond_7

    .line 584
    add-int/lit8 v7, v7, -0x1

    .line 585
    const/4 v12, 0x1

    .line 586
    add-int/lit8 v10, v10, 0x1

    .line 589
    :cond_7
    if-nez v12, :cond_5

    .line 590
    if-eq v3, v2, :cond_a

    const/16 v13, 0x4e

    if-eq v2, v13, :cond_a

    const/16 v13, 0x4e

    if-eq v3, v13, :cond_a

    .line 597
    .end local v2    # "ca":C
    .end local v3    # "cb":C
    .end local v12    # "skipCmp":Z
    :cond_8
    const-string/jumbo v13, "ro.csc.sales_code"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 599
    .local v11, "salesCode":Ljava/lang/String;
    const-string v13, "CHN"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "CHU"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "CHM"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "CTC"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "CHC"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 600
    :cond_9
    const/16 v13, 0xb

    if-ge v8, v13, :cond_c

    .line 601
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    sub-int v4, v13, v9

    .line 602
    .local v4, "effectiveALen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v13

    sub-int v5, v13, v10

    .line 605
    .local v5, "effectiveBLen":I
    if-ne v4, v5, :cond_b

    if-ne v4, v8, :cond_b

    .line 606
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 593
    .end local v4    # "effectiveALen":I
    .end local v5    # "effectiveBLen":I
    .end local v11    # "salesCode":Ljava/lang/String;
    .restart local v2    # "ca":C
    .restart local v3    # "cb":C
    .restart local v12    # "skipCmp":Z
    :cond_a
    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 608
    .end local v2    # "ca":C
    .end local v3    # "cb":C
    .end local v12    # "skipCmp":Z
    .restart local v4    # "effectiveALen":I
    .restart local v5    # "effectiveBLen":I
    .restart local v11    # "salesCode":Ljava/lang/String;
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 611
    .end local v4    # "effectiveALen":I
    .end local v5    # "effectiveBLen":I
    :cond_c
    const/16 v13, 0xb

    if-lt v8, v13, :cond_1b

    if-ltz v6, :cond_d

    if-gez v7, :cond_1b

    .line 612
    :cond_d
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 615
    :cond_e
    const-string v13, "FET"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f

    const-string v13, "TWM"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f

    const-string v13, "CWT"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f

    const-string v13, "BRI"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 616
    :cond_f
    const/16 v13, 0x9

    if-ge v8, v13, :cond_11

    .line 617
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    sub-int v4, v13, v9

    .line 618
    .restart local v4    # "effectiveALen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v13

    sub-int v5, v13, v10

    .line 621
    .restart local v5    # "effectiveBLen":I
    if-ne v4, v5, :cond_10

    if-ne v4, v8, :cond_10

    .line 622
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 624
    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 627
    .end local v4    # "effectiveALen":I
    .end local v5    # "effectiveBLen":I
    :cond_11
    const/16 v13, 0x9

    if-lt v8, v13, :cond_1b

    if-ltz v6, :cond_12

    if-gez v7, :cond_1b

    .line 628
    :cond_12
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 631
    :cond_13
    const-string v13, "TGY"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 632
    const/16 v13, 0x8

    if-ge v8, v13, :cond_15

    .line 633
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    sub-int v4, v13, v9

    .line 634
    .restart local v4    # "effectiveALen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v13

    sub-int v5, v13, v10

    .line 637
    .restart local v5    # "effectiveBLen":I
    if-ne v4, v5, :cond_14

    if-ne v4, v8, :cond_14

    .line 638
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 640
    :cond_14
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 643
    .end local v4    # "effectiveALen":I
    .end local v5    # "effectiveBLen":I
    :cond_15
    const/16 v13, 0x8

    if-lt v8, v13, :cond_1b

    if-ltz v6, :cond_16

    if-gez v7, :cond_1b

    .line 644
    :cond_16
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 647
    :cond_17
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getMinMatch()I

    move-result v13

    if-ge v8, v13, :cond_19

    .line 648
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    sub-int v4, v13, v9

    .line 649
    .restart local v4    # "effectiveALen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v13

    sub-int v5, v13, v10

    .line 654
    .restart local v5    # "effectiveBLen":I
    if-ne v4, v5, :cond_18

    if-ne v4, v8, :cond_18

    .line 655
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 657
    :cond_18
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 661
    .end local v4    # "effectiveALen":I
    .end local v5    # "effectiveBLen":I
    :cond_19
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getMinMatch()I

    move-result v13

    if-lt v8, v13, :cond_1b

    if-ltz v6, :cond_1a

    if-gez v7, :cond_1b

    .line 662
    :cond_1a
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 676
    :cond_1b
    add-int/lit8 v13, v6, 0x1

    invoke-static {p0, v13}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_1c

    add-int/lit8 v13, v7, 0x1

    invoke-static {p1, v13}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 679
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 682
    :cond_1c
    add-int/lit8 v13, v6, 0x1

    invoke-static {p0, v13}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_1d

    add-int/lit8 v13, v7, 0x1

    invoke-static {p1, v13}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 685
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 688
    :cond_1d
    add-int/lit8 v13, v7, 0x1

    invoke-static {p1, v13}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_1e

    add-int/lit8 v13, v6, 0x1

    invoke-static {p0, v13}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 691
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 702
    :cond_1e
    const-string v13, "+"

    invoke-virtual {p0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 703
    .local v0, "aPlusFirst":Z
    const-string v13, "+"

    invoke-virtual {p1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 704
    .local v1, "bPlusFirst":Z
    const/4 v13, 0x4

    if-ge v6, v13, :cond_21

    const/4 v13, 0x4

    if-ge v7, v13, :cond_21

    if-nez v0, :cond_1f

    if-eqz v1, :cond_21

    :cond_1f
    if-eqz v0, :cond_20

    if-nez v1, :cond_21

    .line 706
    :cond_20
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 709
    :cond_21
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 717
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 20
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "acceptInvalidCCCPrefix"    # Z

    .prologue
    .line 726
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 727
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_1

    const/16 v18, 0x1

    .line 864
    :goto_0
    return v18

    .line 727
    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    .line 728
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_3

    .line 729
    const/16 v18, 0x0

    goto :goto_0

    .line 732
    :cond_3
    const/4 v10, 0x0

    .line 733
    .local v10, "forwardIndexA":I
    const/4 v11, 0x0

    .line 735
    .local v11, "forwardIndexB":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v6

    .line 737
    .local v6, "cccA":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    invoke-static/range {p1 .. p2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v7

    .line 739
    .local v7, "cccB":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    const/4 v5, 0x0

    .line 740
    .local v5, "bothHasCountryCallingCode":Z
    const/4 v13, 0x1

    .line 741
    .local v13, "okToIgnorePrefix":Z
    const/16 v16, 0x0

    .line 742
    .local v16, "trunkPrefixIsOmittedA":Z
    const/16 v17, 0x0

    .line 743
    .local v17, "trunkPrefixIsOmittedB":Z
    if-eqz v6, :cond_9

    if-eqz v7, :cond_9

    .line 744
    iget v0, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    move/from16 v18, v0

    iget v0, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 746
    const/16 v18, 0x0

    goto :goto_0

    .line 750
    :cond_4
    const/4 v13, 0x0

    .line 751
    const/4 v5, 0x1

    .line 752
    iget v10, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 753
    iget v11, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 779
    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v3, v18, -0x1

    .line 780
    .local v3, "backwardIndexA":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v4, v18, -0x1

    .line 781
    .local v4, "backwardIndexB":I
    :cond_6
    :goto_2
    if-lt v3, v10, :cond_f

    if-lt v4, v11, :cond_f

    .line 782
    const/4 v14, 0x0

    .line 783
    .local v14, "skip_compare":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 784
    .local v8, "chA":C
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 785
    .local v9, "chB":C
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 786
    add-int/lit8 v3, v3, -0x1

    .line 787
    const/4 v14, 0x1

    .line 789
    :cond_7
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 790
    add-int/lit8 v4, v4, -0x1

    .line 791
    const/4 v14, 0x1

    .line 794
    :cond_8
    if-nez v14, :cond_6

    .line 795
    if-eq v8, v9, :cond_e

    .line 796
    const/16 v18, 0x0

    goto :goto_0

    .line 754
    .end local v3    # "backwardIndexA":I
    .end local v4    # "backwardIndexB":I
    .end local v8    # "chA":C
    .end local v9    # "chB":C
    .end local v14    # "skip_compare":Z
    :cond_9
    if-nez v6, :cond_a

    if-nez v7, :cond_a

    .line 757
    const/4 v13, 0x0

    goto :goto_1

    .line 759
    :cond_a
    if-eqz v6, :cond_c

    .line 760
    iget v10, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 768
    :cond_b
    :goto_3
    if-eqz v7, :cond_d

    .line 769
    iget v11, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    goto :goto_1

    .line 762
    :cond_c
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v15

    .line 763
    .local v15, "tmp":I
    if-ltz v15, :cond_b

    .line 764
    move v10, v15

    .line 765
    const/16 v16, 0x1

    goto :goto_3

    .line 771
    .end local v15    # "tmp":I
    :cond_d
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v15

    .line 772
    .restart local v15    # "tmp":I
    if-ltz v15, :cond_5

    .line 773
    move v11, v15

    .line 774
    const/16 v17, 0x1

    goto :goto_1

    .line 798
    .end local v15    # "tmp":I
    .restart local v3    # "backwardIndexA":I
    .restart local v4    # "backwardIndexB":I
    .restart local v8    # "chA":C
    .restart local v9    # "chB":C
    .restart local v14    # "skip_compare":Z
    :cond_e
    add-int/lit8 v3, v3, -0x1

    .line 799
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 803
    .end local v8    # "chA":C
    .end local v9    # "chB":C
    .end local v14    # "skip_compare":Z
    :cond_f
    if-eqz v13, :cond_17

    .line 804
    if-eqz v16, :cond_10

    if-le v10, v3, :cond_11

    :cond_10
    move-object/from16 v0, p0

    invoke-static {v0, v10, v3}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_13

    .line 806
    :cond_11
    if-eqz p2, :cond_12

    .line 816
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    goto/16 :goto_0

    .line 818
    :cond_12
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 821
    :cond_13
    if-eqz v17, :cond_14

    if-le v11, v4, :cond_15

    :cond_14
    move-object/from16 v0, p1

    invoke-static {v0, v10, v4}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_1e

    .line 823
    :cond_15
    if-eqz p2, :cond_16

    .line 824
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    goto/16 :goto_0

    .line 826
    :cond_16
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 839
    :cond_17
    if-nez v5, :cond_19

    const/4 v12, 0x1

    .line 840
    .local v12, "maybeNamp":Z
    :goto_4
    if-lt v3, v10, :cond_1b

    .line 841
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 842
    .restart local v8    # "chA":C
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 843
    if-eqz v12, :cond_1a

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a

    .line 844
    const/4 v12, 0x0

    .line 849
    :cond_18
    add-int/lit8 v3, v3, -0x1

    .line 850
    goto :goto_4

    .line 839
    .end local v8    # "chA":C
    .end local v12    # "maybeNamp":Z
    :cond_19
    const/4 v12, 0x0

    goto :goto_4

    .line 846
    .restart local v8    # "chA":C
    .restart local v12    # "maybeNamp":Z
    :cond_1a
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 851
    .end local v8    # "chA":C
    :cond_1b
    :goto_5
    if-lt v4, v11, :cond_1e

    .line 852
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 853
    .restart local v9    # "chB":C
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v18

    if-eqz v18, :cond_1c

    .line 854
    if-eqz v12, :cond_1d

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1d

    .line 855
    const/4 v12, 0x0

    .line 860
    :cond_1c
    add-int/lit8 v4, v4, -0x1

    .line 861
    goto :goto_5

    .line 857
    :cond_1d
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 864
    .end local v9    # "chB":C
    .end local v12    # "maybeNamp":Z
    :cond_1e
    const/16 v18, 0x1

    goto/16 :goto_0
.end method

.method public static convertAndStrip(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 413
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 2791
    if-nez p0, :cond_1

    .line 2807
    .end local p0    # "input":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 2794
    .restart local p0    # "input":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2795
    .local v2, "len":I
    if-eqz v2, :cond_0

    .line 2799
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 2801
    .local v3, "out":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 2802
    aget-char v0, v3, v1

    .line 2804
    .local v0, "c":C
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    aput-char v4, v3, v1

    .line 2801
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2807
    .end local v0    # "c":C
    :cond_2
    new-instance p0, Ljava/lang/String;

    .end local p0    # "input":Ljava/lang/String;
    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static convertPreDial(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 423
    if-nez p0, :cond_0

    .line 424
    const/4 v4, 0x0

    .line 439
    :goto_0
    return-object v4

    .line 426
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 427
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 429
    .local v3, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 430
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 432
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isPause(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 433
    const/16 v0, 0x2c

    .line 437
    :cond_1
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 429
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 434
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isToneWait(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 435
    const/16 v0, 0x3b

    goto :goto_2

    .line 439
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static convertSMSDestinationAddress(Ljava/lang/String;Landroid/content/Context;I)Ljava/lang/String;
    .locals 20
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fixedNetwork"    # I

    .prologue
    .line 5709
    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 5710
    .local v16, "phoneNumber":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v15

    .line 5712
    .local v15, "numberLength":I
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 5713
    .local v3, "c":C
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v17

    if-nez v17, :cond_0

    const/16 v17, 0x2b

    move/from16 v0, v17

    if-ne v0, v3, :cond_1

    .line 5714
    :cond_0
    const-string v17, "PhoneNumberUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SMS Destination Number is OK "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5721
    :try_start_0
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->retrieveAssistedParams(Ljava/lang/String;Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    if-nez v17, :cond_2

    .line 5904
    .end local v16    # "phoneNumber":Ljava/lang/String;
    :goto_0
    return-object v16

    .line 5716
    .restart local v16    # "phoneNumber":Ljava/lang/String;
    :cond_1
    const-string v17, "PhoneNumberUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SMS Destination Number might be email address"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5726
    :cond_2
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v17, 0x80

    move/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5728
    .local v10, "newPhoneNumber":Ljava/lang/StringBuilder;
    sget-object v17, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    .line 5729
    .local v14, "numberBeginsWithOTAIDDPrefix":Z
    const-string v17, "011"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_4

    const/4 v13, 0x1

    .line 5730
    .local v13, "numberBeginsWithNonUSIDDPrefix":Z
    :goto_1
    const/16 v17, 0x0

    const/16 v18, 0x5

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 5732
    .local v4, "debugNumber":Ljava/lang/String;
    const-string v17, "PhoneNumberUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SMS Destination numberLength: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " numberBeginsWithOTAIDDPrefix: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " numberBeginsWithNonUSIDDPrefix: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " otaCountryIDDPrefix: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " number : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "**********"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5739
    packed-switch p2, :pswitch_data_0

    .line 5761
    :goto_2
    :pswitch_0
    const/4 v6, 0x0

    .line 5763
    .local v6, "findIDDLen":I
    sget-boolean v17, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    if-eqz v17, :cond_10

    .line 5764
    sget-boolean v17, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    if-nez v17, :cond_6

    .line 5765
    const-string v17, "PhoneNumberUtils"

    const-string v18, "Address Rule in VZW Network"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5766
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 5767
    if-eqz v13, :cond_5

    const/16 v17, 0xb

    move/from16 v0, v17

    if-lt v15, v0, :cond_5

    const/16 v17, 0xb

    move/from16 v0, v17

    if-ne v15, v0, :cond_3

    const/16 v17, 0x31

    move/from16 v0, v17

    if-eq v0, v3, :cond_5

    .line 5768
    :cond_3
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 5769
    const-string v17, "011"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5770
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5771
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    .line 5729
    .end local v4    # "debugNumber":Ljava/lang/String;
    .end local v6    # "findIDDLen":I
    .end local v13    # "numberBeginsWithNonUSIDDPrefix":Z
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 5743
    .restart local v4    # "debugNumber":Ljava/lang/String;
    .restart local v13    # "numberBeginsWithNonUSIDDPrefix":Z
    :pswitch_1
    const/16 v17, 0x1

    sput-boolean v17, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    .line 5744
    const/16 v17, 0x0

    sput-boolean v17, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    .line 5745
    const/16 v17, 0x0

    sput-boolean v17, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 5902
    .end local v4    # "debugNumber":Ljava/lang/String;
    .end local v10    # "newPhoneNumber":Ljava/lang/StringBuilder;
    .end local v13    # "numberBeginsWithNonUSIDDPrefix":Z
    .end local v14    # "numberBeginsWithOTAIDDPrefix":Z
    :catch_0
    move-exception v5

    .line 5903
    .local v5, "e":Ljava/lang/Exception;
    const-string v17, "PhoneNumberUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Cannot convert: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5748
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "debugNumber":Ljava/lang/String;
    .restart local v10    # "newPhoneNumber":Ljava/lang/StringBuilder;
    .restart local v13    # "numberBeginsWithNonUSIDDPrefix":Z
    .restart local v14    # "numberBeginsWithOTAIDDPrefix":Z
    :pswitch_2
    const/16 v17, 0x1

    :try_start_2
    sput-boolean v17, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    .line 5749
    const/16 v17, 0x0

    sput-boolean v17, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    .line 5750
    const/16 v17, 0x1

    sput-boolean v17, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    goto :goto_2

    .line 5753
    :pswitch_3
    const/16 v17, 0x0

    sput-boolean v17, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    .line 5754
    const/16 v17, 0x1

    sput-boolean v17, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    goto/16 :goto_2

    .line 5776
    .restart local v6    # "findIDDLen":I
    :cond_5
    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    .line 5778
    :cond_6
    const-string v17, "PhoneNumberUtils"

    const-string v18, "Address Rule in CDMA Internatinal Roaming"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5779
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v17

    if-nez v17, :cond_7

    const/16 v17, 0x2b

    move/from16 v0, v17

    if-ne v0, v3, :cond_10

    .line 5780
    :cond_7
    const/16 v17, 0xb

    move/from16 v0, v17

    if-lt v15, v0, :cond_10

    const/16 v17, 0xb

    move/from16 v0, v17

    if-ne v15, v0, :cond_8

    const/16 v17, 0x31

    move/from16 v0, v17

    if-eq v0, v3, :cond_10

    .line 5781
    :cond_8
    add-int/lit8 v17, v15, -0xb

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 5782
    .local v9, "nanpStr":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "iddPrefix":Ljava/lang/String;
    const/4 v12, 0x0

    .line 5784
    .local v12, "numberAfterIDDPrefix":Ljava/lang/String;
    if-eqz v14, :cond_9

    .line 5785
    sget-object v7, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    .line 5786
    sget-object v17, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 5789
    :cond_9
    if-eqz v14, :cond_c

    .line 5790
    sget-object v17, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v6

    .line 5791
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 5793
    .local v11, "newStr":Ljava/lang/String;
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v18, v6, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 5794
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5804
    :goto_3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    .line 5795
    :cond_a
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 5796
    const-string v17, "PhoneNumberUtils"

    const-string v18, "Found Country Code after IDD"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5797
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5798
    const/16 v17, 0x0

    const-string v18, "011"

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v6, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 5800
    :cond_b
    const-string v17, "PhoneNumberUtils"

    const-string v18, "No Condition"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5801
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 5807
    .end local v11    # "newStr":Ljava/lang/String;
    :cond_c
    const/16 v17, 0x2b

    move/from16 v0, v17

    if-ne v0, v3, :cond_f

    sget-boolean v17, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    if-nez v17, :cond_f

    .line 5808
    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 5810
    .restart local v11    # "newStr":Ljava/lang/String;
    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0xc

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 5811
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5820
    :goto_4
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    .line 5812
    :cond_d
    move-object/from16 v0, p1

    invoke-static {v11, v0}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 5813
    const-string v17, "011"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5814
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 5816
    :cond_e
    const-string v17, "PhoneNumberUtils"

    const-string v18, "1NANP is not matched"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5817
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 5823
    .end local v11    # "newStr":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 5824
    const-string v17, "011"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5825
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5826
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    .line 5833
    .end local v7    # "iddPrefix":Ljava/lang/String;
    .end local v9    # "nanpStr":Ljava/lang/String;
    .end local v12    # "numberAfterIDDPrefix":Ljava/lang/String;
    :cond_10
    sget-boolean v17, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    if-eqz v17, :cond_1b

    .line 5834
    const-string v17, "PhoneNumberUtils"

    const-string v18, "Address Rule in GSM/UMTS"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5836
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v17

    if-nez v17, :cond_11

    const/16 v17, 0x2b

    move/from16 v0, v17

    if-ne v0, v3, :cond_1b

    .line 5837
    :cond_11
    const/16 v17, 0xb

    move/from16 v0, v17

    if-lt v15, v0, :cond_1b

    const/16 v17, 0xb

    move/from16 v0, v17

    if-ne v15, v0, :cond_12

    const/16 v17, 0x31

    move/from16 v0, v17

    if-eq v0, v3, :cond_1b

    .line 5838
    :cond_12
    add-int/lit8 v17, v15, -0xb

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 5839
    .restart local v9    # "nanpStr":Ljava/lang/String;
    const/4 v7, 0x0

    .restart local v7    # "iddPrefix":Ljava/lang/String;
    const/4 v12, 0x0

    .line 5842
    .restart local v12    # "numberAfterIDDPrefix":Ljava/lang/String;
    if-eqz v14, :cond_13

    .line 5843
    sget-object v7, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    .line 5844
    sget-object v17, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 5847
    :cond_13
    if-eqz v14, :cond_16

    .line 5850
    sget-object v17, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v6

    .line 5851
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 5853
    .restart local v11    # "newStr":Ljava/lang/String;
    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_14

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v18, v6, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 5854
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5855
    const/16 v17, 0x0

    sget-object v18, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    const-string v19, "+"

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5856
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    .line 5857
    :cond_14
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 5858
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5859
    const/16 v17, 0x0

    sget-object v18, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    const-string v19, "011"

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5860
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    .line 5862
    :cond_15
    const-string v17, "PhoneNumberUtils"

    const-string v18, "No condition is matched in IDD"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5863
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5866
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    .line 5869
    .end local v11    # "newStr":Ljava/lang/String;
    :cond_16
    const/16 v17, 0x2b

    move/from16 v0, v17

    if-ne v0, v3, :cond_1a

    .line 5870
    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 5871
    .local v8, "iddStr":Ljava/lang/String;
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_17

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0xc

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    .line 5873
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5886
    :goto_5
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    .line 5874
    :cond_17
    move-object/from16 v0, p1

    invoke-static {v8, v0}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_18

    .line 5876
    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 5877
    .restart local v11    # "newStr":Ljava/lang/String;
    const-string v17, "011"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5878
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 5879
    .end local v11    # "newStr":Ljava/lang/String;
    :cond_18
    const-string v17, "011"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_19

    .line 5880
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 5882
    :cond_19
    const-string v17, "PhoneNumberUtils"

    const-string v18, "No condition is matched in \'+\'"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5883
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 5890
    .end local v8    # "iddStr":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_1b

    .line 5891
    const-string v17, "011"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5892
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5893
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    .line 5899
    .end local v7    # "iddPrefix":Ljava/lang/String;
    .end local v9    # "nanpStr":Ljava/lang/String;
    .end local v12    # "numberAfterIDDPrefix":Ljava/lang/String;
    :cond_1b
    const-string v17, "PhoneNumberUtils"

    const-string v18, "Can\'t find any match in this number"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 5739
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static createTtsSpan(Ljava/lang/String;)Landroid/text/style/TtsSpan;
    .locals 6
    .param p0, "phoneNumberString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3137
    if-nez p0, :cond_0

    .line 3164
    :goto_0
    return-object v3

    .line 3142
    :cond_0
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 3143
    .local v2, "phoneNumberUtil":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v1, 0x0

    .line 3148
    .local v1, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3153
    :goto_1
    new-instance v0, Landroid/text/style/TtsSpan$TelephoneBuilder;

    invoke-direct {v0}, Landroid/text/style/TtsSpan$TelephoneBuilder;-><init>()V

    .line 3154
    .local v0, "builder":Landroid/text/style/TtsSpan$TelephoneBuilder;
    if-nez v1, :cond_1

    .line 3157
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->splitAtNonNumerics(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setNumberParts(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;

    .line 3164
    :goto_2
    invoke-virtual {v0}, Landroid/text/style/TtsSpan$TelephoneBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v3

    goto :goto_0

    .line 3159
    :cond_1
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3160
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setCountryCode(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;

    .line 3162
    :cond_2
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setNumberParts(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;

    goto :goto_2

    .line 3149
    .end local v0    # "builder":Landroid/text/style/TtsSpan$TelephoneBuilder;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "phoneNumber"    # Ljava/lang/CharSequence;

    .prologue
    .line 3075
    if-nez p0, :cond_0

    .line 3076
    const/4 v0, 0x0

    .line 3080
    :goto_0
    return-object v0

    .line 3078
    :cond_0
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    .line 3079
    .local v0, "spannable":Landroid/text/Spannable;
    const/4 v1, 0x0

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->addTtsSpan(Landroid/text/Spannable;II)V

    goto :goto_0
.end method

.method private static displayAssistedParams()V
    .locals 3

    .prologue
    .line 5369
    const-string v0, "PhoneNumberUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " refCountryName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/telephony/PhoneNumberUtils;->refCountryName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " refCountryMCC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/telephony/PhoneNumberUtils;->refCountryMCC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " refCountryIDDPrefix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " refCountryNDDPrefix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " refCountryAreaCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " refCountryNationalNumberLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isNANPCountry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/telephony/PhoneNumberUtils;->isNANPCountry:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " refCountryCountryCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isNBPCDSupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isGSMRegistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isCDMARegistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5380
    const-string v0, "PhoneNumberUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isNetRoaming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " numberLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " otaCountryName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/telephony/PhoneNumberUtils;->otaCountryName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " otaCountryMCC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " otaCountryIDDPrefix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " otaCountryNDDPrefix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isOTANANPCountry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/telephony/PhoneNumberUtils;->isOTANANPCountry:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " otaCountryCountryCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isOTANBPCDSupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/telephony/PhoneNumberUtils;->isOTANBPCDSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5389
    return-void
.end method

.method public static extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 311
    if-nez p0, :cond_0

    .line 312
    const/4 v6, 0x0

    .line 337
    :goto_0
    return-object v6

    .line 315
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 316
    .local v3, "len":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 318
    .local v5, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 319
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 321
    .local v0, "c":C
    const/16 v6, 0xa

    invoke-static {v0, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 322
    .local v1, "digit":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    .line 323
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 318
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 324
    :cond_2
    const/16 v6, 0x2b

    if-ne v0, v6, :cond_4

    .line 326
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 327
    .local v4, "prefix":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "*31#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "#31#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 328
    :cond_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 330
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 331
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 332
    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 337
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 350
    if-nez p0, :cond_0

    .line 351
    const/4 v5, 0x0

    .line 373
    :goto_0
    return-object v5

    .line 354
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 355
    .local v3, "len":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 356
    .local v4, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 358
    .local v1, "haveSeenPlus":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 359
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 360
    .local v0, "c":C
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_3

    .line 361
    if-eqz v1, :cond_2

    .line 358
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 364
    :cond_2
    const/4 v1, 0x1

    .line 366
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 367
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 368
    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 373
    .end local v0    # "c":C
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static extractNetworkPortionchangePlusCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 5914
    if-nez p1, :cond_0

    .line 5915
    const/4 v6, 0x0

    .line 5941
    :goto_0
    return-object v6

    .line 5918
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 5919
    .local v4, "len":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5920
    .local v5, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 5921
    .local v1, "firstCharAdded":Z
    const/4 v2, 0x0

    .line 5922
    .local v2, "firstCharPause":Z
    const/4 v6, 0x0

    .line 5924
    .local v6, "tempstrng":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 5925
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 5927
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 5928
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5924
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5929
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5930
    if-nez v3, :cond_3

    .line 5931
    const/4 v2, 0x1

    .line 5936
    .end local v0    # "c":C
    :cond_3
    if-nez v2, :cond_4

    .line 5937
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5938
    invoke-static {p0, v6}, Landroid/telephony/PhoneNumberUtils;->processPlusCodeWithinNanp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5939
    goto :goto_0

    :cond_4
    move-object v6, p1

    .line 5941
    goto :goto_0
.end method

.method public static extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 492
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 508
    :goto_0
    return-object v5

    .line 495
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 497
    .local v2, "ret":Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 499
    .local v4, "trimIndex":I
    add-int/lit8 v1, v4, 0x1

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 500
    .local v3, "s":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 502
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 503
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 504
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 500
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 508
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private static findDialableIndexFromPostDialStr(Ljava/lang/String;)I
    .locals 3
    .param p0, "postDialStr"    # Ljava/lang/String;

    .prologue
    .line 3512
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3513
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3514
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3518
    .end local v0    # "c":C
    .end local v1    # "index":I
    :goto_1
    return v1

    .line 3512
    .restart local v0    # "c":C
    .restart local v1    # "index":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3518
    .end local v0    # "c":C
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static formatJapaneseNumber(Landroid/text/Editable;)V
    .locals 0
    .param p0, "text"    # Landroid/text/Editable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1665
    invoke-static {p0}, Landroid/telephony/JapanesePhoneNumberFormatter;->format(Landroid/text/Editable;)V

    .line 1666
    return-void
.end method

.method public static formatKRnpNumber(Landroid/text/Editable;)V
    .locals 13
    .param p0, "text"    # Landroid/text/Editable;

    .prologue
    .line 1725
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1728
    .local v3, "length":I
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "-"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    .line 1729
    .local v4, "lengthRemovedDash":I
    const/16 v10, 0xc

    if-le v4, v10, :cond_1

    .line 1731
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    .line 1959
    :cond_0
    :goto_0
    return-void

    .line 1733
    :cond_1
    const/4 v10, 0x2

    if-lt v3, v10, :cond_0

    .line 1738
    const/4 v9, 0x5

    .line 1739
    .local v9, "state":I
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1741
    .local v0, "Digits":Ljava/lang/String;
    const/4 v10, 0x6

    if-ge v3, v10, :cond_3

    const-string v10, "-"

    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1742
    const/4 v6, 0x0

    .line 1743
    .local v6, "p":I
    :goto_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v10

    if-ge v6, v10, :cond_0

    .line 1744
    invoke-interface {p0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_2

    .line 1745
    add-int/lit8 v10, v6, 0x1

    invoke-interface {p0, v6, v10}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1

    .line 1747
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1754
    .end local v6    # "p":I
    :cond_3
    const/4 v6, 0x0

    .line 1755
    .restart local v6    # "p":I
    :goto_2
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v10

    if-ge v6, v10, :cond_6

    .line 1756
    invoke-interface {p0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    if-eq v10, v11, :cond_4

    invoke-interface {p0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x2f

    if-ne v10, v11, :cond_5

    .line 1757
    :cond_4
    add-int/lit8 v10, v6, 0x1

    invoke-interface {p0, v6, v10}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_2

    .line 1759
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1762
    :cond_6
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v10

    if-eq v3, v10, :cond_7

    .line 1763
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1765
    :cond_7
    const/4 v10, 0x1

    if-lt v3, v10, :cond_0

    .line 1768
    const/4 v10, 0x0

    invoke-interface {p0, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x30

    if-ne v10, v11, :cond_b

    .line 1769
    const/4 v10, 0x2

    if-lt v3, v10, :cond_0

    .line 1770
    const/4 v10, 0x1

    invoke-interface {p0, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x32

    if-ne v10, v11, :cond_8

    .line 1771
    const/4 v9, 0x6

    .line 1812
    :goto_3
    const/4 v10, 0x0

    invoke-interface {p0, v10, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1814
    .local v8, "saved":Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 1815
    :goto_4
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v10

    if-ge v6, v10, :cond_13

    .line 1816
    invoke-interface {p0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_12

    .line 1817
    add-int/lit8 v10, v6, 0x1

    invoke-interface {p0, v6, v10}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_4

    .line 1773
    .end local v8    # "saved":Ljava/lang/CharSequence;
    :cond_8
    const/4 v10, 0x3

    if-lt v3, v10, :cond_0

    .line 1774
    const-string v10, "0505"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "050-5"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1775
    :cond_9
    const/16 v9, 0xe

    goto :goto_3

    .line 1777
    :cond_a
    const/4 v9, 0x7

    goto :goto_3

    .line 1779
    :cond_b
    const/4 v10, 0x0

    invoke-interface {p0, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x2a

    if-ne v10, v11, :cond_e

    .line 1780
    const/4 v10, 0x4

    if-lt v3, v10, :cond_0

    .line 1781
    const-string v10, "*23#"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    const-string v10, "*22#"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    const-string v10, "*31#"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1782
    :cond_c
    const/4 v10, 0x5

    if-gt v3, v10, :cond_0

    .line 1783
    const/16 v9, 0xa

    goto :goto_3

    .line 1784
    :cond_d
    const-string v10, "*230#"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1785
    const/4 v10, 0x6

    if-gt v3, v10, :cond_0

    .line 1786
    const/16 v9, 0xb

    goto :goto_3

    .line 1791
    :cond_e
    const/4 v10, 0x0

    invoke-interface {p0, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x23

    if-ne v10, v11, :cond_10

    .line 1792
    const/4 v10, 0x2

    if-lt v3, v10, :cond_0

    .line 1793
    const/4 v10, 0x1

    invoke-interface {p0, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x39

    if-ne v10, v11, :cond_f

    .line 1794
    const/4 v10, 0x3

    if-gt v3, v10, :cond_0

    .line 1795
    const/16 v9, 0x8

    goto/16 :goto_3

    .line 1796
    :cond_f
    const-string v10, "#31#"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1797
    const/4 v10, 0x5

    if-gt v3, v10, :cond_0

    .line 1798
    const/16 v9, 0xa

    goto/16 :goto_3

    .line 1803
    :cond_10
    const/4 v10, 0x0

    invoke-interface {p0, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x2b

    if-ne v10, v11, :cond_11

    .line 1804
    const/4 v10, 0x6

    if-lt v3, v10, :cond_0

    const/16 v10, 0xe

    if-gt v3, v10, :cond_0

    .line 1805
    const/16 v9, 0x9

    goto/16 :goto_3

    .line 1807
    :cond_11
    const/4 v10, 0x5

    if-lt v3, v10, :cond_0

    const/16 v10, 0xe

    if-gt v3, v10, :cond_0

    .line 1808
    const/4 v9, 0x5

    goto/16 :goto_3

    .line 1819
    .restart local v8    # "saved":Ljava/lang/CharSequence;
    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 1823
    :cond_13
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1825
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "3003003000"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 1826
    const/4 v10, 0x0

    const-string v11, "300-300-3000"

    invoke-interface {p0, v10, v3, v11}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1833
    :cond_14
    const/4 v10, 0x2

    new-array v1, v10, [I

    .line 1834
    .local v1, "dashPositions":[I
    const/4 v5, 0x0

    .line 1837
    .local v5, "numDashes":I
    packed-switch v9, :pswitch_data_0

    .line 1946
    :pswitch_0
    const/4 v10, 0x0

    invoke-interface {p0, v10, v3, v8}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1839
    :pswitch_1
    const/4 v10, 0x3

    if-gt v3, v10, :cond_17

    .line 1840
    const/4 v5, 0x0

    .line 1951
    :cond_15
    :goto_5
    if-eqz v5, :cond_0

    .line 1952
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v5, :cond_0

    .line 1953
    aget v7, v1, v2

    .line 1954
    .local v7, "pos":I
    add-int v10, v7, v2

    if-ltz v10, :cond_16

    add-int v10, v7, v2

    if-gt v10, v3, :cond_16

    .line 1955
    add-int v10, v7, v2

    add-int v11, v7, v2

    const-string v12, "-"

    invoke-interface {p0, v10, v11, v12}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1952
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1842
    .end local v2    # "i":I
    .end local v7    # "pos":I
    :cond_17
    const/4 v10, 0x7

    if-gt v3, v10, :cond_18

    .line 1843
    const/4 v10, 0x0

    const/4 v11, 0x3

    aput v11, v1, v10

    .line 1844
    const/4 v5, 0x1

    .line 1845
    goto :goto_5

    .line 1846
    :cond_18
    const/4 v10, 0x7

    if-le v3, v10, :cond_19

    const/16 v10, 0xa

    if-gt v3, v10, :cond_19

    .line 1847
    const/4 v10, 0x0

    const/4 v11, 0x3

    aput v11, v1, v10

    .line 1848
    const/4 v10, 0x1

    add-int/lit8 v11, v3, -0x4

    aput v11, v1, v10

    .line 1849
    const/4 v5, 0x2

    .line 1850
    goto :goto_5

    .line 1851
    :cond_19
    const/16 v10, 0xa

    if-le v3, v10, :cond_15

    .line 1852
    const/4 v10, 0x0

    const/4 v11, 0x3

    aput v11, v1, v10

    .line 1853
    const/4 v10, 0x1

    const/4 v11, 0x7

    aput v11, v1, v10

    .line 1854
    const/4 v5, 0x2

    goto :goto_5

    .line 1858
    :pswitch_2
    const/4 v10, 0x4

    if-gt v3, v10, :cond_1a

    .line 1859
    const/4 v5, 0x0

    .line 1860
    goto :goto_5

    .line 1861
    :cond_1a
    const/16 v10, 0x8

    if-gt v3, v10, :cond_1b

    .line 1862
    const/4 v10, 0x0

    const/4 v11, 0x4

    aput v11, v1, v10

    .line 1863
    const/4 v5, 0x1

    .line 1864
    goto :goto_5

    .line 1865
    :cond_1b
    const/16 v10, 0x8

    if-le v3, v10, :cond_1c

    const/16 v10, 0xb

    if-gt v3, v10, :cond_1c

    .line 1866
    const/4 v10, 0x0

    const/4 v11, 0x4

    aput v11, v1, v10

    .line 1867
    const/4 v10, 0x1

    add-int/lit8 v11, v3, -0x4

    aput v11, v1, v10

    .line 1868
    const/4 v5, 0x2

    .line 1869
    goto :goto_5

    .line 1870
    :cond_1c
    const/16 v10, 0xb

    if-le v3, v10, :cond_15

    .line 1871
    const/4 v10, 0x0

    const/4 v11, 0x4

    aput v11, v1, v10

    .line 1872
    const/4 v10, 0x1

    const/16 v11, 0x8

    aput v11, v1, v10

    .line 1873
    const/4 v5, 0x2

    goto :goto_5

    .line 1877
    :pswitch_3
    const/4 v10, 0x2

    if-gt v3, v10, :cond_1d

    .line 1878
    const/4 v5, 0x0

    .line 1879
    goto :goto_5

    .line 1880
    :cond_1d
    const/4 v10, 0x6

    if-gt v3, v10, :cond_1e

    .line 1881
    const/4 v10, 0x0

    const/4 v11, 0x2

    aput v11, v1, v10

    .line 1882
    const/4 v5, 0x1

    .line 1883
    goto/16 :goto_5

    .line 1884
    :cond_1e
    const/4 v10, 0x6

    if-le v3, v10, :cond_1f

    const/16 v10, 0x9

    if-gt v3, v10, :cond_1f

    .line 1885
    const/4 v10, 0x0

    const/4 v11, 0x2

    aput v11, v1, v10

    .line 1886
    const/4 v10, 0x1

    add-int/lit8 v11, v3, -0x4

    aput v11, v1, v10

    .line 1887
    const/4 v5, 0x2

    .line 1888
    goto/16 :goto_5

    .line 1889
    :cond_1f
    const/16 v10, 0x9

    if-le v3, v10, :cond_15

    .line 1890
    const/4 v10, 0x0

    const/4 v11, 0x2

    aput v11, v1, v10

    .line 1891
    const/4 v10, 0x1

    const/4 v11, 0x6

    aput v11, v1, v10

    .line 1892
    const/4 v5, 0x2

    goto/16 :goto_5

    .line 1896
    :pswitch_4
    const/4 v10, 0x2

    if-gt v3, v10, :cond_20

    .line 1897
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 1899
    :cond_20
    const/4 v10, 0x0

    const/4 v11, 0x2

    aput v11, v1, v10

    .line 1900
    const/4 v5, 0x1

    .line 1902
    goto/16 :goto_5

    .line 1904
    :pswitch_5
    const/4 v10, 0x4

    if-gt v3, v10, :cond_21

    .line 1905
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 1907
    :cond_21
    const/4 v10, 0x0

    const/4 v11, 0x4

    aput v11, v1, v10

    .line 1908
    const/4 v5, 0x1

    .line 1910
    goto/16 :goto_5

    .line 1912
    :pswitch_6
    const/4 v10, 0x5

    if-gt v3, v10, :cond_22

    .line 1913
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 1915
    :cond_22
    const/4 v10, 0x0

    const/4 v11, 0x5

    aput v11, v1, v10

    .line 1916
    const/4 v5, 0x1

    .line 1918
    goto/16 :goto_5

    .line 1920
    :pswitch_7
    const/16 v10, 0x8

    if-gt v3, v10, :cond_23

    .line 1921
    const/4 v10, 0x0

    add-int/lit8 v11, v3, -0x4

    aput v11, v1, v10

    .line 1922
    const/4 v5, 0x1

    .line 1923
    goto/16 :goto_5

    .line 1924
    :cond_23
    const/16 v10, 0x8

    if-le v3, v10, :cond_15

    .line 1925
    const/4 v10, 0x0

    const/4 v11, 0x4

    aput v11, v1, v10

    .line 1926
    const/4 v5, 0x1

    goto/16 :goto_5

    .line 1930
    :pswitch_8
    const/4 v10, 0x3

    if-gt v3, v10, :cond_24

    .line 1931
    const/4 v5, 0x0

    .line 1932
    goto/16 :goto_5

    .line 1934
    :cond_24
    const/4 v10, 0x7

    if-gt v3, v10, :cond_25

    .line 1935
    const/4 v10, 0x0

    const/4 v11, 0x3

    aput v11, v1, v10

    .line 1936
    const/4 v5, 0x1

    .line 1937
    goto/16 :goto_5

    .line 1938
    :cond_25
    const/4 v10, 0x7

    if-le v3, v10, :cond_15

    .line 1939
    const/4 v10, 0x0

    const/4 v11, 0x4

    aput v11, v1, v10

    .line 1940
    const/4 v5, 0x1

    goto/16 :goto_5

    .line 1837
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_8
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static formatNanpNumber(Landroid/text/Editable;)V
    .locals 15
    .param p0, "text"    # Landroid/text/Editable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x3

    const/4 v12, 0x0

    .line 1549
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    .line 1550
    .local v4, "length":I
    const-string v11, "+1-nnn-nnn-nnnn"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-le v4, v11, :cond_1

    .line 1644
    :cond_0
    :goto_0
    return-void

    .line 1553
    :cond_1
    const/4 v11, 0x5

    if-le v4, v11, :cond_0

    .line 1558
    invoke-interface {p0, v12, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1561
    .local v9, "saved":Ljava/lang/CharSequence;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    .line 1562
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    .line 1567
    new-array v1, v13, [I

    .line 1568
    .local v1, "dashPositions":[I
    const/4 v5, 0x0

    .line 1570
    .local v5, "numDashes":I
    const/4 v10, 0x1

    .line 1571
    .local v10, "state":I
    const/4 v7, 0x0

    .line 1572
    .local v7, "numDigits":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v6, v5

    .end local v5    # "numDashes":I
    .local v6, "numDashes":I
    :goto_1
    if-ge v2, v4, :cond_8

    .line 1573
    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 1574
    .local v0, "c":C
    packed-switch v0, :pswitch_data_0

    .line 1618
    :cond_2
    :pswitch_0
    invoke-interface {p0, v12, v4, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 1576
    :pswitch_1
    if-eqz v7, :cond_3

    if-ne v10, v14, :cond_4

    .line 1577
    :cond_3
    const/4 v10, 0x3

    move v5, v6

    .line 1572
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    goto :goto_1

    .line 1590
    :cond_4
    :pswitch_2
    if-ne v10, v14, :cond_5

    .line 1592
    invoke-interface {p0, v12, v4, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 1594
    :cond_5
    if-ne v10, v13, :cond_6

    .line 1596
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    aput v2, v1, v6

    .line 1601
    :goto_3
    const/4 v10, 0x1

    .line 1602
    add-int/lit8 v7, v7, 0x1

    .line 1603
    goto :goto_2

    .line 1597
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_6
    const/4 v11, 0x4

    if-eq v10, v11, :cond_b

    if-eq v7, v13, :cond_7

    const/4 v11, 0x6

    if-ne v7, v11, :cond_b

    .line 1599
    :cond_7
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    aput v2, v1, v6

    goto :goto_3

    .line 1606
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :pswitch_3
    const/4 v10, 0x4

    move v5, v6

    .line 1607
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_2

    .line 1610
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :pswitch_4
    if-nez v2, :cond_2

    .line 1612
    const/4 v10, 0x2

    move v5, v6

    .line 1613
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_2

    .line 1623
    .end local v0    # "c":C
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_8
    const/4 v11, 0x7

    if-ne v7, v11, :cond_a

    .line 1625
    add-int/lit8 v5, v6, -0x1

    .line 1629
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    :goto_4
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v5, :cond_9

    .line 1630
    aget v8, v1, v2

    .line 1631
    .local v8, "pos":I
    add-int v11, v8, v2

    add-int v12, v8, v2

    const-string v13, "-"

    invoke-interface {p0, v11, v12, v13}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1629
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1635
    .end local v8    # "pos":I
    :cond_9
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1636
    .local v3, "len":I
    :goto_6
    if-lez v3, :cond_0

    .line 1637
    add-int/lit8 v11, v3, -0x1

    invoke-interface {p0, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v11

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_0

    .line 1638
    add-int/lit8 v11, v3, -0x1

    invoke-interface {p0, v11, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1639
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .end local v3    # "len":I
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_a
    move v5, v6

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_4

    .end local v5    # "numDashes":I
    .restart local v0    # "c":C
    .restart local v6    # "numDashes":I
    :cond_b
    move v5, v6

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_3

    .line 1574
    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1431
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1432
    .local v0, "text":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1433
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "defaultFormattingType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1450
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1451
    .local v0, "text":Landroid/text/SpannableStringBuilder;
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1452
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 2041
    const-string v3, "#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "*"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v1, p0

    .line 2077
    :goto_0
    return-object v1

    .line 2045
    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 2046
    .local v2, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v1, 0x0

    .line 2048
    .local v1, "result":Ljava/lang/String;
    const-string v3, "SKT"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "KTT"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "LGT"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "KOO"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const-string v3, "+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2053
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v3

    invoke-static {p0, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2056
    :cond_3
    :try_start_0
    invoke-virtual {v2, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 2062
    .local v0, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    const-string v3, "KR"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    const-string v4, "KR"

    invoke-virtual {v2, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_4

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v3

    sget-object v4, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-ne v3, v4, :cond_4

    .line 2066
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v2, v0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2068
    :cond_4
    sget-object v3, Landroid/telephony/PhoneNumberUtils;->mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v3, :cond_6

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v4, "-GLB-USA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_5

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v4, "-CDM-USA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_6

    :cond_5
    const-string v3, "US"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2070
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "formatNumber - ISO: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 2072
    :cond_6
    invoke-virtual {v2, v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatInOriginalFormat(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto/16 :goto_0

    .line 2074
    .end local v0    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method public static formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "phoneNumberE164"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 2100
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2101
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2102
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2124
    .end local p0    # "phoneNumber":Ljava/lang/String;
    :goto_1
    return-object p0

    .line 2101
    .restart local p0    # "phoneNumber":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2106
    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v5

    .line 2108
    .local v5, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_2

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_2

    .line 2113
    :try_start_0
    const-string v6, "ZZ"

    invoke-virtual {v5, p1, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 2114
    .local v2, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v5, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 2115
    .local v3, "regionCode":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-gtz v6, :cond_2

    .line 2118
    move-object p2, v3

    .line 2123
    .end local v2    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v3    # "regionCode":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-static {p0, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2124
    .local v4, "result":Ljava/lang/String;
    if-eqz v4, :cond_3

    .end local v4    # "result":Ljava/lang/String;
    :goto_3
    move-object p0, v4

    goto :goto_1

    .restart local v4    # "result":Ljava/lang/String;
    :cond_3
    move-object v4, p0

    goto :goto_3

    .line 2120
    .end local v4    # "result":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public static formatNumber(Landroid/text/Editable;I)V
    .locals 8
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "defaultFormattingType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v7, 0x38

    const/16 v6, 0x31

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1483
    move v0, p1

    .line 1485
    .local v0, "formatType":I
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    .line 1486
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_2

    .line 1487
    const/4 v0, 0x1

    .line 1503
    :cond_0
    :goto_0
    sparse-switch v0, :sswitch_data_0

    .line 1524
    :cond_1
    :goto_1
    return-void

    .line 1488
    :cond_2
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lt v1, v5, :cond_3

    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_3

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_3

    .line 1490
    const/4 v0, 0x2

    goto :goto_0

    .line 1492
    :cond_3
    const-string v1, "SKT"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "KTT"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "LGT"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "KOO"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lt v1, v5, :cond_5

    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_5

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_5

    .line 1497
    const/16 v0, 0x52

    goto :goto_0

    .line 1499
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 1505
    :sswitch_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    goto :goto_1

    .line 1508
    :sswitch_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatJapaneseNumber(Landroid/text/Editable;)V

    goto :goto_1

    .line 1512
    :sswitch_2
    const-string v1, "SKT"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "KTT"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "LGT"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "KOO"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1516
    :cond_6
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatKRnpNumber(Landroid/text/Editable;)V

    goto/16 :goto_1

    .line 1521
    :sswitch_3
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    goto/16 :goto_1

    .line 1503
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method private static formatNumberInternal(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .locals 3
    .param p0, "rawPhoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;
    .param p2, "formatIdentifier"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .prologue
    .line 2015
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    .line 2017
    .local v1, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_start_0
    invoke-virtual {v1, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 2018
    .local v0, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2019
    invoke-virtual {v1, v0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2023
    .end local v0    # "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :goto_0
    return-object v2

    .line 2021
    :catch_0
    move-exception v2

    .line 2023
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 1985
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberInternal(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatNumberToRFC3966(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 1996
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberInternal(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentIdp(Z)Ljava/lang/String;
    .locals 3
    .param p0, "useNanp"    # Z

    .prologue
    .line 3273
    const/4 v0, 0x0

    .line 3274
    .local v0, "ps":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 3275
    const-string v0, "011"

    .line 3280
    :goto_0
    return-object v0

    .line 3278
    :cond_0
    const-string v1, "gsm.operator.idpstring"

    const-string v2, "+"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCurrentOtaCountryIdd(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 4676
    const-string v2, ""

    .line 4678
    .local v2, "idd":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "assisted_dialing"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 4679
    .local v1, "enableAssistedDialing":I
    if-ne v1, v3, :cond_2

    :goto_0
    invoke-static {p0, v3}, Landroid/telephony/PhoneNumberUtils;->getOtaCountry(Landroid/content/Context;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 4681
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4682
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4685
    :cond_0
    if-eqz v0, :cond_1

    .line 4686
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4690
    :cond_1
    return-object v2

    .line 4679
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getCurrentOtaCountryNanp(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 4697
    const-string v2, ""

    .line 4699
    .local v2, "nanp":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "assisted_dialing"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 4700
    .local v1, "enableAssistedDialing":I
    if-ne v1, v3, :cond_2

    :goto_0
    invoke-static {p0, v3}, Landroid/telephony/PhoneNumberUtils;->getOtaCountry(Landroid/content/Context;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 4702
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4703
    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4706
    :cond_0
    if-eqz v0, :cond_1

    .line 4707
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4711
    :cond_1
    return-object v2

    .line 4700
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static getDefaultVoiceSubId()I
    .locals 1

    .prologue
    .line 3856
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    return v0
.end method

.method public static getEmergencyServiceCategory(ILjava/lang/String;)Ljava/lang/String;
    .locals 25
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 4049
    const-string v17, ""

    .line 4051
    .local v17, "numbers":Ljava/lang/String;
    if-nez p1, :cond_1

    const/4 v4, 0x0

    .line 4215
    :cond_0
    :goto_0
    return-object v4

    .line 4054
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    .line 4055
    :cond_2
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    const/16 v24, 0x2f

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    const/4 v4, 0x0

    goto :goto_0

    .line 4057
    :cond_3
    invoke-static/range {p0 .. p0}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v21

    .line 4058
    .local v21, "slotId":I
    invoke-static/range {p0 .. p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v18

    .line 4060
    .local v18, "phoneId":I
    if-gtz v21, :cond_d

    const-string/jumbo v6, "ril.ecclist_net0"

    .line 4063
    .local v6, "ecclistNetProp":Ljava/lang/String;
    :goto_1
    const-string/jumbo v23, "ro.csc.sales_code"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 4079
    .local v19, "salesCode":Ljava/lang/String;
    if-gtz v21, :cond_4

    const/16 v21, 0x0

    .line 4082
    :cond_4
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "getEmergencyServiceCategory slodId = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 4084
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v23

    sput v23, Landroid/telephony/PhoneNumberUtils;->phoneType:I

    .line 4085
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v23, "gsm.sim.operator.numeric"

    const-string v24, "0"

    move/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 4087
    .local v20, "simOperator":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "getEmergencyServiceCategory simOperator = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 4089
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v23

    const-string v24, "CscFeature_RIL_ConvertPlusPrefixNumberToMnoCode"

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 4091
    const-string v23, "184"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_5

    const-string v23, "186"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 4092
    :cond_5
    const/16 v23, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 4098
    :cond_6
    sget-object v23, Landroid/telephony/PhoneNumberUtils;->mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v23, :cond_f

    sget-object v23, Landroid/telephony/PhoneNumberUtils;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v24, "-GLB-USA"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    if-ltz v23, :cond_f

    .line 4099
    const-string/jumbo v23, "ro.ril.ecclist"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4100
    .local v7, "ecclist_cdma":Ljava/lang/String;
    const/4 v12, 0x0

    .line 4101
    .local v12, "i":I
    :goto_2
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "ril.ecclist"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 4102
    .local v14, "key":Ljava/lang/String;
    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 4103
    .local v16, "n":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v23

    if-nez v23, :cond_e

    .line 4107
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_7

    .line 4108
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 4160
    .end local v7    # "ecclist_cdma":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v16    # "n":Ljava/lang/String;
    :cond_7
    :goto_3
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4161
    .local v8, "ecclist_net":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_8

    .line 4162
    const-string v23, "DTM"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_16

    .line 4163
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 4169
    :cond_8
    :goto_4
    const-string/jumbo v23, "persist.radio.test_emer_num"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4170
    .local v10, "ecclist_test":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_9

    .line 4171
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 4180
    :cond_9
    sget-object v23, Landroid/telephony/PhoneNumberUtils;->mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v23, :cond_c

    sget-object v23, Landroid/telephony/PhoneNumberUtils;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v24, "-GLB-USA"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    if-gez v23, :cond_a

    sget-object v23, Landroid/telephony/PhoneNumberUtils;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v24, "-CDM-USA"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    if-ltz v23, :cond_c

    .line 4182
    :cond_a
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "ril.ecclist"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4183
    .local v9, "ecclist_pbm":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_b

    .line 4184
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 4186
    :cond_b
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "ECC List: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 4189
    .end local v9    # "ecclist_pbm":Ljava/lang/String;
    :cond_c
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_1c

    .line 4192
    const-string v23, ","

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "arr$":[Ljava/lang/String;
    array-length v15, v3

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_5
    if-ge v13, v15, :cond_1b

    aget-object v11, v3, v13

    .line 4193
    .local v11, "emergencyNum":Ljava/lang/String;
    const-string v23, "/"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 4194
    .local v22, "splitStr":[Ljava/lang/String;
    const/16 v23, 0x0

    aget-object v5, v22, v23

    .line 4195
    .local v5, "eccNum":Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_17

    const/16 v23, 0x1

    aget-object v4, v22, v23

    .line 4196
    .local v4, "eccCat":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1a

    .line 4197
    const-string v23, "46605"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 4198
    const-string v23, "119"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_18

    .line 4199
    const/16 v23, 0x2

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 4060
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "eccCat":Ljava/lang/String;
    .end local v5    # "eccNum":Ljava/lang/String;
    .end local v6    # "ecclistNetProp":Ljava/lang/String;
    .end local v8    # "ecclist_net":Ljava/lang/String;
    .end local v10    # "ecclist_test":Ljava/lang/String;
    .end local v11    # "emergencyNum":Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    .end local v19    # "salesCode":Ljava/lang/String;
    .end local v20    # "simOperator":Ljava/lang/String;
    .end local v22    # "splitStr":[Ljava/lang/String;
    :cond_d
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "ril.ecclist_net"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 4104
    .restart local v6    # "ecclistNetProp":Ljava/lang/String;
    .restart local v7    # "ecclist_cdma":Ljava/lang/String;
    .restart local v12    # "i":I
    .restart local v14    # "key":Ljava/lang/String;
    .restart local v16    # "n":Ljava/lang/String;
    .restart local v19    # "salesCode":Ljava/lang/String;
    .restart local v20    # "simOperator":Ljava/lang/String;
    :cond_e
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 4105
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 4100
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 4114
    .end local v7    # "ecclist_cdma":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v16    # "n":Ljava/lang/String;
    :cond_f
    const-string v23, "CTC"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_10

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v23

    const-string v24, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_10

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v23

    const-string v24, "CscFeature_RIL_Support75Mode"

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_14

    :cond_10
    sget v23, Landroid/telephony/PhoneNumberUtils;->phoneType:I

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_14

    .line 4118
    sget v23, Landroid/telephony/PhoneNumberUtils;->phoneType:I

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_13

    .line 4119
    const-string/jumbo v23, "ro.ril.ecclist"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4120
    .restart local v7    # "ecclist_cdma":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, ":: ecclist for UIM"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " :: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 4122
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_11

    .line 4123
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 4126
    :cond_11
    const-string v23, "110"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_12

    const-string v23, "112"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_12

    const-string v23, "119"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_12

    const-string v23, "120"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_12

    const-string v23, "911"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_12

    const-string v23, "999"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_12

    const-string v23, "122"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_12

    const-string v23, "000"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_12

    const-string v23, "118"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_12

    const-string v23, "08"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 4130
    :cond_12
    const-string v4, ""

    goto/16 :goto_0

    .line 4133
    .end local v7    # "ecclist_cdma":Ljava/lang/String;
    :cond_13
    const/4 v12, 0x0

    .line 4134
    .restart local v12    # "i":I
    :goto_7
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "ril.ecclist"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 4135
    .restart local v14    # "key":Ljava/lang/String;
    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 4137
    .restart local v16    # "n":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_7

    .line 4140
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, ":: ecclist for SIM"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " ::"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 4142
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 4133
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 4146
    .end local v12    # "i":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v16    # "n":Ljava/lang/String;
    :cond_14
    sget v23, Landroid/telephony/PhoneNumberUtils;->phoneType:I

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_15

    .line 4147
    const-string/jumbo v23, "ro.ril.ecclist"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_3

    .line 4149
    :cond_15
    const/4 v12, 0x0

    .line 4150
    .restart local v12    # "i":I
    :goto_8
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "ril.ecclist"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 4151
    .restart local v14    # "key":Ljava/lang/String;
    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 4152
    .restart local v16    # "n":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_7

    .line 4153
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 4154
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 4149
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 4165
    .end local v12    # "i":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v16    # "n":Ljava/lang/String;
    .restart local v8    # "ecclist_net":Ljava/lang/String;
    :cond_16
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_4

    .line 4195
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v5    # "eccNum":Ljava/lang/String;
    .restart local v10    # "ecclist_test":Ljava/lang/String;
    .restart local v11    # "emergencyNum":Ljava/lang/String;
    .restart local v13    # "i$":I
    .restart local v15    # "len$":I
    .restart local v22    # "splitStr":[Ljava/lang/String;
    :cond_17
    const-string v4, ""

    goto/16 :goto_6

    .line 4200
    .restart local v4    # "eccCat":Ljava/lang/String;
    :cond_18
    const-string v23, "110"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_19

    const-string v23, "112"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 4201
    :cond_19
    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 4192
    :cond_1a
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    .line 4208
    .end local v4    # "eccCat":Ljava/lang/String;
    .end local v5    # "eccNum":Ljava/lang/String;
    .end local v11    # "emergencyNum":Ljava/lang/String;
    .end local v22    # "splitStr":[Ljava/lang/String;
    :cond_1b
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 4212
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    :cond_1c
    const-string v23, "112"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1d

    const-string v23, "911"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1e

    .line 4213
    :cond_1d
    const-string v4, ""

    goto/16 :goto_0

    .line 4215
    :cond_1e
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public static getEmergencyServiceCategory(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 4042
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->getEmergencyServiceCategory(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEmergencyServiceCategoryforkor(ILjava/lang/String;)Ljava/lang/String;
    .locals 31
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 4234
    const-string v17, "112,911,999,000,08,110,118,119,122,113,125,111,117"

    .line 4235
    .local v17, "korDefaultECCList":Ljava/lang/String;
    const-string v23, "EUR"

    .line 4236
    .local v23, "salesCode":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v27

    .line 4238
    .local v27, "slotId":I
    if-nez p1, :cond_0

    const/16 v29, 0x0

    .line 4665
    :goto_0
    return-object v29

    .line 4242
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4250
    .local v5, "dialNumber":Ljava/lang/String;
    const-string v21, ""

    .line 4252
    .local v21, "numbers":Ljava/lang/String;
    const/4 v11, 0x0

    .line 4253
    .local v11, "i":I
    :goto_1
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "ril.ecclist"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 4254
    .local v16, "key":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 4255
    .local v19, "n":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v29

    if-nez v29, :cond_2

    .line 4268
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 4269
    move-object/from16 v21, v17

    .line 4276
    :goto_2
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_66

    .line 4279
    const-string/jumbo v29, "ril.currentplmn"

    const-string v30, "domestic"

    invoke-static/range {v29 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4280
    .local v4, "currPlmn":Ljava/lang/String;
    const-string v29, "domestic"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_1

    const-string/jumbo v29, "unknown"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_4

    :cond_1
    const/4 v14, 0x1

    .line 4285
    .local v14, "isDomestic":Z
    :goto_3
    const-string v29, "SKT"

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1b

    .line 4313
    const-string v29, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v0, v2

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_4
    move/from16 v0, v18

    if-ge v12, v0, :cond_66

    aget-object v10, v2, v12

    .line 4314
    .local v10, "emergencyNum":Ljava/lang/String;
    const-string v29, "/"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 4315
    .local v28, "splitStr":[Ljava/lang/String;
    const/16 v29, 0x0

    aget-object v9, v28, v29

    .line 4316
    .local v9, "eccNum":Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_5

    const/16 v29, 0x1

    aget-object v8, v28, v29

    .line 4320
    .local v8, "eccCat":Ljava/lang/String;
    :goto_5
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1a

    .line 4321
    const-string v29, "112"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 4324
    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4256
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "currPlmn":Ljava/lang/String;
    .end local v8    # "eccCat":Ljava/lang/String;
    .end local v9    # "eccNum":Ljava/lang/String;
    .end local v10    # "emergencyNum":Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v14    # "isDomestic":Z
    .end local v18    # "len$":I
    .end local v28    # "splitStr":[Ljava/lang/String;
    :cond_2
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 4257
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 4252
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 4271
    :cond_3
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ","

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_2

    .line 4280
    .restart local v4    # "currPlmn":Ljava/lang/String;
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 4316
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v9    # "eccNum":Ljava/lang/String;
    .restart local v10    # "emergencyNum":Ljava/lang/String;
    .restart local v12    # "i$":I
    .restart local v14    # "isDomestic":Z
    .restart local v18    # "len$":I
    .restart local v28    # "splitStr":[Ljava/lang/String;
    :cond_5
    const-string v8, ""

    goto :goto_5

    .line 4325
    .restart local v8    # "eccCat":Ljava/lang/String;
    :cond_6
    const-string v29, "119"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_9

    .line 4326
    const-string/jumbo v29, "ril.skt119Cat"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4328
    .local v7, "ecc119":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_7

    move-object/from16 v29, v7

    .line 4329
    goto/16 :goto_0

    .line 4330
    :cond_7
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_8

    move-object/from16 v29, v8

    .line 4331
    goto/16 :goto_0

    .line 4333
    :cond_8
    const/16 v29, 0x4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4335
    .end local v7    # "ecc119":Ljava/lang/String;
    :cond_9
    const-string v29, "911"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 4336
    const/16 v29, 0x4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4337
    :cond_a
    const-string v29, "122"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_b

    .line 4338
    const/16 v29, 0x8

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4339
    :cond_b
    const-string v29, "113"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_d

    .line 4340
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v14, v0, :cond_c

    const/16 v29, 0x3

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_c
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 4341
    :cond_d
    const-string v29, "125"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_f

    .line 4342
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v14, v0, :cond_e

    const/16 v29, 0x9

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_e
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 4343
    :cond_f
    const-string v29, "117"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_11

    .line 4344
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v14, v0, :cond_10

    const/16 v29, 0x12

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_10
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 4345
    :cond_11
    const-string v29, "118"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_13

    .line 4346
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v14, v0, :cond_12

    const/16 v29, 0x13

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_12
    const/16 v29, 0x4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4347
    :cond_13
    const-string v29, "111"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_15

    .line 4348
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v14, v0, :cond_14

    const/16 v29, 0x6

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_14
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 4349
    :cond_15
    const-string v29, "127"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_16

    .line 4350
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 4351
    :cond_16
    const-string v29, "000"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_17

    const-string v29, "08"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_17

    const-string v29, "110"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_17

    const-string v29, "999"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_19

    .line 4355
    :cond_17
    if-nez v14, :cond_18

    const/16 v29, 0x4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_18
    const/16 v29, 0x0

    goto/16 :goto_0

    :cond_19
    move-object/from16 v29, v8

    .line 4358
    goto/16 :goto_0

    .line 4313
    :cond_1a
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 4362
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v8    # "eccCat":Ljava/lang/String;
    .end local v9    # "eccNum":Ljava/lang/String;
    .end local v10    # "emergencyNum":Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v18    # "len$":I
    .end local v28    # "splitStr":[Ljava/lang/String;
    :cond_1b
    const-string v29, "KTT"

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2b

    .line 4377
    const-string v29, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v0, v2

    move/from16 v18, v0

    .restart local v18    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_6
    move/from16 v0, v18

    if-ge v12, v0, :cond_66

    aget-object v10, v2, v12

    .line 4378
    .restart local v10    # "emergencyNum":Ljava/lang/String;
    const-string v29, "/"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 4379
    .restart local v28    # "splitStr":[Ljava/lang/String;
    const/16 v29, 0x0

    aget-object v9, v28, v29

    .line 4380
    .restart local v9    # "eccNum":Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_1c

    const/16 v29, 0x1

    aget-object v8, v28, v29

    .line 4384
    .restart local v8    # "eccCat":Ljava/lang/String;
    :goto_7
    const-string v29, "112"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1d

    .line 4385
    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4380
    .end local v8    # "eccCat":Ljava/lang/String;
    :cond_1c
    const-string v8, ""

    goto :goto_7

    .line 4386
    .restart local v8    # "eccCat":Ljava/lang/String;
    :cond_1d
    const-string v29, "119"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1e

    .line 4387
    const/16 v29, 0x4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4388
    :cond_1e
    const-string v29, "911"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1f

    .line 4389
    const/16 v29, 0x4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4390
    :cond_1f
    const-string v29, "122"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_20

    .line 4391
    const/16 v29, 0x8

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4392
    :cond_20
    const-string v29, "113"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_21

    .line 4393
    const/16 v29, 0x3

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4394
    :cond_21
    const-string v29, "125"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_22

    .line 4395
    const/16 v29, 0x9

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4396
    :cond_22
    const-string v29, "117"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_23

    .line 4397
    const/16 v29, 0x12

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4398
    :cond_23
    const-string v29, "118"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_24

    .line 4399
    const/16 v29, 0x13

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4400
    :cond_24
    const-string v29, "111"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_25

    .line 4401
    const/16 v29, 0x7

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4402
    :cond_25
    const-string v29, "127"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_26

    .line 4403
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 4404
    :cond_26
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_27

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_27

    move-object/from16 v29, v8

    .line 4406
    goto/16 :goto_0

    .line 4407
    :cond_27
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_28

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_28

    .line 4409
    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4410
    :cond_28
    const-string v29, "000"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_29

    const-string v29, "08"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_29

    const-string v29, "110"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_29

    const-string v29, "999"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2a

    .line 4414
    :cond_29
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 4377
    :cond_2a
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_6

    .line 4419
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v8    # "eccCat":Ljava/lang/String;
    .end local v9    # "eccNum":Ljava/lang/String;
    .end local v10    # "emergencyNum":Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v18    # "len$":I
    .end local v28    # "splitStr":[Ljava/lang/String;
    :cond_2b
    const-string v29, "LGT"

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4e

    .line 4457
    const-string/jumbo v29, "ril.currentplmn"

    const-string v30, "domestic"

    invoke-static/range {v29 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4461
    .local v3, "currIso":Ljava/lang/String;
    const-string v29, "gsm.sim.state"

    const-string v30, ""

    invoke-static/range {v29 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 4462
    .local v25, "simstate":Ljava/lang/String;
    const-string v29, "gsm.network.type"

    const-string v30, ""

    invoke-static/range {v29 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 4463
    .local v20, "network_type":Ljava/lang/String;
    const-string/jumbo v29, "ril.simtype"

    const-string v30, ""

    invoke-static/range {v29 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 4464
    .local v26, "simtype":Ljava/lang/String;
    const/4 v13, 0x0

    .line 4465
    .local v13, "isCdma":Z
    const/4 v15, 0x0

    .line 4466
    .local v15, "isLteOnly":Z
    const/16 v24, 0x0

    .line 4469
    .local v24, "serviceState":I
    :try_start_0
    const-string/jumbo v29, "phone"

    invoke-static/range {v29 .. v29}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v22

    .line 4470
    .local v22, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v22, :cond_2c

    .line 4471
    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_30

    const/4 v13, 0x1

    .line 4472
    :goto_8
    const/16 v24, 0x1

    .line 4479
    .end local v22    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_2c
    :goto_9
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v29

    const-string v30, "CscFeature_RIL_CallLteSinglemodeSupport"

    invoke-virtual/range {v29 .. v30}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_2d

    .line 4483
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "isLteOnly is serviceState : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 4484
    const/16 v29, 0x1

    move/from16 v0, v24

    move/from16 v1, v29

    if-eq v0, v1, :cond_2d

    .line 4486
    const/4 v15, 0x1

    .line 4490
    :cond_2d
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "isCdma = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 4493
    if-eqz v13, :cond_32

    const-string v29, "domestic"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_32

    const-string v29, "3"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_2e

    const-string v29, "18"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_32

    .line 4494
    :cond_2e
    const-string v29, "112"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_2f

    const-string v29, "119"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_2f

    const-string v29, "122"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_2f

    const-string v29, "113"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_2f

    const-string v29, "125"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_2f

    const-string v29, "117"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_2f

    const-string v29, "111"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_2f

    const-string v29, "114"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_2f

    const-string v29, "118"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_31

    .line 4497
    :cond_2f
    const-string v29, ""

    goto/16 :goto_0

    .line 4471
    .restart local v22    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_30
    const/4 v13, 0x0

    goto/16 :goto_8

    .line 4474
    .end local v22    # "phone":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v6

    .line 4475
    .local v6, "e":Landroid/os/RemoteException;
    const-string v29, "PhoneNumberUtils"

    const-string/jumbo v30, "phone.getActivePhoneType() failed"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 4499
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_31
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 4501
    :cond_32
    if-eqz v15, :cond_3d

    const-string v29, "domestic"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3d

    const-string v29, "3"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_33

    const-string v29, "18"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3d

    .line 4502
    :cond_33
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "isLteOnly emergency in domestic, dialNumber = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 4503
    const-string v29, "112"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_34

    .line 4504
    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4505
    :cond_34
    const-string v29, "119"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_35

    .line 4506
    const/16 v29, 0x4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4507
    :cond_35
    const-string v29, "911"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_36

    .line 4508
    const/16 v29, 0x4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4509
    :cond_36
    const-string v29, "122"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_37

    .line 4510
    const/16 v29, 0x8

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4511
    :cond_37
    const-string v29, "113"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_38

    .line 4512
    const/16 v29, 0x3

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4513
    :cond_38
    const-string v29, "125"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_39

    .line 4514
    const/16 v29, 0x9

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4515
    :cond_39
    const-string v29, "117"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3a

    .line 4516
    const/16 v29, 0x12

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4517
    :cond_3a
    const-string v29, "111"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3b

    .line 4518
    const/16 v29, 0x6

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4519
    :cond_3b
    const-string v29, "118"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3c

    .line 4520
    const/16 v29, 0x13

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4522
    :cond_3c
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 4524
    :cond_3d
    const-string/jumbo v29, "oversea"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_43

    .line 4525
    const-string v29, "112"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3e

    .line 4526
    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4527
    :cond_3e
    const-string v29, "122"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3f

    .line 4528
    const/16 v29, 0x8

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4529
    :cond_3f
    const-string v29, "911"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_40

    .line 4530
    const/16 v29, 0x4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4531
    :cond_40
    const-string v29, "119"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_42

    .line 4532
    const-string/jumbo v29, "ril.skt119Cat"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4534
    .restart local v7    # "ecc119":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_41

    move-object/from16 v29, v7

    .line 4535
    goto/16 :goto_0

    .line 4537
    :cond_41
    const/16 v29, 0x2

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4540
    .end local v7    # "ecc119":Ljava/lang/String;
    :cond_42
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 4543
    :cond_43
    const-string v29, "112"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_44

    .line 4544
    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4545
    :cond_44
    const-string v29, "119"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_45

    .line 4546
    const/16 v29, 0x4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4547
    :cond_45
    const-string v29, "911"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_46

    .line 4548
    const/16 v29, 0x4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4549
    :cond_46
    const-string v29, "122"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_47

    .line 4550
    const/16 v29, 0x8

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4551
    :cond_47
    const-string v29, "113"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_48

    .line 4552
    const/16 v29, 0x3

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4553
    :cond_48
    const-string v29, "125"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_49

    .line 4554
    const/16 v29, 0x9

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4555
    :cond_49
    const-string v29, "117"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4a

    .line 4556
    const/16 v29, 0x12

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4557
    :cond_4a
    const-string v29, "118"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4b

    .line 4558
    const/16 v29, 0x13

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4559
    :cond_4b
    const-string v29, "111"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4c

    .line 4560
    const/16 v29, 0x6

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4561
    :cond_4c
    if-eqz v13, :cond_4d

    const-string v29, "114"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4d

    .line 4562
    const-string v29, ""

    goto/16 :goto_0

    .line 4564
    :cond_4d
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 4567
    .end local v3    # "currIso":Ljava/lang/String;
    .end local v13    # "isCdma":Z
    .end local v15    # "isLteOnly":Z
    .end local v20    # "network_type":Ljava/lang/String;
    .end local v24    # "serviceState":I
    .end local v25    # "simstate":Ljava/lang/String;
    .end local v26    # "simtype":Ljava/lang/String;
    :cond_4e
    const-string v29, "ANY"

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_4f

    const-string v29, "OPEN"

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_4f

    const-string v29, "KOO"

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_66

    .line 4595
    :cond_4f
    const-string v29, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v0, v2

    move/from16 v18, v0

    .restart local v18    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_a
    move/from16 v0, v18

    if-ge v12, v0, :cond_66

    aget-object v10, v2, v12

    .line 4596
    .restart local v10    # "emergencyNum":Ljava/lang/String;
    const-string v29, "/"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 4597
    .restart local v28    # "splitStr":[Ljava/lang/String;
    const/16 v29, 0x0

    aget-object v9, v28, v29

    .line 4598
    .restart local v9    # "eccNum":Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_50

    const/16 v29, 0x1

    aget-object v8, v28, v29

    .line 4602
    .restart local v8    # "eccCat":Ljava/lang/String;
    :goto_b
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_65

    .line 4603
    const-string v29, "112"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_51

    .line 4606
    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4598
    .end local v8    # "eccCat":Ljava/lang/String;
    :cond_50
    const-string v8, ""

    goto :goto_b

    .line 4607
    .restart local v8    # "eccCat":Ljava/lang/String;
    :cond_51
    const-string v29, "119"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_54

    .line 4608
    const-string/jumbo v29, "ril.skt119Cat"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4610
    .restart local v7    # "ecc119":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_52

    move-object/from16 v29, v7

    .line 4611
    goto/16 :goto_0

    .line 4612
    :cond_52
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_53

    move-object/from16 v29, v8

    .line 4613
    goto/16 :goto_0

    .line 4615
    :cond_53
    const/16 v29, 0x4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4617
    .end local v7    # "ecc119":Ljava/lang/String;
    :cond_54
    const-string v29, "911"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_55

    .line 4618
    const/16 v29, 0x4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4619
    :cond_55
    const-string v29, "122"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_56

    .line 4620
    const/16 v29, 0x8

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4621
    :cond_56
    const-string v29, "113"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_58

    .line 4622
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v14, v0, :cond_57

    const/16 v29, 0x3

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_57
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 4623
    :cond_58
    const-string v29, "125"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_5a

    .line 4624
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v14, v0, :cond_59

    const/16 v29, 0x9

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_59
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 4625
    :cond_5a
    const-string v29, "127"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_5b

    .line 4626
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 4627
    :cond_5b
    const-string v29, "111"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_5d

    .line 4628
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v14, v0, :cond_5c

    const/16 v29, 0x6

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_5c
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 4629
    :cond_5d
    const-string v29, "117"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_5f

    .line 4630
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v14, v0, :cond_5e

    const/16 v29, 0x12

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_5e
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 4631
    :cond_5f
    const-string v29, "118"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_61

    .line 4632
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v14, v0, :cond_60

    const/16 v29, 0x13

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_60
    const/16 v29, 0x4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 4633
    :cond_61
    const-string v29, "000"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_62

    const-string v29, "08"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_62

    const-string v29, "110"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_62

    const-string v29, "999"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_64

    .line 4637
    :cond_62
    if-nez v14, :cond_63

    const/16 v29, 0x4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_63
    const/16 v29, 0x0

    goto/16 :goto_0

    :cond_64
    move-object/from16 v29, v8

    .line 4640
    goto/16 :goto_0

    .line 4595
    :cond_65
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_a

    .line 4648
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "currPlmn":Ljava/lang/String;
    .end local v8    # "eccCat":Ljava/lang/String;
    .end local v9    # "eccNum":Ljava/lang/String;
    .end local v10    # "emergencyNum":Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v14    # "isDomestic":Z
    .end local v18    # "len$":I
    .end local v28    # "splitStr":[Ljava/lang/String;
    :cond_66
    const-string/jumbo v29, "ril.currentplmn"

    const-string v30, "domestic"

    invoke-static/range {v29 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4651
    .restart local v3    # "currIso":Ljava/lang/String;
    const-string v29, "domestic"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_67

    const-string/jumbo v29, "unknown"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_67

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_6a

    .line 4652
    :cond_67
    const-string v29, "112"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_68

    const-string v29, "119"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_68

    const-string v29, "122"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_68

    const-string v29, "113"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_68

    const-string v29, "125"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_68

    const-string v29, "117"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_68

    const-string v29, "111"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_68

    const-string v29, "118"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_69

    .line 4655
    :cond_68
    const-string v29, ""

    goto/16 :goto_0

    .line 4657
    :cond_69
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 4660
    :cond_6a
    const-string v29, "000"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_6b

    const-string v29, "08"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_6b

    const-string v29, "110"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_6b

    const-string v29, "999"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_6b

    const-string v29, "118"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_6b

    const-string v29, "112"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_6b

    const-string v29, "911"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_6b

    const-string v29, "119"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_6b

    const-string v29, "122"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_6c

    .line 4663
    :cond_6b
    const-string v29, ""

    goto/16 :goto_0

    .line 4665
    :cond_6c
    const/16 v29, 0x0

    goto/16 :goto_0
.end method

.method public static getEmergencyServiceCategoryforkor(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 4225
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->getEmergencyServiceCategoryforkor(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFormatTypeForLocale(Ljava/util/Locale;)I
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1466
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1468
    .local v0, "country":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static getFormatTypeFromCountryCode(Ljava/lang/String;)I
    .locals 4
    .param p0, "country"    # Ljava/lang/String;

    .prologue
    .line 3293
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v1, v2

    .line 3295
    .local v1, "length":I
    const-string v2, "SKT"

    const-string v3, "EUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "KTT"

    const-string v3, "EUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "LGT"

    const-string v3, "EUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "KOO"

    const-string v3, "EUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "KR"

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 3300
    const/16 v2, 0x52

    .line 3311
    :goto_0
    return v2

    .line 3303
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 3304
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 3305
    const/4 v2, 0x1

    goto :goto_0

    .line 3303
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3308
    :cond_3
    const-string v2, "jp"

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 3309
    const/4 v2, 0x2

    goto :goto_0

    .line 3311
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getLTNContactsMatchLength(Landroid/content/Context;)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x1

    const/4 v9, 0x3

    .line 3866
    const/4 v3, 0x7

    .line 3867
    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "mcc":I
    const/4 v5, 0x0

    .line 3868
    .local v5, "mnc":I
    const/4 v1, 0x0

    .line 3870
    .local v1, "SimOperator":Ljava/lang/String;
    const-string v7, "clidigits.preferences_name"

    invoke-virtual {p0, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 3871
    .local v6, "sp":Landroid/content/SharedPreferences;
    const-string v7, "Clidigits"

    const/4 v8, 0x7

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3872
    .local v0, "Clidigits":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    if-eq v7, v10, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    if-nez v7, :cond_1

    .line 3984
    .end local v0    # "Clidigits":I
    :cond_0
    :goto_0
    return v0

    .line 3893
    .restart local v0    # "Clidigits":I
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 3896
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 3897
    const/4 v7, 0x0

    invoke-virtual {v1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 3898
    invoke-virtual {v1, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3903
    sparse-switch v4, :sswitch_data_0

    .line 3974
    const/4 v3, 0x7

    .line 3978
    :goto_1
    if-eq v0, v3, :cond_2

    .line 3979
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 3980
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "Clidigits"

    invoke-interface {v2, v7, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3981
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    move v0, v3

    .line 3984
    goto :goto_0

    .line 3914
    :sswitch_0
    const/4 v3, 0x7

    .line 3915
    goto :goto_1

    .line 3928
    :sswitch_1
    const/16 v3, 0x8

    .line 3929
    goto :goto_1

    .line 3934
    :sswitch_2
    const/16 v3, 0x9

    .line 3935
    goto :goto_1

    .line 3941
    :sswitch_3
    const/16 v3, 0xa

    .line 3942
    goto :goto_1

    .line 3946
    :sswitch_4
    const/16 v3, 0xb

    .line 3947
    goto :goto_1

    .line 3951
    :sswitch_5
    if-ne v5, v10, :cond_3

    .line 3952
    const/16 v3, 0x8

    goto :goto_1

    .line 3954
    :cond_3
    const/4 v3, 0x7

    .line 3955
    goto :goto_1

    .line 3959
    :sswitch_6
    if-eq v5, v10, :cond_4

    const/4 v7, 0x2

    if-eq v5, v7, :cond_4

    if-ne v5, v9, :cond_5

    .line 3960
    :cond_4
    const/4 v3, 0x7

    goto :goto_1

    .line 3962
    :cond_5
    const/16 v3, 0xa

    .line 3963
    goto :goto_1

    .line 3967
    :sswitch_7
    const/16 v7, 0x32

    if-eq v5, v7, :cond_6

    if-eq v5, v11, :cond_6

    const/16 v7, 0x1e

    if-eq v5, v7, :cond_6

    if-eq v5, v9, :cond_6

    const/16 v7, 0x9

    if-ne v5, v7, :cond_7

    .line 3968
    :cond_6
    const/4 v3, 0x7

    goto :goto_1

    .line 3970
    :cond_7
    const/16 v3, 0x8

    .line 3971
    goto :goto_1

    .line 3903
    :sswitch_data_0
    .sparse-switch
        0xd6 -> :sswitch_0
        0x14a -> :sswitch_3
        0x14e -> :sswitch_7
        0x152 -> :sswitch_0
        0x16b -> :sswitch_0
        0x170 -> :sswitch_1
        0x172 -> :sswitch_3
        0x176 -> :sswitch_0
        0x1c6 -> :sswitch_1
        0x1c7 -> :sswitch_2
        0x1cc -> :sswitch_4
        0x1d2 -> :sswitch_2
        0x2c0 -> :sswitch_1
        0x2c2 -> :sswitch_1
        0x2c4 -> :sswitch_0
        0x2c6 -> :sswitch_1
        0x2c8 -> :sswitch_1
        0x2ca -> :sswitch_0
        0x2cc -> :sswitch_0
        0x2d2 -> :sswitch_0
        0x2d4 -> :sswitch_1
        0x2da -> :sswitch_1
        0x2dc -> :sswitch_3
        0x2de -> :sswitch_6
        0x2e0 -> :sswitch_1
        0x2e4 -> :sswitch_1
        0x2e8 -> :sswitch_0
        0x2ec -> :sswitch_5
    .end sparse-switch
.end method

.method public static getMinMatch()I
    .locals 3

    .prologue
    .line 4021
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_CallerIdMatchingDigit"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 4022
    const/4 v0, 0x7

    .line 4026
    .local v0, "ret":I
    :goto_0
    return v0

    .line 4024
    .end local v0    # "ret":I
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_CallerIdMatchingDigit"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "ret":I
    goto :goto_0
.end method

.method public static getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 250
    const/4 v9, 0x0

    .line 252
    .local v9, "number":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 254
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-object v0

    .line 258
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    .line 260
    .local v11, "scheme":Ljava/lang/String;
    const-string/jumbo v2, "tel"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "sip"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 261
    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 264
    :cond_3
    if-eqz p1, :cond_0

    .line 268
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 269
    .local v12, "type":Ljava/lang/String;
    const/4 v10, 0x0

    .line 272
    .local v10, "phoneColumn":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 273
    .local v6, "authority":Ljava/lang/String;
    const-string v0, "contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 274
    const-string/jumbo v10, "number"

    .line 279
    :cond_4
    :goto_1
    const/4 v7, 0x0

    .line 281
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 283
    if-eqz v7, :cond_5

    .line 284
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 285
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 291
    :cond_5
    if-eqz v7, :cond_6

    .line 292
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_2
    move-object v0, v9

    .line 296
    goto :goto_0

    .line 275
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_7
    const-string v0, "com.android.contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 276
    const-string v10, "data1"

    goto :goto_1

    .line 288
    .restart local v7    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 289
    .local v8, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v0, "PhoneNumberUtils"

    const-string v2, "Error getting phone number."

    invoke-static {v0, v2, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    if-eqz v7, :cond_6

    .line 292
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 291
    .end local v8    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_8

    .line 292
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method private static getOtaCountry(Landroid/content/Context;Z)Landroid/database/Cursor;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useSharedPreference"    # Z

    .prologue
    const/4 v2, 0x0

    .line 5648
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 5649
    .local v7, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "otaCountryMccKey"

    invoke-interface {v7, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 5651
    .local v8, "spOtaCountryMcc":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5652
    .local v0, "otacr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 5654
    .local v6, "c":Landroid/database/Cursor;
    if-eqz p1, :cond_0

    if-nez v8, :cond_1

    .line 5656
    :cond_0
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->OTA_COUNTRY_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5663
    :goto_0
    return-object v6

    .line 5660
    :cond_1
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    const-string/jumbo v3, "mcc=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0
.end method

.method public static getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 905
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 907
    .local v0, "np":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 909
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 3400
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 3401
    .local v0, "delimiterIndex":I
    if-gez v0, :cond_0

    .line 3402
    const-string v1, "%40"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 3404
    :cond_0
    if-gez v0, :cond_1

    .line 3405
    const-string v1, "PhoneNumberUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUsernameFromUriNumber: no delimiter found in SIP addr \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3407
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3409
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static indexOfLastNetworkChar(Ljava/lang/String;)I
    .locals 5
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 468
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 470
    .local v0, "origLength":I
    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 471
    .local v1, "pIndex":I
    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 473
    .local v3, "wIndex":I
    invoke-static {v1, v3}, Landroid/telephony/PhoneNumberUtils;->minPositive(II)I

    move-result v2

    .line 475
    .local v2, "trimIndex":I
    if-gez v2, :cond_0

    .line 476
    add-int/lit8 v4, v0, -0x1

    .line 478
    :goto_0
    return v4

    :cond_0
    add-int/lit8 v4, v2, -0x1

    goto :goto_0
.end method

.method private static internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 1085
    move v2, p2

    .local v2, "i":I
    :goto_0
    add-int v3, p3, p2

    if-ge v2, v3, :cond_1

    .line 1088
    const-string v3, "SKT"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "KTT"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "LGT"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "KOO"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1092
    :cond_0
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->KorMsgbcdToChar(B)C

    move-result v1

    .line 1096
    .local v1, "c":C
    :goto_1
    if-nez v1, :cond_3

    .line 1130
    .end local v1    # "c":C
    :cond_1
    return-void

    .line 1094
    :cond_2
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    .restart local v1    # "c":C
    goto :goto_1

    .line 1099
    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1108
    aget-byte v3, p1, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v0, v3

    .line 1110
    .local v0, "b":B
    const/16 v3, 0xf

    if-ne v0, v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    add-int v4, p3, p2

    if-eq v3, v4, :cond_1

    .line 1115
    :cond_4
    const-string v3, "SKT"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "KTT"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "LGT"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "KOO"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1119
    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->KorMsgbcdToChar(B)C

    move-result v1

    .line 1123
    :goto_2
    if-eqz v1, :cond_1

    .line 1127
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1085
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1121
    :cond_6
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    goto :goto_2
.end method

.method private static internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "np"    # Ljava/lang/String;
    .param p1, "numDigits"    # I

    .prologue
    .line 918
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 931
    :goto_0
    return-object v5

    .line 920
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 921
    .local v3, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 923
    .local v2, "length":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    move v4, v2

    .line 924
    .local v4, "s":I
    :goto_1
    if-ltz v1, :cond_1

    sub-int v5, v4, v1

    if-gt v5, p1, :cond_1

    .line 926
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 928
    .local v0, "c":C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 924
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 931
    .end local v0    # "c":C
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static final is12Key(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 195
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCountryCallingCode(I)Z
    .locals 1
    .param p0, "countryCallingCodeCandidate"    # I

    .prologue
    .line 3686
    if-lez p0, :cond_0

    sget v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    if-ge p0, v0, :cond_0

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDefaultPlusCode(Ljava/lang/String;)Z
    .locals 5
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x31

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 6012
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 6020
    :cond_0
    :goto_0
    return v0

    .line 6017
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    move v0, v1

    .line 6018
    goto :goto_0
.end method

.method public static final isDialable(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 201
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDialable(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 1220
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1221
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1222
    const/4 v2, 0x0

    .line 1225
    :goto_1
    return v2

    .line 1220
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1225
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isEmergencyNumber(ILjava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2224
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 2350
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 2208
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 2336
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;
    .param p3, "useExactMatch"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2449
    if-nez p1, :cond_1

    .line 2491
    .end local p2    # "defaultCountryIso":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 2458
    .restart local p2    # "defaultCountryIso":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2464
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2466
    const-string v3, "PhoneNumberUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "subId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", defaultCountryIso:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p2, :cond_2

    const-string p2, "NULL"

    .end local p2    # "defaultCountryIso":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    const-string v3, "SKT"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "KTT"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "LGT"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "KOO"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2473
    :cond_3
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->getEmergencyServiceCategoryforkor(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2475
    .local v0, "cat":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEmergencyNumber cat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 2477
    if-eqz v0, :cond_0

    move v1, v2

    .line 2481
    goto :goto_0

    .line 2483
    .end local v0    # "cat":Ljava/lang/String;
    :cond_4
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->getEmergencyServiceCategory(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2485
    .restart local v0    # "cat":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEmergencyNumber cat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 2487
    if-eqz v0, :cond_0

    move v1, v2

    .line 2491
    goto/16 :goto_0
.end method

.method private static isEmergencyNumberInternal(ILjava/lang/String;Z)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "useExactMatch"    # Z

    .prologue
    .line 2322
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;
    .param p2, "useExactMatch"    # Z

    .prologue
    .line 2425
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isEmergencyNumberInternal(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "useExactMatch"    # Z

    .prologue
    .line 2297
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isGlobalPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1211
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1212
    const/4 v1, 0x0

    .line 1216
    :goto_0
    return v1

    .line 1215
    :cond_0
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1216
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method public static isISODigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 189
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLTNSpecialNumber(Ljava/lang/String;)Z
    .locals 5
    .param p0, "strNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3992
    const/4 v0, 0x0

    .line 3994
    .local v0, "bIsDigit":Z
    if-nez p0, :cond_1

    .line 4009
    :cond_0
    :goto_0
    return v3

    .line 3998
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 3999
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 4000
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4001
    const/4 v0, 0x1

    .line 4006
    .end local v1    # "c":C
    :cond_2
    if-nez v0, :cond_0

    .line 4009
    const/4 v3, 0x1

    goto :goto_0

    .line 3998
    .restart local v1    # "c":C
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 2586
    const/4 v0, 0x1

    invoke-static {p1, p2, p0, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2572
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {p0, v0, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z
    .locals 6
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "useExactMatch"    # Z

    .prologue
    .line 2692
    const-string v3, "country_detector"

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 2694
    .local v1, "detector":Landroid/location/CountryDetector;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2695
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 2702
    .local v0, "countryIso":Ljava/lang/String;
    :goto_0
    invoke-static {p0, p1, v0, p3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    return v3

    .line 2697
    .end local v0    # "countryIso":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2698
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 2699
    .restart local v0    # "countryIso":Ljava/lang/String;
    const-string v3, "PhoneNumberUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isLocalEmergencyNumberInternal(Ljava/lang/String;Landroid/content/Context;Z)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useExactMatch"    # Z

    .prologue
    .line 2667
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static isNanp(Ljava/lang/String;)Z
    .locals 5
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xa

    .line 3334
    const/4 v2, 0x0

    .line 3335
    .local v2, "retVal":Z
    if-eqz p0, :cond_2

    .line 3336
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 3337
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3339
    const/4 v2, 0x1

    .line 3340
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 3341
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3342
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3343
    const/4 v2, 0x0

    .line 3352
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return v2

    .line 3340
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3350
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_2
    const-string v3, "isNanp: null dialStr passed in"

    invoke-static {v3, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static isNanpCountry(Ljava/lang/String;)Z
    .locals 3
    .param p0, "country"    # Ljava/lang/String;

    .prologue
    .line 3317
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v1, v2

    .line 3319
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3320
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 3321
    const/4 v2, 0x1

    .line 3324
    :goto_1
    return v2

    .line 3319
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3324
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static final isNonSeparator(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 213
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNonSeparator(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 1229
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1230
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1231
    const/4 v2, 0x0

    .line 1234
    :goto_1
    return v2

    .line 1229
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1234
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static isOneNanp(Ljava/lang/String;)Z
    .locals 4
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 3359
    const/4 v1, 0x0

    .line 3360
    .local v1, "retVal":Z
    if-eqz p0, :cond_1

    .line 3361
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3362
    .local v0, "newDialStr":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3363
    const/4 v1, 0x1

    .line 3368
    .end local v0    # "newDialStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 3366
    :cond_1
    const-string v2, "isOneNanp: null dialStr passed in"

    invoke-static {v2, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isPause(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 227
    const/16 v0, 0x70

    if-eq p0, v0, :cond_0

    const/16 v0, 0x50

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPotentialEmergencyNumber(ILjava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2274
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPotentialEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 2403
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 2248
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 2377
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 2641
    const/4 v0, 0x0

    invoke-static {p1, p2, p0, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2614
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {p0, v0, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isReallyDialable(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 207
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSeparator(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 238
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isStartsPostDial(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 222
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3b

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isToneWait(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 232
    const/16 v0, 0x77

    if-eq p0, v0, :cond_0

    const/16 v0, 0x57

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTwoToNine(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 3284
    const/16 v0, 0x32

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 3285
    const/4 v0, 0x1

    .line 3287
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUriNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 3384
    if-eqz p0, :cond_1

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%40"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

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

.method public static isVoiceMailNumber(ILjava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2732
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isVoiceMailNumber(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2752
    if-nez p0, :cond_1

    .line 2753
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 2757
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2763
    .local v2, "vmNumber":Ljava/lang/String;
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v5, :cond_2

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v6, "-GLB-USA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_2

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v6, "VZW-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2765
    const-string v5, "*86"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2777
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    .end local v2    # "vmNumber":Ljava/lang/String;
    :cond_0
    :goto_1
    return v3

    .line 2755
    :cond_1
    :try_start_1
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .restart local v1    # "tm":Landroid/telephony/TelephonyManager;
    goto :goto_0

    .line 2758
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/SecurityException;
    move v3, v4

    .line 2759
    goto :goto_1

    .line 2773
    .end local v0    # "ex":Ljava/lang/SecurityException;
    .restart local v1    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v2    # "vmNumber":Ljava/lang/String;
    :cond_2
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2777
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {p2, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method public static isVoiceMailNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 2716
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isWellFormedSmsAddress(Ljava/lang/String;)Z
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 1202
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1205
    .local v0, "networkPortion":Ljava/lang/String;
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 457
    const-string v0, "PhoneNumberUtils"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    return-void
.end method

.method private static matchIntlPrefix(Ljava/lang/String;I)Z
    .locals 8
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    const/16 v7, 0x31

    const/16 v6, 0x30

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3559
    const/4 v2, 0x0

    .line 3560
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_7

    .line 3561
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3563
    .local v0, "c":C
    packed-switch v2, :pswitch_data_0

    .line 3582
    :pswitch_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3588
    .end local v0    # "c":C
    :cond_0
    :goto_1
    return v3

    .line 3565
    .restart local v0    # "c":C
    :pswitch_1
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_2

    const/4 v2, 0x1

    .line 3560
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3566
    :cond_2
    if-ne v0, v6, :cond_3

    const/4 v2, 0x2

    goto :goto_2

    .line 3567
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 3571
    :pswitch_2
    if-ne v0, v6, :cond_4

    const/4 v2, 0x3

    goto :goto_2

    .line 3572
    :cond_4
    if-ne v0, v7, :cond_5

    const/4 v2, 0x4

    goto :goto_2

    .line 3573
    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 3577
    :pswitch_3
    if-ne v0, v7, :cond_6

    const/4 v2, 0x5

    goto :goto_2

    .line 3578
    :cond_6
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 3588
    .end local v0    # "c":C
    :cond_7
    if-eq v2, v4, :cond_8

    const/4 v5, 0x3

    if-eq v2, v5, :cond_8

    const/4 v5, 0x5

    if-ne v2, v5, :cond_0

    :cond_8
    move v3, v4

    goto :goto_1

    .line 3563
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static matchIntlPrefixAndCC(Ljava/lang/String;I)Z
    .locals 7
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    const/16 v6, 0x31

    const/16 v5, 0x30

    const/4 v3, 0x0

    .line 3598
    const/4 v2, 0x0

    .line 3599
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_9

    .line 3600
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3602
    .local v0, "c":C
    packed-switch v2, :pswitch_data_0

    .line 3634
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3638
    .end local v0    # "c":C
    :cond_0
    :goto_1
    return v3

    .line 3604
    .restart local v0    # "c":C
    :pswitch_0
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_2

    const/4 v2, 0x1

    .line 3599
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3605
    :cond_2
    if-ne v0, v5, :cond_3

    const/4 v2, 0x2

    goto :goto_2

    .line 3606
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 3610
    :pswitch_1
    if-ne v0, v5, :cond_4

    const/4 v2, 0x3

    goto :goto_2

    .line 3611
    :cond_4
    if-ne v0, v6, :cond_5

    const/4 v2, 0x4

    goto :goto_2

    .line 3612
    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 3616
    :pswitch_2
    if-ne v0, v6, :cond_6

    const/4 v2, 0x5

    goto :goto_2

    .line 3617
    :cond_6
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 3623
    :pswitch_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v2, 0x6

    goto :goto_2

    .line 3624
    :cond_7
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 3629
    :pswitch_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3630
    :cond_8
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 3638
    .end local v0    # "c":C
    :cond_9
    const/4 v4, 0x6

    if-eq v2, v4, :cond_a

    const/4 v4, 0x7

    if-eq v2, v4, :cond_a

    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    :cond_a
    const/4 v3, 0x1

    goto :goto_1

    .line 3602
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private static matchTrunkPrefix(Ljava/lang/String;I)Z
    .locals 4
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    .line 3646
    const/4 v1, 0x0

    .line 3648
    .local v1, "found":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 3649
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3651
    .local v0, "c":C
    const/16 v3, 0x30

    if-ne v0, v3, :cond_1

    if-nez v1, :cond_1

    .line 3652
    const/4 v1, 0x1

    .line 3648
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3653
    :cond_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3654
    const/4 v1, 0x0

    .line 3658
    .end local v0    # "c":C
    .end local v1    # "found":Z
    :cond_2
    return v1
.end method

.method private static minPositive(II)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 445
    if-ltz p0, :cond_2

    if-ltz p1, :cond_2

    .line 446
    if-ge p0, p1, :cond_1

    .line 452
    .end local p0    # "a":I
    :cond_0
    :goto_0
    return p0

    .restart local p0    # "a":I
    :cond_1
    move p0, p1

    .line 446
    goto :goto_0

    .line 447
    :cond_2
    if-gez p0, :cond_0

    .line 449
    if-ltz p1, :cond_3

    move p0, p1

    .line 450
    goto :goto_0

    .line 452
    :cond_3
    const/4 p0, -0x1

    goto :goto_0
.end method

.method public static networkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1244
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1245
    .local v0, "networkPortion":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1267
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1268
    .local v0, "networkPortion":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 2136
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2137
    const-string v5, ""

    .line 2154
    :goto_0
    return-object v5

    .line 2140
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2141
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2142
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_8

    .line 2143
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2145
    .local v0, "c":C
    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 2146
    .local v1, "digit":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    .line 2147
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2142
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2148
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_3

    const/16 v5, 0x2b

    if-eq v0, v5, :cond_4

    :cond_3
    const/16 v5, 0x2a

    if-eq v0, v5, :cond_4

    const/16 v5, 0x23

    if-ne v0, v5, :cond_5

    .line 2149
    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2150
    :cond_5
    const/16 v5, 0x61

    if-lt v0, v5, :cond_6

    const/16 v5, 0x7a

    if-le v0, v5, :cond_7

    :cond_6
    const/16 v5, 0x41

    if-lt v0, v5, :cond_1

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_1

    .line 2151
    :cond_7
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 2154
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static numberToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1280
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method private static numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B
    .locals 15
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "includeLength"    # Z

    .prologue
    .line 1289
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 1290
    .local v6, "numberLenReal":I
    move v5, v6

    .line 1291
    .local v5, "numberLenEffective":I
    const/16 v12, 0x2b

    invoke-virtual {p0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    const/4 v3, 0x1

    .line 1292
    .local v3, "hasPlus":Z
    :goto_0
    if-eqz v3, :cond_0

    add-int/lit8 v5, v5, -0x1

    .line 1294
    :cond_0
    if-nez v5, :cond_2

    const/4 v9, 0x0

    .line 1319
    :goto_1
    return-object v9

    .line 1291
    .end local v3    # "hasPlus":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1296
    .restart local v3    # "hasPlus":Z
    :cond_2
    add-int/lit8 v12, v5, 0x1

    div-int/lit8 v10, v12, 0x2

    .line 1297
    .local v10, "resultLen":I
    const/4 v2, 0x1

    .line 1298
    .local v2, "extraBytes":I
    if-eqz p1, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 1299
    :cond_3
    add-int/2addr v10, v2

    .line 1301
    new-array v9, v10, [B

    .line 1303
    .local v9, "result":[B
    const/4 v1, 0x0

    .line 1304
    .local v1, "digitCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v6, :cond_6

    .line 1305
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1306
    .local v0, "c":C
    const/16 v12, 0x2b

    if-ne v0, v12, :cond_4

    .line 1304
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1307
    :cond_4
    and-int/lit8 v12, v1, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    const/4 v11, 0x4

    .line 1308
    .local v11, "shift":I
    :goto_4
    shr-int/lit8 v12, v1, 0x1

    add-int/2addr v12, v2

    aget-byte v13, v9, v12

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->charToBCD(C)I

    move-result v14

    and-int/lit8 v14, v14, 0xf

    shl-int/2addr v14, v11

    int-to-byte v14, v14

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v9, v12

    .line 1309
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1307
    .end local v11    # "shift":I
    :cond_5
    const/4 v11, 0x0

    goto :goto_4

    .line 1313
    .end local v0    # "c":C
    :cond_6
    and-int/lit8 v12, v1, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    shr-int/lit8 v12, v1, 0x1

    add-int/2addr v12, v2

    aget-byte v13, v9, v12

    or-int/lit16 v13, v13, 0xf0

    int-to-byte v13, v13

    aput-byte v13, v9, v12

    .line 1315
    :cond_7
    const/4 v7, 0x0

    .line 1316
    .local v7, "offset":I
    if-eqz p1, :cond_8

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .local v8, "offset":I
    add-int/lit8 v12, v10, -0x1

    int-to-byte v12, v12

    aput-byte v12, v9, v7

    move v7, v8

    .line 1317
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    :cond_8
    if-eqz v3, :cond_9

    const/16 v12, 0x91

    :goto_5
    int-to-byte v12, v12

    aput-byte v12, v9, v7

    goto :goto_1

    :cond_9
    const/16 v12, 0x81

    goto :goto_5
.end method

.method public static processCLIRDigitsWithinNetworkDial(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sDialNumber"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x38

    const/16 v9, 0x31

    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 6028
    const/4 v3, 0x0

    .line 6029
    .local v3, "sNetworkDial":Ljava/lang/String;
    const/4 v0, 0x0

    .line 6030
    .local v0, "isCheck":Z
    const/4 v1, 0x0

    .line 6032
    .local v1, "isEmergencyCall":Z
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionchangePlusCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6033
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    .line 6034
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "button_clir_key"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_3

    move v0, v4

    .line 6035
    :goto_0
    const-string v6, "gsm.operator.iso-country"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6037
    .local v2, "sCountry":Ljava/lang/String;
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    const-string v6, "jp"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6038
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v10, :cond_0

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x34

    if-eq v6, v7, :cond_2

    :cond_0
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v10, :cond_1

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x36

    if-eq v4, v5, :cond_2

    .line 6040
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "184"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6041
    const-string v4, "PhoneNumberUtils"

    const-string v5, "Add 184 to dialnumber"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6044
    :cond_2
    return-object v3

    .end local v2    # "sCountry":Ljava/lang/String;
    :cond_3
    move v0, v5

    .line 6034
    goto :goto_0
.end method

.method private static processPlusCode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0, "networkDialStr"    # Ljava/lang/String;
    .param p1, "useNanp"    # Z

    .prologue
    const/4 v4, 0x1

    .line 3419
    move-object v1, p0

    .line 3425
    .local v1, "retStr":Ljava/lang/String;
    if-eqz p0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 3428
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3430
    .local v0, "newStr":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3432
    move-object v1, v0

    .line 3434
    const-string/jumbo v2, "processPlusCode - Remove the leading plus sign"

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 3445
    .end local v0    # "newStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 3438
    .restart local v0    # "newStr":Ljava/lang/String;
    :cond_1
    const-string v2, "[+]"

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getCurrentIdp(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processPlusCode - Replaces the plus sign with the default IDP (useNanp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", current IDP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getCurrentIdp(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static processPlusCode(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p0, "networkDialStr"    # Ljava/lang/String;
    .param p1, "useNanp"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 3450
    move-object v4, p0

    .line 3456
    .local v4, "retStr":Ljava/lang/String;
    if-eqz p0, :cond_2

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2b

    if-ne v7, v8, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_2

    .line 3459
    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 3462
    .local v3, "newStr":Ljava/lang/String;
    sget-object v7, Landroid/telephony/PhoneNumberUtils;->mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v7, :cond_4

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v8, "SPR-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3463
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 3464
    .local v6, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v7, "toggle_country_name"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3466
    .local v0, "isUSDialingValue":Z
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v0, :cond_3

    .line 3467
    const-string v1, ""

    .line 3469
    .local v1, "iso":Ljava/lang/String;
    sget-object v7, Landroid/telephony/PhoneNumberUtils;->mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v7, :cond_0

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v8, "SPR-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3470
    const-string v7, "gsm.operator.iso-country.real"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3472
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3473
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 3475
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v5

    .line 3476
    .local v5, "simIso":Ljava/lang/String;
    const-string v7, "PhoneNumberUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ISO: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", SIM ISO: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3478
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v11, :cond_2

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v10, :cond_2

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v10, :cond_2

    .line 3482
    invoke-virtual {p0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3483
    const-string/jumbo v7, "processPlusCode - Remove the leading plus sign and 1"

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 3505
    .end local v0    # "isUSDialingValue":Z
    .end local v1    # "iso":Ljava/lang/String;
    .end local v3    # "newStr":Ljava/lang/String;
    .end local v5    # "simIso":Ljava/lang/String;
    .end local v6    # "sp":Landroid/content/SharedPreferences;
    :cond_2
    :goto_0
    return-object v4

    .line 3486
    .restart local v0    # "isUSDialingValue":Z
    .restart local v3    # "newStr":Ljava/lang/String;
    .restart local v6    # "sp":Landroid/content/SharedPreferences;
    :cond_3
    const-string v7, "country_code"

    const-string v8, "011"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3488
    .local v2, "nanpIDPString":Ljava/lang/String;
    const-string v7, "[+]"

    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3489
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processPlusCode - Replaces the plus sign with the NANP IDP (NANP IDP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3493
    .end local v0    # "isUSDialingValue":Z
    .end local v2    # "nanpIDPString":Ljava/lang/String;
    .end local v6    # "sp":Landroid/content/SharedPreferences;
    :cond_4
    if-eqz p1, :cond_5

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3495
    move-object v4, v3

    .line 3496
    const-string/jumbo v7, "processPlusCode - Remove the leading plus sign"

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3499
    :cond_5
    const-string v7, "[+]"

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getCurrentIdp(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3500
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processPlusCode - Replaces the plus sign with the default IDP (useNanp: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", current IDP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getCurrentIdp(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static processPlusCodeWithinNanp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "networkDialStr"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 5954
    const/4 v2, 0x0

    .line 5955
    .local v2, "retStr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 5956
    .local v1, "newStr":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 5957
    move-object v2, p1

    .line 5958
    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 5965
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 5966
    .local v4, "sp":Landroid/content/SharedPreferences;
    const-string v6, "country_code"

    const-string v7, "011"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5967
    .local v5, "value":Ljava/lang/String;
    const-string/jumbo v6, "toggle_country_name"

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 5969
    .local v0, "isChecked":Z
    const/4 v3, 0x0

    .line 5970
    .local v3, "sCountry":Ljava/lang/String;
    const-string v6, "gsm.operator.iso-country"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5971
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_ConvertPlusPrefixNumberToMnoCode"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5973
    const-string v6, "cn"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "nz"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "mx"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "mo"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "il"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "in"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "pe"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "vn"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "ve"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "bd"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5976
    :cond_1
    const-string v5, "00"

    .line 5991
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_3

    .line 5995
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isDefaultPlusCode(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    if-eqz v0, :cond_b

    .line 5997
    move-object v2, v1

    .line 6007
    :cond_3
    :goto_1
    return-object v2

    .line 5977
    :cond_4
    const-string/jumbo v6, "th"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "hk"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "id"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 5978
    :cond_5
    const-string v5, "001"

    goto :goto_0

    .line 5979
    :cond_6
    const-string/jumbo v6, "mp"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "bm"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string/jumbo v6, "us"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "bs"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 5980
    :cond_7
    const-string v5, "011"

    goto :goto_0

    .line 5981
    :cond_8
    const-string/jumbo v6, "tw"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 5982
    const-string v5, "005"

    goto :goto_0

    .line 5983
    :cond_9
    const-string v6, "kr"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 5984
    const-string v5, "00700"

    goto :goto_0

    .line 5985
    :cond_a
    const-string v6, "jp"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5986
    const-string v5, "010"

    goto/16 :goto_0

    .line 5998
    :cond_b
    const-string v6, "jp"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x38

    if-ne v6, v7, :cond_c

    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x31

    if-ne v6, v7, :cond_c

    .line 6000
    const-string v6, "[+]81"

    const-string v7, "0"

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 6001
    :cond_c
    const-string v6, "jp"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 6003
    const-string v6, "[+]"

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1
.end method

.method private static removeDashes(Landroid/text/Editable;)V
    .locals 3
    .param p0, "text"    # Landroid/text/Editable;

    .prologue
    .line 1967
    const/4 v0, 0x0

    .line 1968
    .local v0, "p":I
    :goto_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1969
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    .line 1970
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 1972
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1975
    :cond_1
    return-void
.end method

.method public static replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 2164
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2165
    .local v5, "normalizedDigits":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-char v1, v0, v3

    .line 2166
    .local v1, "c":C
    const/16 v6, 0xa

    invoke-static {v1, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 2167
    .local v2, "digit":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 2168
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2165
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2170
    :cond_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2173
    .end local v1    # "c":C
    .end local v2    # "digit":I
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static retrieveAssistedParams(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 13
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x2

    const/4 v2, 0x0

    const/4 v11, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 5266
    const-string v1, "gsm.current.phone-type"

    invoke-static {v1, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/telephony/PhoneNumberUtils;->phoneType:I

    .line 5268
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sput v1, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    .line 5270
    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    .line 5273
    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v6

    .line 5275
    .local v6, "mdn":Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v11, :cond_1

    .line 5365
    :cond_0
    :goto_0
    return v10

    .line 5281
    :cond_1
    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 5282
    .local v8, "salesCode":Ljava/lang/String;
    const-string v1, "LRA"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5283
    const-string v1, "PhoneNumberUtils"

    const-string v2, "Assisted Dial not supported in LRA. Return original number"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5287
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5289
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    .line 5290
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 5295
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5299
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryName:Ljava/lang/String;

    .line 5300
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5301
    .local v7, "refmcc":Ljava/lang/String;
    const-string v1, "310 to 316"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v7, "310"

    .end local v7    # "refmcc":Ljava/lang/String;
    :cond_3
    :goto_1
    sput-object v7, Landroid/telephony/PhoneNumberUtils;->refCountryMCC:Ljava/lang/String;

    .line 5302
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    .line 5303
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x4

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    .line 5304
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x5

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "NANP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v9

    :goto_2
    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->isNANPCountry:Z

    .line 5305
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x6

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    .line 5306
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x7

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    .line 5308
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/16 v3, 0x8

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    .line 5309
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/16 v3, 0x9

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    .line 5311
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 5312
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v11, :cond_b

    .line 5313
    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    .line 5320
    :cond_4
    :goto_3
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    if-nez v1, :cond_5

    .line 5321
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v11, :cond_c

    .line 5322
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    .line 5329
    :cond_5
    :goto_4
    const-string v1, "PhoneNumberUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refCountryMCC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/telephony/PhoneNumberUtils;->refCountryMCC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5330
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5332
    sget v1, Landroid/telephony/PhoneNumberUtils;->phoneType:I

    if-ne v1, v9, :cond_d

    move v1, v9

    :goto_5
    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    .line 5333
    sget v1, Landroid/telephony/PhoneNumberUtils;->phoneType:I

    if-ne v1, v12, :cond_e

    move v1, v9

    :goto_6
    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    .line 5335
    invoke-static {p1, v9}, Landroid/telephony/PhoneNumberUtils;->getOtaCountry(Landroid/content/Context;Z)Landroid/database/Cursor;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    .line 5337
    sput-object v2, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    .line 5338
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_7

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5339
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryName:Ljava/lang/String;

    .line 5340
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    .line 5342
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    .line 5343
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    .line 5344
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 5345
    const-string v1, ""

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    .line 5348
    :cond_6
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NANP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v9

    :goto_7
    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->isOTANANPCountry:Z

    .line 5349
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    .line 5350
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->isOTANBPCDSupported:Z

    .line 5351
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    const-string v2, "310 to 316"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "310"

    :goto_8
    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    .line 5354
    :cond_7
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_8

    .line 5355
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5358
    :cond_8
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    if-nez v1, :cond_12

    .line 5359
    const-string v1, "PhoneNumberUtils"

    const-string v2, "OTA country not found"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5301
    .restart local v7    # "refmcc":Ljava/lang/String;
    :cond_9
    const-string v1, "430 to 431"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v7, "430"

    goto/16 :goto_1

    .end local v7    # "refmcc":Ljava/lang/String;
    :cond_a
    move v1, v10

    .line 5304
    goto/16 :goto_2

    .line 5316
    :cond_b
    const-string v1, "123"

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    goto/16 :goto_3

    .line 5325
    :cond_c
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    goto/16 :goto_4

    :cond_d
    move v1, v10

    .line 5332
    goto/16 :goto_5

    :cond_e
    move v1, v10

    .line 5333
    goto/16 :goto_6

    :cond_f
    move v1, v10

    .line 5348
    goto :goto_7

    .line 5351
    :cond_10
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    const-string v2, "430 to 431"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "430"

    goto :goto_8

    :cond_11
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    goto :goto_8

    .line 5363
    :cond_12
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->displayAssistedParams()V

    move v10, v9

    .line 5365
    goto/16 :goto_0
.end method

.method private static splitAtNonNumerics(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5
    .param p0, "number"    # Ljava/lang/CharSequence;

    .prologue
    .line 3170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3171
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3172
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3172
    :cond_0
    const-string v2, " "

    goto :goto_1

    .line 3179
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, " +"

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 7
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 5667
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xc

    if-ne v1, v3, :cond_1

    .line 5668
    const-string v1, "7"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "20"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "65"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "90"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5670
    :cond_0
    const-string v1, "PhoneNumberUtils"

    const-string v2, "length 12 - 7,20,65,90 is detected"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 5701
    :goto_0
    return v1

    .line 5675
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xb

    if-lt v1, v3, :cond_5

    .line 5677
    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5678
    const-string v1, "PhoneNumberUtils"

    const-string v2, "US country code is detected with more than 11 digits"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 5679
    goto :goto_0

    .line 5682
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5683
    .local v0, "ContryCode":Landroid/content/ContentResolver;
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    .line 5685
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5686
    :goto_1
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    if-eqz v1, :cond_4

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_4

    .line 5687
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5688
    const-string v1, "PhoneNumberUtils"

    const-string v2, "contry code is detected"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5689
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5690
    const/4 v1, 0x1

    goto :goto_0

    .line 5692
    :cond_3
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 5695
    :cond_4
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    if-eqz v1, :cond_5

    .line 5696
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .end local v0    # "ContryCode":Landroid/content/ContentResolver;
    :cond_5
    move v1, v6

    .line 5701
    goto :goto_0
.end method

.method public static stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "TOA"    # I

    .prologue
    .line 942
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 948
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 944
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    const/16 v0, 0x91

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 382
    if-nez p0, :cond_0

    .line 383
    const/4 v5, 0x0

    .line 399
    :goto_0
    return-object v5

    .line 385
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 386
    .local v3, "len":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 388
    .local v4, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 389
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 391
    .local v0, "c":C
    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 392
    .local v1, "digit":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    .line 393
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 388
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 394
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 395
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 399
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 878
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 883
    .local v0, "np":Ljava/lang/String;
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 884
    .local v1, "salesCode":Ljava/lang/String;
    const-string v2, "CHN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHU"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CTC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 885
    :cond_0
    const/16 v2, 0xb

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 892
    :goto_0
    return-object v2

    .line 886
    :cond_1
    const-string v2, "FET"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "TWM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "CWT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "BRI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 887
    :cond_2
    const/16 v2, 0x9

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 888
    :cond_3
    const-string v2, "TGY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 889
    const/16 v2, 0x8

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 892
    :cond_4
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getMinMatch()I

    move-result v2

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toaFromString(Ljava/lang/String;)I
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 958
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    .line 959
    const/16 v0, 0x91

    .line 962
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x81

    goto :goto_0
.end method

.method private static tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .locals 11
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "acceptThailandCase"    # Z

    .prologue
    const/16 v10, 0x36

    const/16 v9, 0x30

    const/16 v8, 0x31

    const/4 v6, 0x0

    .line 3725
    const/4 v5, 0x0

    .line 3726
    .local v5, "state":I
    const/4 v0, 0x0

    .line 3727
    .local v0, "ccc":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 3728
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 3729
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 3730
    .local v1, "ch":C
    packed-switch v5, :pswitch_data_0

    .line 3799
    .end local v1    # "ch":C
    :cond_0
    :goto_1
    return-object v6

    .line 3732
    .restart local v1    # "ch":C
    :pswitch_0
    const/16 v7, 0x2b

    if-ne v1, v7, :cond_2

    const/4 v5, 0x1

    .line 3728
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3733
    :cond_2
    if-ne v1, v9, :cond_3

    const/4 v5, 0x2

    goto :goto_2

    .line 3734
    :cond_3
    if-ne v1, v8, :cond_4

    .line 3735
    if-eqz p1, :cond_0

    .line 3736
    const/16 v5, 0x8

    goto :goto_2

    .line 3740
    :cond_4
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 3746
    :pswitch_1
    if-ne v1, v9, :cond_5

    const/4 v5, 0x3

    goto :goto_2

    .line 3747
    :cond_5
    if-ne v1, v8, :cond_6

    const/4 v5, 0x4

    goto :goto_2

    .line 3748
    :cond_6
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 3754
    :pswitch_2
    if-ne v1, v8, :cond_7

    const/4 v5, 0x5

    goto :goto_2

    .line 3755
    :cond_7
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 3766
    :pswitch_3
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    .line 3767
    .local v4, "ret":I
    if-gtz v4, :cond_8

    if-nez v4, :cond_d

    const/16 v7, 0xa

    if-ge v0, v7, :cond_d

    .line 3768
    :cond_8
    mul-int/lit8 v7, v0, 0xa

    add-int v0, v7, v4

    .line 3769
    const/16 v7, 0x64

    if-ge v0, v7, :cond_9

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isCountryCallingCode(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 3770
    :cond_9
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v6, v0, v7}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto :goto_1

    .line 3772
    :cond_a
    const/4 v7, 0x1

    if-eq v5, v7, :cond_b

    const/4 v7, 0x3

    if-eq v5, v7, :cond_b

    const/4 v7, 0x5

    if-ne v5, v7, :cond_c

    .line 3773
    :cond_b
    const/4 v5, 0x6

    goto :goto_2

    .line 3775
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3777
    :cond_d
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 3783
    .end local v4    # "ret":I
    :pswitch_4
    if-ne v1, v10, :cond_e

    const/16 v5, 0x9

    goto :goto_2

    .line 3784
    :cond_e
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 3789
    :pswitch_5
    if-ne v1, v10, :cond_0

    .line 3790
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    const/16 v7, 0x42

    add-int/lit8 v8, v2, 0x1

    invoke-direct {v6, v7, v8}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto/16 :goto_1

    .line 3730
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static tryGetISODigit(C)I
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 3696
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 3697
    add-int/lit8 v0, p0, -0x30

    .line 3699
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "currentIndex"    # I

    .prologue
    const/4 v3, -0x1

    .line 3812
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 3813
    .local v2, "length":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3814
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3815
    .local v0, "ch":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    if-ltz v4, :cond_1

    .line 3816
    add-int/lit8 v3, v1, 0x1

    .line 3821
    .end local v0    # "ch":C
    :cond_0
    return v3

    .line 3817
    .restart local v0    # "ch":C
    :cond_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3813
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static ttsSpanAsPhoneNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3110
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static ttsSpanAsPhoneNumber(Landroid/text/Spannable;II)V
    .locals 0
    .param p0, "s"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3127
    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->addTtsSpan(Landroid/text/Spannable;II)V

    .line 3128
    return-void
.end method
