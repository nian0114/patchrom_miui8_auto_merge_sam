.class Lcom/sec/android/app/camera/menu/FoodSliderMenu$MainHandler;
.super Landroid/os/Handler;
.source "FoodSliderMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/FoodSliderMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/FoodSliderMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/menu/FoodSliderMenu;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/FoodSliderMenu$MainHandler;->this$0:Lcom/sec/android/app/camera/menu/FoodSliderMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/menu/FoodSliderMenu;Lcom/sec/android/app/camera/menu/FoodSliderMenu$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/menu/FoodSliderMenu;
    .param p2, "x1"    # Lcom/sec/android/app/camera/menu/FoodSliderMenu$1;

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/FoodSliderMenu$MainHandler;-><init>(Lcom/sec/android/app/camera/menu/FoodSliderMenu;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 205
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 211
    :goto_0
    return-void

    .line 207
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodSliderMenu$MainHandler;->this$0:Lcom/sec/android/app/camera/menu/FoodSliderMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->stopSliderMenuTimer()V

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodSliderMenu$MainHandler;->this$0:Lcom/sec/android/app/camera/menu/FoodSliderMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->hideMenu()V

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
