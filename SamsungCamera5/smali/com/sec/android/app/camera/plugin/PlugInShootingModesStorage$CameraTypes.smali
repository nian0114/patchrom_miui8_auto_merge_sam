.class public final enum Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;
.super Ljava/lang/Enum;
.source "PlugInShootingModesStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;

.field public static final enum BACK:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;

.field public static final enum BOTH:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;

.field public static final enum FRONT:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 552
    new-instance v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;

    const-string v1, "BACK"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;->BACK:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;

    new-instance v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;

    const-string v1, "FRONT"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;->FRONT:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;

    new-instance v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;

    const-string v1, "BOTH"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;->BOTH:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;

    .line 551
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;

    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;->BACK:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;->FRONT:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;->BOTH:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;->$VALUES:[Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 551
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 551
    const-class v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;
    .locals 1

    .prologue
    .line 551
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;->$VALUES:[Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;

    return-object v0
.end method
