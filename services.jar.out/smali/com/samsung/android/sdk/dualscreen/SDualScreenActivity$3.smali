.class Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$3;
.super Ljava/lang/Object;
.source "SDualScreenActivity.java"

# interfaces
.implements Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ShrinkRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->setShrinkRequestListener(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ShrinkRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$3;->this$0:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShrinkRequested(Lcom/samsung/android/dualscreen/DualScreen;I)V
    .locals 2
    .param p1, "toScreen"    # Lcom/samsung/android/dualscreen/DualScreen;
    .param p2, "notifyReason"    # I

    .prologue
    invoke-static {p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->convertToSdkDualScreenEnum(Ljava/lang/Object;)Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    move-result-object v0

    .local v0, "toSdkScreen":Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    iget-object v1, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$3;->this$0:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    # getter for: Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mSdkShrinkRequestListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ShrinkRequestListener;
    invoke-static {v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->access$300(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;)Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ShrinkRequestListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$3;->this$0:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    # getter for: Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mSdkShrinkRequestListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ShrinkRequestListener;
    invoke-static {v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->access$300(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;)Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ShrinkRequestListener;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ShrinkRequestListener;->onShrinkRequested(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;I)V

    :cond_0
    return-void
.end method
