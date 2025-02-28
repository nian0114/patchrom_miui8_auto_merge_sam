.class public Lcom/android/settings_ex/users/EditUserPhotoController;
.super Ljava/lang/Object;
.source "EditUserPhotoController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/users/EditUserPhotoController$AdapterItem;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCropPictureUri:Landroid/net/Uri;

.field private final mFragment:Landroid/app/Fragment;

.field private final mImageView:Landroid/widget/ImageView;

.field private mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

.field private mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

.field private final mPhotoSize:I

.field private final mTakePictureUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V
    .locals 5
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "view"    # Landroid/widget/ImageView;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p5, "waiting"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    .line 92
    iput-object p1, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mFragment:Landroid/app/Fragment;

    .line 93
    iput-object p2, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    .line 94
    iget-object v3, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    const-string v4, "CropEditUserPhoto.jpg"

    if-nez p5, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v3, v4, v0}, Lcom/android/settings_ex/users/EditUserPhotoController;->createTempImageUri(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mCropPictureUri:Landroid/net/Uri;

    .line 95
    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    const-string v3, "TakeEditUserPhoto2.jpg"

    if-nez p5, :cond_1

    :goto_1
    invoke-direct {p0, v0, v3, v1}, Lcom/android/settings_ex/users/EditUserPhotoController;->createTempImageUri(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    .line 96
    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ex/users/EditUserPhotoController;->getPhotoSize(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mPhotoSize:I

    .line 97
    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settings_ex/users/EditUserPhotoController$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/users/EditUserPhotoController$1;-><init>(Lcom/android/settings_ex/users/EditUserPhotoController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iput-object p3, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    .line 104
    iput-object p4, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    .line 105
    return-void

    :cond_0
    move v0, v2

    .line 94
    goto :goto_0

    :cond_1
    move v1, v2

    .line 95
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/settings_ex/users/EditUserPhotoController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/users/EditUserPhotoController;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings_ex/users/EditUserPhotoController;->showUpdatePhotoPopup()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/users/EditUserPhotoController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/users/EditUserPhotoController;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings_ex/users/EditUserPhotoController;->choosePhoto()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/users/EditUserPhotoController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/users/EditUserPhotoController;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings_ex/users/EditUserPhotoController;->takePhoto()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/users/EditUserPhotoController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/users/EditUserPhotoController;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/users/EditUserPhotoController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/users/EditUserPhotoController;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mPhotoSize:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/users/EditUserPhotoController;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/users/EditUserPhotoController;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings_ex/users/EditUserPhotoController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/users/EditUserPhotoController;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings_ex/users/EditUserPhotoController;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/users/EditUserPhotoController;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings_ex/users/EditUserPhotoController;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/users/EditUserPhotoController;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings_ex/users/EditUserPhotoController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/users/EditUserPhotoController;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private appendCropExtras(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 238
    const-string v0, "crop"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string v0, "scale"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 240
    const-string v0, "scaleUpIfNeeded"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 241
    const-string v0, "aspectX"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 242
    const-string v0, "aspectY"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    const-string v0, "outputX"

    iget v1, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mPhotoSize:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 244
    const-string v0, "outputY"

    iget v1, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mPhotoSize:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 245
    return-void
.end method

.method private appendOutputExtra(Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pictureUri"    # Landroid/net/Uri;

    .prologue
    .line 231
    const-string v0, "output"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 232
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 234
    const-string v0, "output"

    invoke-static {v0, p2}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 235
    return-void
.end method

.method private canChoosePhoto()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    iget-object v2, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private canTakePhoto()Z
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private choosePhoto()V
    .locals 3

    .prologue
    .line 210
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v1, "DocumentsUIPolicy"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    iget-object v1, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/users/EditUserPhotoController;->appendOutputExtra(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 214
    iget-object v1, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mFragment:Landroid/app/Fragment;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 215
    return-void
.end method

.method private createTempImageUri(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "purge"    # Z

    .prologue
    .line 330
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 331
    .local v1, "folder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 332
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 333
    .local v2, "fullPath":Ljava/io/File;
    if-eqz p3, :cond_0

    .line 334
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 336
    :cond_0
    const-string v3, "com.android.settings.files"

    invoke-static {p1, v3, v2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 338
    .local v0, "fileUri":Landroid/net/Uri;
    return-object v0
.end method

.method private cropPhoto(Landroid/net/Uri;)V
    .locals 3
    .param p1, "pictureUri"    # Landroid/net/Uri;

    .prologue
    .line 219
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    iget-object v1, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mCropPictureUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/users/EditUserPhotoController;->appendOutputExtra(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 222
    invoke-direct {p0, v0}, Lcom/android/settings_ex/users/EditUserPhotoController;->appendCropExtras(Landroid/content/Intent;)V

    .line 223
    iget-object v1, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mFragment:Landroid/app/Fragment;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/settings_ex/users/EditUserPhotoController;->onPhotoCropped(Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method private static getPhotoSize(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 318
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_max_dim"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 322
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 323
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 325
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private onPhotoCropped(Landroid/net/Uri;Z)V
    .locals 3
    .param p1, "data"    # Landroid/net/Uri;
    .param p2, "cropped"    # Z

    .prologue
    .line 248
    new-instance v1, Lcom/android/settings_ex/users/EditUserPhotoController$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/settings_ex/users/EditUserPhotoController$3;-><init>(Lcom/android/settings_ex/users/EditUserPhotoController;ZLandroid/net/Uri;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings_ex/users/EditUserPhotoController$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 315
    return-void
.end method

.method private showUpdatePhotoPopup()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 134
    invoke-direct {p0}, Lcom/android/settings_ex/users/EditUserPhotoController;->canTakePhoto()Z

    move-result v2

    .line 135
    .local v2, "canTakePhoto":Z
    invoke-direct {p0}, Lcom/android/settings_ex/users/EditUserPhotoController;->canChoosePhoto()Z

    move-result v1

    .line 137
    .local v1, "canChoosePhoto":Z
    if-nez v2, :cond_0

    if-nez v1, :cond_0

    .line 188
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v9, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 142
    .local v3, "context":Landroid/content/Context;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v5, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/users/EditUserPhotoController$AdapterItem;>;"
    invoke-direct {p0}, Lcom/android/settings_ex/users/EditUserPhotoController;->canTakePhoto()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 145
    iget-object v9, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0e0dbb

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 146
    .local v7, "title":Ljava/lang/String;
    new-instance v4, Lcom/android/settings_ex/users/EditUserPhotoController$AdapterItem;

    invoke-direct {v4, v7, v12}, Lcom/android/settings_ex/users/EditUserPhotoController$AdapterItem;-><init>(Ljava/lang/String;I)V

    .line 147
    .local v4, "item":Lcom/android/settings_ex/users/EditUserPhotoController$AdapterItem;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    .end local v4    # "item":Lcom/android/settings_ex/users/EditUserPhotoController$AdapterItem;
    .end local v7    # "title":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    .line 151
    const v9, 0x7f0e0dbc

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 152
    .restart local v7    # "title":Ljava/lang/String;
    new-instance v4, Lcom/android/settings_ex/users/EditUserPhotoController$AdapterItem;

    invoke-direct {v4, v7, v11}, Lcom/android/settings_ex/users/EditUserPhotoController$AdapterItem;-><init>(Ljava/lang/String;I)V

    .line 153
    .restart local v4    # "item":Lcom/android/settings_ex/users/EditUserPhotoController$AdapterItem;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    .end local v4    # "item":Lcom/android/settings_ex/users/EditUserPhotoController$AdapterItem;
    .end local v7    # "title":Ljava/lang/String;
    :cond_2
    new-instance v6, Landroid/widget/ListPopupWindow;

    invoke-direct {v6, v3}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 158
    .local v6, "listPopupWindow":Landroid/widget/ListPopupWindow;
    iget-object v9, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 159
    invoke-virtual {v6, v11}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 160
    invoke-virtual {v6, v12}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 162
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v9, 0x7f0400c8

    invoke-direct {v0, v3, v9, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 164
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v6, v0}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 166
    iget-object v9, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getWidth()I

    move-result v9

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c015c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 168
    .local v8, "width":I
    invoke-virtual {v6, v8}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 170
    new-instance v9, Lcom/android/settings_ex/users/EditUserPhotoController$2;

    invoke-direct {v9, p0, v5, v6}, Lcom/android/settings_ex/users/EditUserPhotoController$2;-><init>(Lcom/android/settings_ex/users/EditUserPhotoController;Ljava/util/List;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v6, v9}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 187
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method

.method private takePhoto()V
    .locals 3

    .prologue
    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/users/EditUserPhotoController;->appendOutputExtra(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 206
    iget-object v1, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mFragment:Landroid/app/Fragment;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 207
    return-void
.end method


# virtual methods
.method public getNewUserPhotoBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getNewUserPhotoDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 108
    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    .line 122
    :goto_0
    return v1

    .line 111
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 113
    .local v0, "pictureUri":Landroid/net/Uri;
    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 119
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/users/EditUserPhotoController;->cropPhoto(Landroid/net/Uri;)V

    move v1, v2

    .line 120
    goto :goto_0

    .line 111
    .end local v0    # "pictureUri":Landroid/net/Uri;
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    goto :goto_1

    .line 115
    .restart local v0    # "pictureUri":Landroid/net/Uri;
    :pswitch_1
    invoke-direct {p0, v0, v2}, Lcom/android/settings_ex/users/EditUserPhotoController;->onPhotoCropped(Landroid/net/Uri;Z)V

    move v1, v2

    .line 116
    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
