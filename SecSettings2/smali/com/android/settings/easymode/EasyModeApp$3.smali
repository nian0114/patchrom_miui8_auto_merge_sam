.class Lcom/android/settings_ex/easymode/EasyModeApp$3;
.super Ljava/lang/Object;
.source "EasyModeApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/easymode/EasyModeApp;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/easymode/EasyModeApp;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/easymode/EasyModeApp;)V
    .locals 0

    .prologue
    .line 985
    iput-object p1, p0, Lcom/android/settings_ex/easymode/EasyModeApp$3;->this$0:Lcom/android/settings_ex/easymode/EasyModeApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 988
    iget-object v0, p0, Lcom/android/settings_ex/easymode/EasyModeApp$3;->this$0:Lcom/android/settings_ex/easymode/EasyModeApp;

    invoke-virtual {v0}, Lcom/android/settings_ex/easymode/EasyModeApp;->finish()V

    .line 989
    return-void
.end method
