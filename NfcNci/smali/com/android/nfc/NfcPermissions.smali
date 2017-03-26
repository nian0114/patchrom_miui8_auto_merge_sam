.class public Lcom/android/nfc/NfcPermissions;
.super Ljava/lang/Object;
.source "NfcPermissions.java"


# static fields
.field private static final ADMIN_PERM:Ljava/lang/String; = "android.permission.WRITE_SECURE_SETTINGS"

.field private static final ADMIN_PERM_ERROR:Ljava/lang/String; = "WRITE_SECURE_SETTINGS permission required"

.field public static final NFC_PERMISSION:Ljava/lang/String; = "android.permission.NFC"

.field private static final NFC_PERM_ERROR:Ljava/lang/String; = "NFC permission required"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enforceAdminPermissions(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    const-string v1, "WRITE_SECURE_SETTINGS permission required"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static enforceNfceeAdminPerm(Landroid/content/Context;Lcom/android/nfc/NfceeAccessControl;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nfcEeAccessControl"    # Lcom/android/nfc/NfceeAccessControl;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 40
    if-nez p2, :cond_0

    .line 41
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "caller must pass a package name"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    const-string v0, "android.permission.NFC"

    const-string v1, "NFC permission required"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/android/nfc/NfceeAccessControl;->check(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/etc/nfcee_access.xml denies NFCEE access to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "only the owner is allowed to call SE APIs"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_2
    return-void
.end method

.method public static enforceUserPermissions(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const-string v0, "android.permission.NFC"

    const-string v1, "NFC permission required"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static validateUserId(I)V
    .locals 2
    .param p0, "userId"    # I

    .prologue
    .line 25
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p0, v0, :cond_0

    .line 26
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "userId passed in is not the calling user."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    return-void
.end method
