.class public final Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
.super Ljava/lang/Object;
.source "PlugInShootingModesStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlugInShootingMode"
.end annotation


# instance fields
.field public final activityName:Ljava/lang/String;

.field public final cameraType:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;

.field protected commandId:I

.field public downloaded:I

.field public final frontOrder:I

.field public final iconId:I

.field public final id:I

.field public final majorVersion:I

.field public final minorVersion:I

.field public final modeDesc:Ljava/lang/String;

.field public final modeTitle:Ljava/lang/String;

.field public final nativeLibraryDir:Ljava/lang/String;

.field public final order:I

.field public final packageName:Ljava/lang/String;

.field public final pressedIconId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;III)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;
    .param p4, "modeTitle"    # Ljava/lang/String;
    .param p5, "modeDesc"    # Ljava/lang/String;
    .param p6, "iconId"    # I
    .param p7, "pressedIconId"    # I
    .param p8, "majorVersion"    # I
    .param p9, "minorVersion"    # I
    .param p10, "nativeLibraryDir"    # Ljava/lang/String;
    .param p11, "cameraType"    # Ljava/lang/String;
    .param p12, "order"    # I
    .param p13, "frontOrder"    # I
    .param p14, "downloaded"    # I

    .prologue
    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    iput p1, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->id:I

    .line 630
    iput-object p2, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->packageName:Ljava/lang/String;

    .line 631
    iput-object p3, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->activityName:Ljava/lang/String;

    .line 632
    iput-object p4, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->modeTitle:Ljava/lang/String;

    .line 633
    iput-object p5, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->modeDesc:Ljava/lang/String;

    .line 634
    iput p6, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->iconId:I

    .line 635
    iput p7, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->pressedIconId:I

    .line 636
    iput p8, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->majorVersion:I

    .line 637
    iput p9, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->minorVersion:I

    .line 638
    iput-object p10, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->nativeLibraryDir:Ljava/lang/String;

    .line 642
    :try_start_0
    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;->valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 647
    .local v2, "type":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;
    :goto_0
    iput-object v2, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->cameraType:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;

    .line 648
    move/from16 v0, p12

    iput v0, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->order:I

    .line 649
    move/from16 v0, p13

    iput v0, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->frontOrder:I

    .line 650
    move/from16 v0, p14

    iput v0, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->downloaded:I

    .line 651
    return-void

    .line 643
    .end local v2    # "type":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;
    :catch_0
    move-exception v1

    .line 644
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "PlugInShootingModesStorage"

    const-string v4, "not recognized camera type"

    invoke-static {v3, v4}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    sget-object v2, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;->BOTH:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;

    .restart local v2    # "type":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;
    goto :goto_0
.end method
