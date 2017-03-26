.class Lcom/samsung/android/glview/GLContext$3;
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
    .line 256
    iput-object p1, p0, Lcom/samsung/android/glview/GLContext$3;->this$0:Lcom/samsung/android/glview/GLContext;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v2, 0x0

    .line 259
    sget-object v0, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext$3;->this$0:Lcom/samsung/android/glview/GLContext;

    # invokes: Lcom/samsung/android/glview/GLContext;->enableOrientationListener()V
    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->access$400(Lcom/samsung/android/glview/GLContext;)V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    sget-object v0, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext$3;->this$0:Lcom/samsung/android/glview/GLContext;

    # invokes: Lcom/samsung/android/glview/GLContext;->disableOrientationListener()V
    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->access$500(Lcom/samsung/android/glview/GLContext;)V

    goto :goto_0
.end method
