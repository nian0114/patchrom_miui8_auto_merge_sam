.class final Lcom/android/settings_exlib/bluetooth/PanProfile$1;
.super Ljava/util/HashSet;
.source "PanProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/bluetooth/PanProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 57
    const-string v0, "PANNAP"

    invoke-virtual {p0, v0}, Lcom/android/settings_exlib/bluetooth/PanProfile$1;->add(Ljava/lang/Object;)Z

    .line 58
    const-string v0, "PANU"

    invoke-virtual {p0, v0}, Lcom/android/settings_exlib/bluetooth/PanProfile$1;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method
