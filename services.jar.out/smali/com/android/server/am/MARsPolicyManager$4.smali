.class Lcom/android/server/am/MARsPolicyManager$4;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MARsPolicyManager;->executePolicy(Lcom/android/server/am/MARsPolicyManager$Policy;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/am/MARsPackageStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsPolicyManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$4;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/MARsPackageStatus;Lcom/android/server/am/MARsPackageStatus;)I
    .locals 2
    .param p1, "p1"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "p2"    # Lcom/android/server/am/MARsPackageStatus;

    .prologue
    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->score:I

    iget v1, p2, Lcom/android/server/am/MARsPackageStatus;->score:I

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->score:I

    iget v1, p2, Lcom/android/server/am/MARsPackageStatus;->score:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lcom/android/server/am/MARsPackageStatus;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/am/MARsPackageStatus;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager$4;->compare(Lcom/android/server/am/MARsPackageStatus;Lcom/android/server/am/MARsPackageStatus;)I

    move-result v0

    return v0
.end method
