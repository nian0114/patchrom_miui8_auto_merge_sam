.class final enum Lcom/android/settings_ex/ConfirmLockPattern$Stage;
.super Ljava/lang/Enum;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ConfirmLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings_ex/ConfirmLockPattern$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings_ex/ConfirmLockPattern$Stage;

.field public static final enum LockedOut:Lcom/android/settings_ex/ConfirmLockPattern$Stage;

.field public static final enum NeedToUnlock:Lcom/android/settings_ex/ConfirmLockPattern$Stage;

.field public static final enum NeedToUnlockWrong:Lcom/android/settings_ex/ConfirmLockPattern$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    new-instance v0, Lcom/android/settings_ex/ConfirmLockPattern$Stage;

    const-string v1, "NeedToUnlock"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/ConfirmLockPattern$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ex/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings_ex/ConfirmLockPattern$Stage;

    .line 70
    new-instance v0, Lcom/android/settings_ex/ConfirmLockPattern$Stage;

    const-string v1, "NeedToUnlockWrong"

    invoke-direct {v0, v1, v3}, Lcom/android/settings_ex/ConfirmLockPattern$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ex/ConfirmLockPattern$Stage;->NeedToUnlockWrong:Lcom/android/settings_ex/ConfirmLockPattern$Stage;

    .line 71
    new-instance v0, Lcom/android/settings_ex/ConfirmLockPattern$Stage;

    const-string v1, "LockedOut"

    invoke-direct {v0, v1, v4}, Lcom/android/settings_ex/ConfirmLockPattern$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ex/ConfirmLockPattern$Stage;->LockedOut:Lcom/android/settings_ex/ConfirmLockPattern$Stage;

    .line 68
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings_ex/ConfirmLockPattern$Stage;

    sget-object v1, Lcom/android/settings_ex/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings_ex/ConfirmLockPattern$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings_ex/ConfirmLockPattern$Stage;->NeedToUnlockWrong:Lcom/android/settings_ex/ConfirmLockPattern$Stage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings_ex/ConfirmLockPattern$Stage;->LockedOut:Lcom/android/settings_ex/ConfirmLockPattern$Stage;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings_ex/ConfirmLockPattern$Stage;->$VALUES:[Lcom/android/settings_ex/ConfirmLockPattern$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings_ex/ConfirmLockPattern$Stage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 68
    const-class v0, Lcom/android/settings_ex/ConfirmLockPattern$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/ConfirmLockPattern$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/settings_ex/ConfirmLockPattern$Stage;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/settings_ex/ConfirmLockPattern$Stage;->$VALUES:[Lcom/android/settings_ex/ConfirmLockPattern$Stage;

    invoke-virtual {v0}, [Lcom/android/settings_ex/ConfirmLockPattern$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings_ex/ConfirmLockPattern$Stage;

    return-object v0
.end method
