.class Lcom/android/server/power/ShutdownThread$1$2;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread$1;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread$1;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread$1;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$1$2;->this$0:Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$1$2;->this$0:Lcom/android/server/power/ShutdownThread$1;

    # invokes: Lcom/android/server/power/ShutdownThread$1;->animateDismiss()V
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread$1;->access$500(Lcom/android/server/power/ShutdownThread$1;)V

    return-void
.end method
