.class Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter$1;
.super Ljava/lang/Object;
.source "EasyModeListMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/widget/gl/ModeItem$SelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;->getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Lcom/samsung/android/glview/GLView;)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EasyModeListMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EasyModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->access$400(Lcom/sec/android/app/camera/menu/EasyModeListMenu;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->setOneTimeHideAnimation(Landroid/view/animation/Animation;)V

    .line 431
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EasyModeListMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->hideMenu()V

    .line 432
    return-void
.end method
