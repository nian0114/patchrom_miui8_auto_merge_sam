.class Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$6;
.super Ljava/lang/Object;
.source "MultiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->notifySystemUiVisibility(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;I)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$6;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    iput p2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$6;->val$visibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$6;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget v1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$6;->val$visibility:I

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->notifySystemUiVisibility(I)V

    return-void
.end method
