.class Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;
.super Ljava/lang/Object;
.source "PlugInShootingModesStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlugInShootingModeSortInfo"
.end annotation


# instance fields
.field public commandId:I

.field public id:I

.field public name:Ljava/lang/String;

.field public order:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "order"    # I
    .param p3, "commandId"    # I
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    iput p1, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;->id:I

    .line 662
    iput p2, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;->order:I

    .line 663
    iput p3, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;->commandId:I

    .line 664
    iput-object p4, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;->name:Ljava/lang/String;

    .line 665
    return-void
.end method
