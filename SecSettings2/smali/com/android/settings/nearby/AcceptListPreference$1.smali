.class Lcom/android/settings_ex/nearby/AcceptListPreference$1;
.super Ljava/lang/Object;
.source "AcceptListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/nearby/AcceptListPreference;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nearby/AcceptListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/nearby/AcceptListPreference;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/settings_ex/nearby/AcceptListPreference$1;->this$0:Lcom/android/settings_ex/nearby/AcceptListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 88
    const-string v0, "AcceptListPreference"

    const-string v1, "showDialog"

    const-string v2, "No List Items: OK"

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x0

    # setter for: Lcom/android/settings_ex/nearby/AcceptListPreference;->isEmptyPopup:Z
    invoke-static {v0}, Lcom/android/settings_ex/nearby/AcceptListPreference;->access$002(Z)Z

    .line 90
    return-void
.end method
