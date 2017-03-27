.class Lcom/android/settings_ex/IccLockSettings$3;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Lcom/android/settings_ex/multisim/MultiSimTabInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/IccLockSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/IccLockSettings;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/settings_ex/IccLockSettings$3;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings$3;->this$0:Lcom/android/settings_ex/IccLockSettings;

    # getter for: Lcom/android/settings_ex/IccLockSettings;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;
    invoke-static {v0}, Lcom/android/settings_ex/IccLockSettings;->access$1300(Lcom/android/settings_ex/IccLockSettings;)Landroid/widget/TabHost$OnTabChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 411
    return-void
.end method
