.class public final enum Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;
.super Ljava/lang/Enum;
.source "TwHelpDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/helpdialog/TwHelpDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TouchMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

.field public static final enum OPAQUE:Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

.field public static final enum OPAQUE_NO_MOVE:Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

.field public static final enum TRANSPARENT:Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

    const-string v1, "OPAQUE"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

    .line 34
    new-instance v0, Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

    const-string v1, "TRANSPARENT"

    invoke-direct {v0, v1, v3}, Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

    .line 39
    new-instance v0, Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

    const-string v1, "OPAQUE_NO_MOVE"

    invoke-direct {v0, v1, v4}, Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

    sget-object v1, Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;->$VALUES:[Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

    return-object v0
.end method

.method public static values()[Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;->$VALUES:[Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v0}, [Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

    return-object v0
.end method
