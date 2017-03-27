.class Lcom/android/settings_ex/LGTRoamingEnv$10;
.super Ljava/lang/Object;
.source "LGTRoamingEnv.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/LGTRoamingEnv;->updateCountryInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/LGTRoamingEnv;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/LGTRoamingEnv;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/settings_ex/LGTRoamingEnv$10;->this$0:Lcom/android/settings_ex/LGTRoamingEnv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/settings_ex/LGTRoamingEnv$10;->this$0:Lcom/android/settings_ex/LGTRoamingEnv;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/settings_ex/LGTRoamingEnv;->access$102(Lcom/android/settings_ex/LGTRoamingEnv;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 469
    return-void
.end method
