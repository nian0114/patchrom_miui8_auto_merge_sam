.class public Lcom/sec/android/app/camera/RequestPermissionActivity;
.super Landroid/app/Activity;
.source "RequestPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/RequestPermissionActivity$PermissionListAdapter;
    }
.end annotation


# static fields
.field protected static final REQUEST_PERMISSION_CAMERA:I = 0x1

.field protected static final REQUEST_PERMISSION_CAMERA_LOCATION:I = 0x2

.field protected static final TAG:Ljava/lang/String; = "RequestPermissionActivity"


# instance fields
.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverMode:Z

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mLocationDialogId:I

.field private mPermissionRationaleDialog:Landroid/app/AlertDialog;

.field private mPreviousActivityIntent:Landroid/content/Intent;

.field private mScover:Lcom/samsung/android/sdk/cover/Scover;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mPermissionRationaleDialog:Landroid/app/AlertDialog;

    .line 394
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/RequestPermissionActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/RequestPermissionActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->dismissPermissionRationaleDialog()V

    return-void
.end method

.method private checkAllPermissionsAreGranted()V
    .locals 14

    .prologue
    const v13, 0x7f0800f2

    const/4 v12, 0x0

    const/16 v11, 0x1e1

    const/4 v10, 0x1

    .line 244
    const-string v7, "RequestPermissionActivity"

    const-string v8, "checkAllPermissionsAreGranted"

    invoke-static {v7, v8}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v1, "deniedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/camera/util/PermissionUtils;->getRequiredPermissions(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    .line 250
    .local v6, "permission":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/RequestPermissionActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 251
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 254
    .end local v6    # "permission":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 255
    const-string v7, "RequestPermissionActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkAllPermissionsAreGranted : denied permissions = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-boolean v7, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mCoverMode:Z

    if-eqz v7, :cond_5

    .line 257
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/camera/util/Util;->isSecureKeyguardLocked(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 258
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08013a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v11, v7}, Lcom/sec/android/app/camera/RequestPermissionActivity;->showCameraDialog(ILjava/lang/String;)V

    .line 280
    :cond_2
    :goto_1
    return-void

    .line 260
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v10, :cond_4

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 261
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080138

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v11, v7}, Lcom/sec/android/app/camera/RequestPermissionActivity;->showCameraDialog(ILjava/lang/String;)V

    goto :goto_1

    .line 263
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 264
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080137

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v12

    aput-object v5, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v11, v7}, Lcom/sec/android/app/camera/RequestPermissionActivity;->showCameraDialog(ILjava/lang/String;)V

    goto :goto_1

    .line 268
    .end local v5    # "name":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/camera/util/Util;->isSecureKeyguardLocked(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 269
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v10, :cond_6

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 270
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0801ac

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v11, v7}, Lcom/sec/android/app/camera/RequestPermissionActivity;->showCameraDialog(ILjava/lang/String;)V

    goto :goto_1

    .line 272
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0801ad

    new-array v9, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, "message":Ljava/lang/String;
    invoke-direct {p0, v11, v4}, Lcom/sec/android/app/camera/RequestPermissionActivity;->showCameraDialog(ILjava/lang/String;)V

    goto :goto_1

    .line 276
    .end local v4    # "message":Ljava/lang/String;
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {p0, v7, v10}, Lcom/sec/android/app/camera/RequestPermissionActivity;->requestPermissions([Ljava/lang/String;I)V

    goto/16 :goto_1
.end method

.method private checkLocationPermissionGranted()Z
    .locals 3

    .prologue
    .line 283
    const-string v0, "RequestPermissionActivity"

    const-string v1, "checkLocationPermissionGranted"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/camera/util/PermissionUtils;->getLocationPermission()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/PermissionUtils;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isSecureKeyguardLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    const/16 v0, 0x1e1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/RequestPermissionActivity;->showCameraDialog(ILjava/lang/String;)V

    .line 290
    :goto_0
    const/4 v0, 0x0

    .line 292
    :goto_1
    return v0

    .line 288
    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/util/PermissionUtils;->getLocationPermission()[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mLocationDialogId:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/RequestPermissionActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 292
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private dismissPermissionRationaleDialog()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mPermissionRationaleDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mPermissionRationaleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mPermissionRationaleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 299
    :cond_0
    return-void
.end method

.method private initCoverCamera()V
    .locals 4

    .prologue
    .line 302
    new-instance v2, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v2}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    .line 304
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    invoke-virtual {v2, p0}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 312
    :goto_0
    new-instance v2, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 313
    new-instance v2, Lcom/sec/android/app/camera/RequestPermissionActivity$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/RequestPermissionActivity$1;-><init>(Lcom/sec/android/app/camera/RequestPermissionActivity;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .line 323
    iget-object v2, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v3, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 325
    iget-object v2, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    .line 326
    .local v1, "state":Lcom/samsung/android/sdk/cover/ScoverState;
    if-eqz v1, :cond_0

    .line 327
    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v2

    if-nez v2, :cond_0

    .line 328
    const-string v2, "RequestPermissionActivity"

    const-string v3, "onCreate calling setCoverMode"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mCoverMode:Z

    .line 332
    :cond_0
    return-void

    .line 305
    .end local v1    # "state":Lcom/samsung/android/sdk/cover/ScoverState;
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "RequestPermissionActivity"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 308
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 309
    .local v0, "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    const-string v2, "RequestPermissionActivity"

    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method private showCameraDialog(ILjava/lang/String;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 341
    .local v3, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Landroid/app/DialogFragment;

    .line 342
    .local v2, "fragment":Landroid/app/DialogFragment;
    if-eqz v2, :cond_0

    .line 343
    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 345
    :cond_0
    const-string v4, ""

    invoke-static {p1, v4, p2}, Lcom/sec/android/app/camera/CameraDialog;->newInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/camera/CameraDialog;

    move-result-object v0

    .line 347
    .local v0, "dialog":Landroid/app/DialogFragment;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v1

    .line 349
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method private showPermissionRationaleDialog(Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 354
    .local p1, "permissionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 355
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v13

    const v14, 0x7f04000d

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 356
    .local v5, "layout":Landroid/view/View;
    const v13, 0x7f0e0001

    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 357
    .local v12, "textView":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0800f2

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, "appName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0801ab

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v2, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 360
    .local v9, "permissionMessage":Ljava/lang/String;
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 361
    .local v11, "stringBuilder":Landroid/text/SpannableStringBuilder;
    new-instance v13, Landroid/text/style/StyleSpan;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v11, v13, v14, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 362
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v10, "permissionStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v8, "permissionDrawableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 367
    .local v7, "permission":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v7}, Lcom/sec/android/app/camera/util/PermissionUtils;->getPermissionGroupString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v7}, Lcom/sec/android/app/camera/util/PermissionUtils;->getPermissionGroupDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 370
    .end local v7    # "permission":Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/sec/android/app/camera/RequestPermissionActivity$PermissionListAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f04000e

    invoke-direct {v1, v13, v14, v10, v8}, Lcom/sec/android/app/camera/RequestPermissionActivity$PermissionListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 371
    .local v1, "adapter":Landroid/widget/ListAdapter;
    const v13, 0x7f0e0018

    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 372
    .local v6, "listView":Landroid/widget/ListView;
    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 373
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 374
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 375
    const v13, 0x7f0801ce

    new-instance v14, Lcom/sec/android/app/camera/RequestPermissionActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/sec/android/app/camera/RequestPermissionActivity$2;-><init>(Lcom/sec/android/app/camera/RequestPermissionActivity;)V

    invoke-virtual {v3, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 383
    const/high16 v13, 0x1040000

    new-instance v14, Lcom/sec/android/app/camera/RequestPermissionActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/sec/android/app/camera/RequestPermissionActivity$3;-><init>(Lcom/sec/android/app/camera/RequestPermissionActivity;)V

    invoke-virtual {v3, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 390
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mPermissionRationaleDialog:Landroid/app/AlertDialog;

    .line 391
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mPermissionRationaleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    .line 392
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 187
    const-string v3, "RequestPermissionActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult requestCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    if-ne p1, v0, :cond_4

    .line 189
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/PermissionUtils;->getRequiredPermissions(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/PermissionUtils;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 190
    iget-object v3, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x3

    if-eqz v3, :cond_2

    .line 191
    .local v0, "checkUriPermissionIntent":Z
    :goto_0
    if-nez v0, :cond_0

    .line 192
    iget-object v3, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    const/high16 v4, 0x2010000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 193
    iget-object v3, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/RequestPermissionActivity;->startActivity(Landroid/content/Intent;)V

    .line 195
    :cond_0
    const-string v3, "RequestPermissionActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finish requestPermissionActivity, checkUriPermissionIntent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->finish()V

    .line 197
    invoke-virtual {p0, v2, v2}, Lcom/sec/android/app/camera/RequestPermissionActivity;->overridePendingTransition(II)V

    .line 211
    .end local v0    # "checkUriPermissionIntent":Z
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 190
    goto :goto_0

    .line 200
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->finish()V

    goto :goto_1

    .line 201
    :cond_4
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 203
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "location_dialog_id"

    iget v4, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mLocationDialogId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/PermissionUtils;->getRequiredPermissions(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/PermissionUtils;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 205
    const/4 v2, -0x1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/RequestPermissionActivity;->setResult(ILandroid/content/Intent;)V

    .line 209
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->finish()V

    goto :goto_1

    .line 207
    :cond_5
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/RequestPermissionActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const-string v2, "RequestPermissionActivity"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const v2, 0x7f040011

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/RequestPermissionActivity;->setContentView(I)V

    .line 85
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_SVIEW_COVER_CAMERA:Z

    if-eqz v2, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->initCoverCamera()V

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 90
    .local v1, "win":Landroid/view/Window;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->isSecureKeyguardLocked(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mCoverMode:Z

    if-eqz v2, :cond_2

    .line 91
    :cond_1
    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 94
    .local v0, "myExtras":Landroid/os/Bundle;
    const-string v2, "previous_intent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    .line 95
    iget-object v2, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    if-eqz v2, :cond_4

    .line 96
    const-string v2, "previous_window_flag"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 102
    :goto_0
    if-nez p1, :cond_3

    .line 103
    iget-object v2, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    if-eqz v2, :cond_5

    .line 104
    invoke-direct {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->checkAllPermissionsAreGranted()V

    .line 109
    :cond_3
    :goto_1
    return-void

    .line 98
    :cond_4
    const-string v2, "location_dialog_id"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mLocationDialogId:I

    goto :goto_0

    .line 106
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->checkLocationPermissionGranted()Z

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 217
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_SVIEW_COVER_CAMERA:Z

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 222
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v10, -0x1

    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 116
    const-string v7, "RequestPermissionActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onRequestPermissionsResult : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sparse-switch p1, :sswitch_data_0

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 120
    :sswitch_0
    const/4 v5, 0x0

    .line 121
    .local v5, "needToShowAppPopup":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v1, "deniedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v7, p2

    if-ge v2, v7, :cond_4

    .line 124
    aget v7, p3, v2

    if-ne v7, v10, :cond_1

    .line 125
    aget-object v7, p2, v2

    const-string v8, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 126
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "pref_global_setup_gps_key"

    invoke-static {v6}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v9

    invoke-static {v7, v8, v9}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 136
    :goto_2
    aget-object v7, p2, v2

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 128
    :cond_2
    const-string v7, "RequestPermissionActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "At least one permission denied, can\'t continue: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p2, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    aget-object v7, p2, v2

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/RequestPermissionActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 130
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->finish()V

    goto :goto_0

    .line 133
    :cond_3
    const/4 v5, 0x1

    goto :goto_2

    .line 140
    :cond_4
    if-eqz v5, :cond_5

    .line 141
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/RequestPermissionActivity;->showPermissionRationaleDialog(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 143
    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v7

    and-int/lit8 v7, v7, 0x3

    if-eqz v7, :cond_7

    .line 144
    .local v0, "checkUriPermissionIntent":Z
    :goto_3
    if-nez v0, :cond_6

    .line 145
    iget-object v7, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    const/high16 v8, 0x2010000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 146
    iget-object v7, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/RequestPermissionActivity;->startActivity(Landroid/content/Intent;)V

    .line 148
    :cond_6
    const-string v7, "RequestPermissionActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "finish requestPermissionActivity, checkUriPermissionIntent : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->finish()V

    .line 150
    invoke-virtual {p0, v6, v6}, Lcom/sec/android/app/camera/RequestPermissionActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .end local v0    # "checkUriPermissionIntent":Z
    :cond_7
    move v0, v6

    .line 143
    goto :goto_3

    .line 159
    .end local v1    # "deniedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v5    # "needToShowAppPopup":Z
    :sswitch_1
    array-length v7, p3

    if-lez v7, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 161
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "location_dialog_id"

    invoke-virtual {v3, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    aget v7, p3, v6

    if-nez v7, :cond_8

    .line 163
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v10, v6}, Lcom/sec/android/app/camera/RequestPermissionActivity;->setResult(ILandroid/content/Intent;)V

    .line 164
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->finish()V

    goto/16 :goto_0

    .line 166
    :cond_8
    aget-object v7, p2, v6

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/RequestPermissionActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 167
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/camera/RequestPermissionActivity;->setResult(ILandroid/content/Intent;)V

    .line 168
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->finish()V

    goto/16 :goto_0

    .line 170
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0801b9

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f0800b1

    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v10, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v6, v10}, Lcom/sec/android/app/camera/util/PermissionUtils;->getPermissionGroupString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, "message":Ljava/lang/String;
    const/16 v6, 0x1e0

    invoke-direct {p0, v6, v4}, Lcom/sec/android/app/camera/RequestPermissionActivity;->showCameraDialog(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 118
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x19c -> :sswitch_1
        0x19d -> :sswitch_1
        0x19e -> :sswitch_1
        0x19f -> :sswitch_1
        0x1a0 -> :sswitch_1
        0x1a1 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 226
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 227
    const-string v2, "RequestPermissionActivity"

    const-string v3, "onResume"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/PermissionUtils;->getRequiredPermissions(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/PermissionUtils;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    iget-object v2, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    .line 230
    iget-object v2, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 231
    .local v0, "checkUriPermissionIntent":Z
    :goto_0
    if-nez v0, :cond_0

    .line 232
    iget-object v2, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    const/high16 v3, 0x2010000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 233
    iget-object v2, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/RequestPermissionActivity;->startActivity(Landroid/content/Intent;)V

    .line 235
    :cond_0
    const-string v2, "RequestPermissionActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finish requestPermissionActivity, checkUriPermissionIntent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->finish()V

    .line 237
    invoke-virtual {p0, v1, v1}, Lcom/sec/android/app/camera/RequestPermissionActivity;->overridePendingTransition(II)V

    .line 241
    .end local v0    # "checkUriPermissionIntent":Z
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 230
    goto :goto_0
.end method
