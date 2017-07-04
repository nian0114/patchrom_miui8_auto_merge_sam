.class public Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;
.super Ljava/lang/Object;
.source "CocktailBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CocktailBarStateListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1560
    return-void
.end method


# virtual methods
.method public onCocktailBarBackgroundTypeChanged(I)V
    .locals 0
    .param p1, "bgType"    # I

    .prologue
    .line 1586
    return-void
.end method

.method public onCocktailBarPositionChanged(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1594
    return-void
.end method

.method public onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V
    .locals 0
    .param p1, "stateInfo"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .prologue
    .line 1570
    return-void
.end method

.method public onCocktailBarVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 1578
    return-void
.end method

.method public onCocktailBarWindowTypeChanged(I)V
    .locals 0
    .param p1, "windowType"    # I

    .prologue
    .line 1602
    return-void
.end method
