.class synthetic Lcom/android/settings_ex/applock/PackageInfoUtil$2;
.super Ljava/lang/Object;
.source "PackageInfoUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applock/PackageInfoUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$settings$applock$PackageInfoUtil$BoardcastType:[I

.field static final synthetic $SwitchMap$com$android$settings$applock$PackageInfoUtil$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 430
    invoke-static {}, Lcom/android/settings_ex/applock/PackageInfoUtil$BoardcastType;->values()[Lcom/android/settings_ex/applock/PackageInfoUtil$BoardcastType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/settings_ex/applock/PackageInfoUtil$2;->$SwitchMap$com$android$settings$applock$PackageInfoUtil$BoardcastType:[I

    :try_start_0
    sget-object v0, Lcom/android/settings_ex/applock/PackageInfoUtil$2;->$SwitchMap$com$android$settings$applock$PackageInfoUtil$BoardcastType:[I

    sget-object v1, Lcom/android/settings_ex/applock/PackageInfoUtil$BoardcastType;->MASTER_ENABLE:Lcom/android/settings_ex/applock/PackageInfoUtil$BoardcastType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/settings_ex/applock/PackageInfoUtil$2;->$SwitchMap$com$android$settings$applock$PackageInfoUtil$BoardcastType:[I

    sget-object v1, Lcom/android/settings_ex/applock/PackageInfoUtil$BoardcastType;->FOLDER_CHANGE:Lcom/android/settings_ex/applock/PackageInfoUtil$BoardcastType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    .line 283
    :goto_1
    invoke-static {}, Lcom/android/settings_ex/applock/PackageInfoUtil$State;->values()[Lcom/android/settings_ex/applock/PackageInfoUtil$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/settings_ex/applock/PackageInfoUtil$2;->$SwitchMap$com$android$settings$applock$PackageInfoUtil$State:[I

    :try_start_2
    sget-object v0, Lcom/android/settings_ex/applock/PackageInfoUtil$2;->$SwitchMap$com$android$settings$applock$PackageInfoUtil$State:[I

    sget-object v1, Lcom/android/settings_ex/applock/PackageInfoUtil$State;->ADD:Lcom/android/settings_ex/applock/PackageInfoUtil$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/settings_ex/applock/PackageInfoUtil$2;->$SwitchMap$com$android$settings$applock$PackageInfoUtil$State:[I

    sget-object v1, Lcom/android/settings_ex/applock/PackageInfoUtil$State;->REMOVE:Lcom/android/settings_ex/applock/PackageInfoUtil$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    .line 430
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
