.class Lcom/android/settings_ex/BlockSettings$2;
.super Ljava/lang/Object;
.source "BlockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/BlockSettings;->makeCallBlockDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/BlockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/BlockSettings;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/settings_ex/BlockSettings$2;->this$0:Lcom/android/settings_ex/BlockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 248
    return-void
.end method
