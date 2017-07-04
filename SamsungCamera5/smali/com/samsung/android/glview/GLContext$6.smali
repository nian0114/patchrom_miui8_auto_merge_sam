.class Lcom/samsung/android/glview/GLContext$6;
.super Landroid/view/OrientationEventListener;
.source "GLContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/glview/GLContext;->setOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/glview/GLContext;


# direct methods
.method constructor <init>(Lcom/samsung/android/glview/GLContext;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 2128
    iput-object p1, p0, Lcom/samsung/android/glview/GLContext$6;->this$0:Lcom/samsung/android/glview/GLContext;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 2131
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2132
    const-string v0, "GLContext"

    const-string v1, "android onOrientationChanged - ORIENTATION_UNKNOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    :goto_0
    return-void

    .line 2136
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext$6;->this$0:Lcom/samsung/android/glview/GLContext;

    # invokes: Lcom/samsung/android/glview/GLContext;->handleOrientationChanged(I)V
    invoke-static {v0, p1}, Lcom/samsung/android/glview/GLContext;->access$800(Lcom/samsung/android/glview/GLContext;I)V

    goto :goto_0
.end method
