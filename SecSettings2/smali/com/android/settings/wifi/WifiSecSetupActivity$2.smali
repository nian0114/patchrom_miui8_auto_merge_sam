.class Lcom/android/settings_ex/wifi/WifiSecSetupActivity$2;
.super Ljava/lang/Object;
.source "WifiSecSetupActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->resetAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiSecSetupActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSecSetupActivity;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$2;->this$0:Lcom/android/settings_ex/wifi/WifiSecSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$2;->this$0:Lcom/android/settings_ex/wifi/WifiSecSetupActivity;

    # getter for: Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mTitleView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->access$100(Lcom/android/settings_ex/wifi/WifiSecSetupActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 332
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$2;->this$0:Lcom/android/settings_ex/wifi/WifiSecSetupActivity;

    # invokes: Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->startAnimation()V
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->access$200(Lcom/android/settings_ex/wifi/WifiSecSetupActivity;)V

    .line 333
    const/4 v0, 0x1

    return v0
.end method
