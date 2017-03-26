.class Lcom/android/nfc/NfcFeatureUtil$Singleton;
.super Ljava/lang/Object;
.source "NfcFeatureUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcFeatureUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/nfc/NfcFeatureUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/android/nfc/NfcFeatureUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcFeatureUtil;-><init>(Lcom/android/nfc/NfcFeatureUtil$1;)V

    sput-object v0, Lcom/android/nfc/NfcFeatureUtil$Singleton;->INSTANCE:Lcom/android/nfc/NfcFeatureUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/nfc/NfcFeatureUtil;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/nfc/NfcFeatureUtil$Singleton;->INSTANCE:Lcom/android/nfc/NfcFeatureUtil;

    return-object v0
.end method
