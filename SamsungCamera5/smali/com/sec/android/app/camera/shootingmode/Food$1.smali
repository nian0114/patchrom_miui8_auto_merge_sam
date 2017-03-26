.class Lcom/sec/android/app/camera/shootingmode/Food$1;
.super Landroid/os/Handler;
.source "Food.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/Food;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Food;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/Food;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    const-wide/16 v8, 0xbb8

    const/4 v6, 0x3

    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 139
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 196
    :goto_0
    return-void

    .line 141
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    # invokes: Lcom/sec/android/app/camera/shootingmode/Food;->hideAllEffectGuide()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Food;->access$000(Lcom/sec/android/app/camera/shootingmode/Food;)V

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # invokes: Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Food;->access$100(Lcom/sec/android/app/camera/shootingmode/Food;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 145
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 151
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Food;->access$200(Lcom/sec/android/app/camera/shootingmode/Food;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Food;->access$300(Lcom/sec/android/app/camera/shootingmode/Food;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    goto :goto_0

    .line 155
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2328

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 164
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 167
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 170
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 173
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # invokes: Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Food;->access$100(Lcom/sec/android/app/camera/shootingmode/Food;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 176
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 179
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 182
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # invokes: Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Food;->access$100(Lcom/sec/android/app/camera/shootingmode/Food;Ljava/lang/Boolean;)V

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 186
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Food;->access$200(Lcom/sec/android/app/camera/shootingmode/Food;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    # invokes: Lcom/sec/android/app/camera/shootingmode/Food;->showCircleEffectFrame()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Food;->access$400(Lcom/sec/android/app/camera/shootingmode/Food;)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Food;->access$500(Lcom/sec/android/app/camera/shootingmode/Food;)Landroid/graphics/PointF;

    move-result-object v1

    # invokes: Lcom/sec/android/app/camera/shootingmode/Food;->moveCircleEffect(Landroid/graphics/PointF;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Food;->access$600(Lcom/sec/android/app/camera/shootingmode/Food;Landroid/graphics/PointF;)V

    .line 190
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method
