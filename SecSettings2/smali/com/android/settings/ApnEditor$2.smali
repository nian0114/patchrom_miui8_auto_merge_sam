.class Lcom/android/settings_ex/ApnEditor$2;
.super Ljava/lang/Object;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ApnEditor;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ApnEditor;)V
    .locals 0

    .prologue
    .line 1316
    iput-object p1, p0, Lcom/android/settings_ex/ApnEditor$2;->this$0:Lcom/android/settings_ex/ApnEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor$2;->this$0:Lcom/android/settings_ex/ApnEditor;

    invoke-virtual {v0}, Lcom/android/settings_ex/ApnEditor;->finish()V

    .line 1319
    return-void
.end method
