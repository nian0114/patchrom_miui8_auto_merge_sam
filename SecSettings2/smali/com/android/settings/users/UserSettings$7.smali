.class Lcom/android/settings_ex/users/UserSettings$7;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/users/UserSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/users/UserSettings;)V
    .locals 0

    .prologue
    .line 642
    iput-object p1, p0, Lcom/android/settings_ex/users/UserSettings$7;->this$0:Lcom/android/settings_ex/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings$7;->this$0:Lcom/android/settings_ex/users/UserSettings;

    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings$7;->this$0:Lcom/android/settings_ex/users/UserSettings;

    # getter for: Lcom/android/settings_ex/users/UserSettings;->mAddedUserId:I
    invoke-static {v1}, Lcom/android/settings_ex/users/UserSettings;->access$1200(Lcom/android/settings_ex/users/UserSettings;)I

    move-result v1

    # invokes: Lcom/android/settings_ex/users/UserSettings;->switchUserNow(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/users/UserSettings;->access$1300(Lcom/android/settings_ex/users/UserSettings;I)V

    .line 645
    return-void
.end method
