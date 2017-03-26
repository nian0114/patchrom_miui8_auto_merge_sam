.class Lcom/android/nfc/cardemulation/RegisteredAidCache$1;
.super Ljava/util/TimerTask;
.source "RegisteredAidCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/cardemulation/RegisteredAidCache;->onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/RegisteredAidCache;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V
    .locals 0

    .prologue
    .line 893
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$1;->this$0:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 896
    sget-boolean v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "RegisteredAidCache"

    const-string v1, "Delay End, Send Intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$1;->this$0:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$1;->this$0:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    iget-object v1, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->sendSettingBroadcast(Landroid/content/ComponentName;)V

    .line 898
    return-void
.end method
