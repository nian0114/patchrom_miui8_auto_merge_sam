.class synthetic Lcom/android/settings_ex/wifi/mobileap/WpsApDialog$5;
.super Ljava/lang/Object;
.source "WpsApDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/mobileap/WpsApDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$settings$wifi$mobileap$WpsApDialog$DialogState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 289
    invoke-static {}, Lcom/android/settings_ex/wifi/mobileap/WpsApDialog$DialogState;->values()[Lcom/android/settings_ex/wifi/mobileap/WpsApDialog$DialogState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/settings_ex/wifi/mobileap/WpsApDialog$5;->$SwitchMap$com$android$settings$wifi$mobileap$WpsApDialog$DialogState:[I

    :try_start_0
    sget-object v0, Lcom/android/settings_ex/wifi/mobileap/WpsApDialog$5;->$SwitchMap$com$android$settings$wifi$mobileap$WpsApDialog$DialogState:[I

    sget-object v1, Lcom/android/settings_ex/wifi/mobileap/WpsApDialog$DialogState;->WPS_COMPLETE:Lcom/android/settings_ex/wifi/mobileap/WpsApDialog$DialogState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/settings_ex/wifi/mobileap/WpsApDialog$5;->$SwitchMap$com$android$settings$wifi$mobileap$WpsApDialog$DialogState:[I

    sget-object v1, Lcom/android/settings_ex/wifi/mobileap/WpsApDialog$DialogState;->CONNECTED:Lcom/android/settings_ex/wifi/mobileap/WpsApDialog$DialogState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/settings_ex/wifi/mobileap/WpsApDialog$5;->$SwitchMap$com$android$settings$wifi$mobileap$WpsApDialog$DialogState:[I

    sget-object v1, Lcom/android/settings_ex/wifi/mobileap/WpsApDialog$DialogState;->WPS_FAILED:Lcom/android/settings_ex/wifi/mobileap/WpsApDialog$DialogState;

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
