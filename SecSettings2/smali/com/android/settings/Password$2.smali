.class Lcom/android/settings_ex/Password$2;
.super Ljava/lang/Object;
.source "Password.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/Password;->showAlert(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/Password;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/Password;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/settings_ex/Password$2;->this$0:Lcom/android/settings_ex/Password;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 278
    return-void
.end method
