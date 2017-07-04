.class Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu$MainHandler;
.super Landroid/os/Handler;
.source "FoodBlurLevelSliderMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu$MainHandler;->this$0:Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;
    .param p2, "x1"    # Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu$1;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu$MainHandler;-><init>(Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 219
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 225
    :goto_0
    return-void

    .line 221
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu$MainHandler;->this$0:Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->stopSliderMenuTimer()V

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu$MainHandler;->this$0:Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->hideMenu()V

    goto :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
