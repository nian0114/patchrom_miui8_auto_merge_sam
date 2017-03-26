.class public Lcom/android/nfc/cardemulation/RoutingNotificationHelper;
.super Ljava/lang/Object;
.source "RoutingNotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/RoutingNotificationHelper$1;,
        Lcom/android/nfc/cardemulation/RoutingNotificationHelper$Singleton;
    }
.end annotation


# instance fields
.field mNotifyToResult:Z

.field mShowDialog:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RoutingNotificationHelper;->mNotifyToResult:Z

    .line 31
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RoutingNotificationHelper;->mShowDialog:Z

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/cardemulation/RoutingNotificationHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/nfc/cardemulation/RoutingNotificationHelper$1;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RoutingNotificationHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/nfc/cardemulation/RoutingNotificationHelper;
    .locals 1

    .prologue
    .line 35
    # getter for: Lcom/android/nfc/cardemulation/RoutingNotificationHelper$Singleton;->INSTANCE:Lcom/android/nfc/cardemulation/RoutingNotificationHelper;
    invoke-static {}, Lcom/android/nfc/cardemulation/RoutingNotificationHelper$Singleton;->access$100()Lcom/android/nfc/cardemulation/RoutingNotificationHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public enableDialog(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/nfc/cardemulation/RoutingNotificationHelper;->mShowDialog:Z

    .line 44
    return-void
.end method

.method public enableNotification(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/nfc/cardemulation/RoutingNotificationHelper;->mNotifyToResult:Z

    .line 40
    return-void
.end method

.method public getDialogState()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/RoutingNotificationHelper;->mShowDialog:Z

    return v0
.end method

.method public getNotificationState()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/RoutingNotificationHelper;->mNotifyToResult:Z

    return v0
.end method
