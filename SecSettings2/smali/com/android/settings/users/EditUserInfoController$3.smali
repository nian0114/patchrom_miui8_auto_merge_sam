.class Lcom/android/settings_ex/users/EditUserInfoController$3;
.super Ljava/lang/Object;
.source "EditUserInfoController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/users/EditUserInfoController;->createDialog(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILcom/android/settings_ex/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/users/EditUserInfoController;

.field final synthetic val$callback:Lcom/android/settings_ex/users/EditUserInfoController$OnContentChangedCallback;

.field final synthetic val$currentUserIcon:Landroid/graphics/drawable/Drawable;

.field final synthetic val$currentUserName:Ljava/lang/CharSequence;

.field final synthetic val$fragment:Landroid/app/Fragment;

.field final synthetic val$userNameView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/users/EditUserInfoController;Landroid/widget/EditText;Ljava/lang/CharSequence;Lcom/android/settings_ex/users/EditUserInfoController$OnContentChangedCallback;Landroid/graphics/drawable/Drawable;Landroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/settings_ex/users/EditUserInfoController$3;->this$0:Lcom/android/settings_ex/users/EditUserInfoController;

    iput-object p2, p0, Lcom/android/settings_ex/users/EditUserInfoController$3;->val$userNameView:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/settings_ex/users/EditUserInfoController$3;->val$currentUserName:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/settings_ex/users/EditUserInfoController$3;->val$callback:Lcom/android/settings_ex/users/EditUserInfoController$OnContentChangedCallback;

    iput-object p5, p0, Lcom/android/settings_ex/users/EditUserInfoController$3;->val$currentUserIcon:Landroid/graphics/drawable/Drawable;

    iput-object p6, p0, Lcom/android/settings_ex/users/EditUserInfoController$3;->val$fragment:Landroid/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 183
    const/4 v3, -0x1

    if-ne p2, v3, :cond_5

    .line 185
    iget-object v3, p0, Lcom/android/settings_ex/users/EditUserInfoController$3;->val$userNameView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 186
    .local v2, "userName":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 187
    iget-object v3, p0, Lcom/android/settings_ex/users/EditUserInfoController$3;->val$currentUserName:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/users/EditUserInfoController$3;->val$currentUserName:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 189
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/users/EditUserInfoController$3;->val$callback:Lcom/android/settings_ex/users/EditUserInfoController$OnContentChangedCallback;

    if-eqz v3, :cond_1

    .line 190
    iget-object v3, p0, Lcom/android/settings_ex/users/EditUserInfoController$3;->val$callback:Lcom/android/settings_ex/users/EditUserInfoController$OnContentChangedCallback;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/settings_ex/users/EditUserInfoController$OnContentChangedCallback;->onLabelChanged(Ljava/lang/CharSequence;)V

    .line 192
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/users/EditUserInfoController$3;->this$0:Lcom/android/settings_ex/users/EditUserInfoController;

    # getter for: Lcom/android/settings_ex/users/EditUserInfoController;->mUserManager:Landroid/os/UserManager;
    invoke-static {v3}, Lcom/android/settings_ex/users/EditUserInfoController;->access$300(Lcom/android/settings_ex/users/EditUserInfoController;)Landroid/os/UserManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/users/EditUserInfoController$3;->this$0:Lcom/android/settings_ex/users/EditUserInfoController;

    # getter for: Lcom/android/settings_ex/users/EditUserInfoController;->mUser:Landroid/os/UserHandle;
    invoke-static {v4}, Lcom/android/settings_ex/users/EditUserInfoController;->access$200(Lcom/android/settings_ex/users/EditUserInfoController;)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 197
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/users/EditUserInfoController$3;->this$0:Lcom/android/settings_ex/users/EditUserInfoController;

    # getter for: Lcom/android/settings_ex/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settings_ex/users/EditUserPhotoController;
    invoke-static {v3}, Lcom/android/settings_ex/users/EditUserInfoController;->access$400(Lcom/android/settings_ex/users/EditUserInfoController;)Lcom/android/settings_ex/users/EditUserPhotoController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings_ex/users/EditUserPhotoController;->getNewUserPhotoDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 198
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/settings_ex/users/EditUserInfoController$3;->this$0:Lcom/android/settings_ex/users/EditUserInfoController;

    # getter for: Lcom/android/settings_ex/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settings_ex/users/EditUserPhotoController;
    invoke-static {v3}, Lcom/android/settings_ex/users/EditUserInfoController;->access$400(Lcom/android/settings_ex/users/EditUserInfoController;)Lcom/android/settings_ex/users/EditUserPhotoController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings_ex/users/EditUserPhotoController;->getNewUserPhotoBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 199
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/settings_ex/users/EditUserInfoController$3;->val$currentUserIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 201
    iget-object v3, p0, Lcom/android/settings_ex/users/EditUserInfoController$3;->val$callback:Lcom/android/settings_ex/users/EditUserInfoController$OnContentChangedCallback;

    if-eqz v3, :cond_3

    .line 202
    iget-object v3, p0, Lcom/android/settings_ex/users/EditUserInfoController$3;->val$callback:Lcom/android/settings_ex/users/EditUserInfoController$OnContentChangedCallback;

    invoke-interface {v3, v1}, Lcom/android/settings_ex/users/EditUserInfoController$OnContentChangedCallback;->onPhotoChanged(Landroid/graphics/drawable/Drawable;)V

    .line 205
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/users/EditUserInfoController$3;->this$0:Lcom/android/settings_ex/users/EditUserInfoController;

    # getter for: Lcom/android/settings_ex/users/EditUserInfoController;->mUserManager:Landroid/os/UserManager;
    invoke-static {v3}, Lcom/android/settings_ex/users/EditUserInfoController;->access$300(Lcom/android/settings_ex/users/EditUserInfoController;)Landroid/os/UserManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/users/EditUserInfoController$3;->this$0:Lcom/android/settings_ex/users/EditUserInfoController;

    # getter for: Lcom/android/settings_ex/users/EditUserInfoController;->mUser:Landroid/os/UserHandle;
    invoke-static {v4}, Lcom/android/settings_ex/users/EditUserInfoController;->access$200(Lcom/android/settings_ex/users/EditUserInfoController;)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 215
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/users/EditUserInfoController$3;->val$fragment:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->removeDialog(I)V

    .line 218
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "userName":Ljava/lang/CharSequence;
    :cond_5
    iget-object v3, p0, Lcom/android/settings_ex/users/EditUserInfoController$3;->this$0:Lcom/android/settings_ex/users/EditUserInfoController;

    invoke-virtual {v3}, Lcom/android/settings_ex/users/EditUserInfoController;->clear()V

    .line 219
    return-void
.end method
