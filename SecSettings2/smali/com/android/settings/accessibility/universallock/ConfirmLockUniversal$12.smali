.class synthetic Lcom/android/settings_ex/accessibility/universallock/ConfirmLockUniversal$12;
.super Ljava/lang/Object;
.source "ConfirmLockUniversal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/accessibility/universallock/ConfirmLockUniversal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$settings$accessibility$universallock$ConfirmLockUniversal$Stage:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 897
    invoke-static {}, Lcom/android/settings_ex/accessibility/universallock/ConfirmLockUniversal$Stage;->values()[Lcom/android/settings_ex/accessibility/universallock/ConfirmLockUniversal$Stage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/settings_ex/accessibility/universallock/ConfirmLockUniversal$12;->$SwitchMap$com$android$settings$accessibility$universallock$ConfirmLockUniversal$Stage:[I

    :try_start_0
    sget-object v0, Lcom/android/settings_ex/accessibility/universallock/ConfirmLockUniversal$12;->$SwitchMap$com$android$settings$accessibility$universallock$ConfirmLockUniversal$Stage:[I

    sget-object v1, Lcom/android/settings_ex/accessibility/universallock/ConfirmLockUniversal$Stage;->NeedToUnlock:Lcom/android/settings_ex/accessibility/universallock/ConfirmLockUniversal$Stage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/settings_ex/accessibility/universallock/ConfirmLockUniversal$12;->$SwitchMap$com$android$settings$accessibility$universallock$ConfirmLockUniversal$Stage:[I

    sget-object v1, Lcom/android/settings_ex/accessibility/universallock/ConfirmLockUniversal$Stage;->NeedToUnlockWrong:Lcom/android/settings_ex/accessibility/universallock/ConfirmLockUniversal$Stage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/settings_ex/accessibility/universallock/ConfirmLockUniversal$12;->$SwitchMap$com$android$settings$accessibility$universallock$ConfirmLockUniversal$Stage:[I

    sget-object v1, Lcom/android/settings_ex/accessibility/universallock/ConfirmLockUniversal$Stage;->LockedOut:Lcom/android/settings_ex/accessibility/universallock/ConfirmLockUniversal$Stage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
