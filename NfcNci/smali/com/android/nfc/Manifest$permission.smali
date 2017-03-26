.class public final Lcom/android/nfc/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final ABEAM_ERROR:Ljava/lang/String; = "com.samsung.permission.ABEAM_ERROR"

.field public static final MPOS:Ljava/lang/String; = "com.samsung.nfc.permission.MPOS"

.field public static final NFC_URGENT_FW_UPDATE_CHECK:Ljava/lang/String; = "com.samsung.permission.NFC_URGENT_FW_UPDATE_CHECK"

.field public static final SBEAM_NDEF_MESSAGE:Ljava/lang/String; = "com.samsung.permission.SBEAM_NDEF_MESSAGE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
