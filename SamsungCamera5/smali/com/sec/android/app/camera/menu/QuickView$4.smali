.class Lcom/sec/android/app/camera/menu/QuickView$4;
.super Ljava/lang/Object;
.source "QuickView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/QuickView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/QuickView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/QuickView;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/QuickView$4;->this$0:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 154
    const-string v0, "QuickView"

    const-string v1, "mInitQuickViewRunnable"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView$4;->this$0:Lcom/sec/android/app/camera/menu/QuickView;

    # getter for: Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/QuickView;->access$500(Lcom/sec/android/app/camera/menu/QuickView;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView$4;->this$0:Lcom/sec/android/app/camera/menu/QuickView;

    # getter for: Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/QuickView;->access$500(Lcom/sec/android/app/camera/menu/QuickView;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView$4;->this$0:Lcom/sec/android/app/camera/menu/QuickView;

    # getter for: Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/QuickView;->access$500(Lcom/sec/android/app/camera/menu/QuickView;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setAlpha(F)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView$4;->this$0:Lcom/sec/android/app/camera/menu/QuickView;

    # getter for: Lcom/sec/android/app/camera/menu/QuickView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/QuickView;->access$000(Lcom/sec/android/app/camera/menu/QuickView;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView$4;->this$0:Lcom/sec/android/app/camera/menu/QuickView;

    # getter for: Lcom/sec/android/app/camera/menu/QuickView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/QuickView;->access$000(Lcom/sec/android/app/camera/menu/QuickView;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideQuickView()V

    .line 162
    :cond_1
    return-void
.end method
