.class Lcom/android/settings_ex/wfd/WfdPickerDialog$1;
.super Ljava/lang/Object;
.source "WfdPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wfd/WfdPickerDialog;->createWfdPickerDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wfd/WfdPickerDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wfd/WfdPickerDialog;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wfd/WfdPickerDialog;->finish()V

    .line 90
    return-void
.end method
