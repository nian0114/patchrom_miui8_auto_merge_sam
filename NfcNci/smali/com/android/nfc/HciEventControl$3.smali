.class Lcom/android/nfc/HciEventControl$3;
.super Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback$Stub;
.source "HciEventControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/HciEventControl;->checkPermission(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/HciEventControl;


# direct methods
.method constructor <init>(Lcom/android/nfc/HciEventControl;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/nfc/HciEventControl$3;->this$0:Lcom/android/nfc/HciEventControl;

    invoke-direct {p0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback$Stub;-><init>()V

    return-void
.end method
