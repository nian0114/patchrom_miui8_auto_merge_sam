.class Lcom/android/settings_ex/users/EditUserPhotoController$1;
.super Ljava/lang/Object;
.source "EditUserPhotoController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/users/EditUserPhotoController;-><init>(Landroid/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/users/EditUserPhotoController;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/users/EditUserPhotoController;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/settings_ex/users/EditUserPhotoController$1;->this$0:Lcom/android/settings_ex/users/EditUserPhotoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController$1;->this$0:Lcom/android/settings_ex/users/EditUserPhotoController;

    # invokes: Lcom/android/settings_ex/users/EditUserPhotoController;->showUpdatePhotoPopup()V
    invoke-static {v0}, Lcom/android/settings_ex/users/EditUserPhotoController;->access$000(Lcom/android/settings_ex/users/EditUserPhotoController;)V

    .line 101
    return-void
.end method
