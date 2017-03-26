.class Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;
.super Ljava/lang/Object;
.source "RegisteredServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/RegisteredServicesCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OtherServiceStatus"
.end annotation


# instance fields
.field public checked:Z

.field public final uid:I


# direct methods
.method constructor <init>(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput p1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;->uid:I

    .line 140
    iput-boolean p2, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;->checked:Z

    .line 141
    return-void
.end method
