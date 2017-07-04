.class Lcom/samsung/android/glview/GLContext$2;
.super Landroid/database/ContentObserver;
.source "GLContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/glview/GLContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/glview/GLContext;


# direct methods
.method constructor <init>(Lcom/samsung/android/glview/GLContext;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/samsung/android/glview/GLContext$2;->this$0:Lcom/samsung/android/glview/GLContext;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 238
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 239
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 243
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 244
    const-string v0, "GLContext"

    const-string v1, "Touch Exploration ContentObserver onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext$2;->this$0:Lcom/samsung/android/glview/GLContext;

    # invokes: Lcom/samsung/android/glview/GLContext;->updateTouchExplorationEnabled()V
    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->access$000(Lcom/samsung/android/glview/GLContext;)V

    .line 248
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext$2;->this$0:Lcom/samsung/android/glview/GLContext;

    # getter for: Lcom/samsung/android/glview/GLContext;->mIsTouchExplorationEnabled:Z
    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->access$100(Lcom/samsung/android/glview/GLContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext$2;->this$0:Lcom/samsung/android/glview/GLContext;

    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    # invokes: Lcom/samsung/android/glview/GLContext;->enableAccessibilityService(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/samsung/android/glview/GLContext;->access$200(Lcom/samsung/android/glview/GLContext;Landroid/content/Context;)V

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext$2;->this$0:Lcom/samsung/android/glview/GLContext;

    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    # invokes: Lcom/samsung/android/glview/GLContext;->disableAccessibilityService(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/samsung/android/glview/GLContext;->access$300(Lcom/samsung/android/glview/GLContext;Landroid/content/Context;)V

    goto :goto_0
.end method
