.class public abstract Landroid/hardware/input/InputManagerInternal;
.super Ljava/lang/Object;
.source "InputManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract injectInputEvent(Landroid/view/InputEvent;II)Z
.end method

.method public abstract setDisplayViewports(Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;)V
.end method

.method public abstract setDisplayViewports(Ljava/util/ArrayList;Landroid/hardware/display/DisplayViewport;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;",
            "Landroid/hardware/display/DisplayViewport;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setInteractive(Z)V
.end method

.method public abstract setMouseControlType(I)V
.end method

.method public abstract setMouseCursorVisibility(Z)V
.end method

.method public abstract setSubInteractive(Z)V
.end method

.method public abstract setTspLpmMode(IZ)V
.end method
