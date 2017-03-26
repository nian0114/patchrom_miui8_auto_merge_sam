.class Lcom/android/nfc/cardemulation/NfcEeObjectUtil$Singleton;
.super Ljava/lang/Object;
.source "NfcEeObjectUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/NfcEeObjectUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/nfc/cardemulation/NfcEeObjectUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;

    invoke-direct {v0}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;-><init>()V

    sput-object v0, Lcom/android/nfc/cardemulation/NfcEeObjectUtil$Singleton;->INSTANCE:Lcom/android/nfc/cardemulation/NfcEeObjectUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/nfc/cardemulation/NfcEeObjectUtil;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/nfc/cardemulation/NfcEeObjectUtil$Singleton;->INSTANCE:Lcom/android/nfc/cardemulation/NfcEeObjectUtil;

    return-object v0
.end method
