.class final Landroid/app/ActivityThread$MultiWindowFocusChangeData;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MultiWindowFocusChangeData"
.end annotation


# instance fields
.field final activityToken:Landroid/os/IBinder;

.field focus:Z

.field keepInputMethod:Z

.field notifyReason:I


# direct methods
.method public constructor <init>(Landroid/os/IBinder;IZZ)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "_notifyReason"    # I
    .param p3, "_focus"    # Z
    .param p4, "_keepInputMethod"    # Z

    .prologue
    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 754
    iput-object p1, p0, Landroid/app/ActivityThread$MultiWindowFocusChangeData;->activityToken:Landroid/os/IBinder;

    .line 755
    iput p2, p0, Landroid/app/ActivityThread$MultiWindowFocusChangeData;->notifyReason:I

    .line 756
    iput-boolean p3, p0, Landroid/app/ActivityThread$MultiWindowFocusChangeData;->focus:Z

    .line 757
    iput-boolean p4, p0, Landroid/app/ActivityThread$MultiWindowFocusChangeData;->keepInputMethod:Z

    .line 758
    return-void
.end method
