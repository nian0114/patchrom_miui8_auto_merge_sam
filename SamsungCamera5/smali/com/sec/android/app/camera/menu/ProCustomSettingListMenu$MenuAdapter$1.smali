.class Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$MenuAdapter$1;
.super Ljava/lang/Object;
.source "ProCustomSettingListMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/widget/gl/CustomItem$CustomItemSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$MenuAdapter;->getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$MenuAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$MenuAdapter;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$MenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$MenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomItemSelected(I)V
    .locals 1
    .param p1, "commandId"    # I

    .prologue
    .line 277
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$MenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$MenuAdapter;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mCustomSettingMenuSelectListener:Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$CustomSettingMenuSelectListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$CustomSettingMenuSelectListener;->onCustomSettingMenuSelected(I)V

    .line 278
    return-void
.end method
