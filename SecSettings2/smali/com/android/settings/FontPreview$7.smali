.class Lcom/android/settings_ex/FontPreview$7;
.super Ljava/lang/Object;
.source "FontPreview.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/FontPreview;->badFontDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/FontPreview;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/FontPreview;)V
    .locals 0

    .prologue
    .line 1373
    iput-object p1, p0, Lcom/android/settings_ex/FontPreview$7;->this$0:Lcom/android/settings_ex/FontPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/android/settings_ex/FontPreview$7;->this$0:Lcom/android/settings_ex/FontPreview;

    invoke-virtual {v0}, Lcom/android/settings_ex/FontPreview;->onCancelButtonPressed()V

    .line 1377
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1378
    return-void
.end method
