.class Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$MenuAdapter$1;
.super Ljava/lang/Object;
.source "ProCustomSaveListMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/widget/gl/CustomItem$CustomItemSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$MenuAdapter;->getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$MenuAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$MenuAdapter;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$MenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$MenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomItemSelected(I)V
    .locals 1
    .param p1, "commandId"    # I

    .prologue
    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$MenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$MenuAdapter;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;

    # invokes: Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->refreshView(I)V
    invoke-static {v0, p1}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->access$600(Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;I)V

    .line 351
    return-void
.end method
