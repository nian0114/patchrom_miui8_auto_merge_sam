.class Lcom/android/settings_ex/OtherSecuritySettings$2;
.super Ljava/lang/Object;
.source "OtherSecuritySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/OtherSecuritySettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/OtherSecuritySettings;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/OtherSecuritySettings;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 618
    iput-object p1, p0, Lcom/android/settings_ex/OtherSecuritySettings$2;->this$0:Lcom/android/settings_ex/OtherSecuritySettings;

    iput-object p2, p0, Lcom/android/settings_ex/OtherSecuritySettings$2;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/settings_ex/OtherSecuritySettings$2;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 622
    return-void
.end method
