.class public Lcom/android/settings_ex/CryptDecryptConfirm$Blank;
.super Landroid/app/Activity;
.source "CryptDecryptConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/CryptDecryptConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Blank"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/CryptDecryptConfirm$Blank;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v1, 0x7f04006d

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/CryptDecryptConfirm$Blank;->setContentView(I)V

    .line 60
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptDecryptConfirm$Blank;->finish()V

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptDecryptConfirm$Blank;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 67
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/CryptDecryptConfirm$Blank;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 68
    .local v0, "sbm":Landroid/app/StatusBarManager;
    const/high16 v1, 0x1770000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 78
    iget-object v1, p0, Lcom/android/settings_ex/CryptDecryptConfirm$Blank;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings_ex/CryptDecryptConfirm$Blank$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/CryptDecryptConfirm$Blank$1;-><init>(Lcom/android/settings_ex/CryptDecryptConfirm$Blank;)V

    const-wide/16 v4, 0x2bc

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    return-void
.end method
