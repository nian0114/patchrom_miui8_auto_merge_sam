.class Lcom/android/settings_ex/users/UserDetailsSettings$2;
.super Ljava/lang/Object;
.source "UserDetailsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/users/UserDetailsSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/users/UserDetailsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/users/UserDetailsSettings;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/settings_ex/users/UserDetailsSettings$2;->this$0:Lcom/android/settings_ex/users/UserDetailsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/settings_ex/users/UserDetailsSettings$2;->this$0:Lcom/android/settings_ex/users/UserDetailsSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/users/UserDetailsSettings;->enableCallsAndSms(Z)V

    .line 181
    return-void
.end method
