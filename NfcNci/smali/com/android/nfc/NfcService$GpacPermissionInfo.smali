.class Lcom/android/nfc/NfcService$GpacPermissionInfo;
.super Ljava/lang/Object;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GpacPermissionInfo"
.end annotation


# instance fields
.field actionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field allowedResult:[Z

.field forceUpdate:Z

.field packageList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field permName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/nfc/NfcService;

.field updateRule:I


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 799
    iput-object p1, p0, Lcom/android/nfc/NfcService$GpacPermissionInfo;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 803
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService$GpacPermissionInfo;->packageList:Ljava/util/LinkedList;

    .line 808
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService$GpacPermissionInfo;->actionList:Ljava/util/List;

    .line 810
    iput-boolean v1, p0, Lcom/android/nfc/NfcService$GpacPermissionInfo;->forceUpdate:Z

    .line 811
    iput v1, p0, Lcom/android/nfc/NfcService$GpacPermissionInfo;->updateRule:I

    return-void
.end method
