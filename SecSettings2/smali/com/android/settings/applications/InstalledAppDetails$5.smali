.class Lcom/android/settings_ex/applications/InstalledAppDetails$5;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/InstalledAppDetails;->createDialog(II)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 930
    iput-object p1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$5;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$5;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$5;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    iget-object v1, v1, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/settings_ex/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->access$500(Lcom/android/settings_ex/applications/InstalledAppDetails;Ljava/lang/String;)V

    .line 934
    return-void
.end method
