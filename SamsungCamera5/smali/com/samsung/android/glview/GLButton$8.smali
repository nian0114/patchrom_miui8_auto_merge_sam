.class Lcom/samsung/android/glview/GLButton$8;
.super Ljava/lang/Object;
.source "GLButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/glview/GLButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/glview/GLButton;


# direct methods
.method constructor <init>(Lcom/samsung/android/glview/GLButton;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/samsung/android/glview/GLButton$8;->this$0:Lcom/samsung/android/glview/GLButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton$8;->this$0:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    # invokes: Lcom/samsung/android/glview/GLButton;->setButtonPressed(Z)V
    invoke-static {v0, v1}, Lcom/samsung/android/glview/GLButton;->access$200(Lcom/samsung/android/glview/GLButton;Z)V

    .line 244
    iget-object v0, p0, Lcom/samsung/android/glview/GLButton$8;->this$0:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 245
    return-void
.end method
