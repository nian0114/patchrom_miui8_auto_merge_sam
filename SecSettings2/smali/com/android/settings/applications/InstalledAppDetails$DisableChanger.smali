.class Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;
.super Landroid/os/AsyncTask;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisableChanger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings_ex/applications/InstalledAppDetails;",
            ">;"
        }
    .end annotation
.end field

.field final mInfo:Landroid/content/pm/ApplicationInfo;

.field final mPm:Landroid/content/pm/PackageManager;

.field final mState:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V
    .locals 1
    .param p1, "activity"    # Lcom/android/settings_ex/applications/InstalledAppDetails;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "state"    # I

    .prologue
    .line 1283
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1284
    iget-object v0, p1, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;->mPm:Landroid/content/pm/PackageManager;

    .line 1285
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;->mActivity:Ljava/lang/ref/WeakReference;

    .line 1286
    iput-object p2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 1287
    iput p3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;->mState:I

    .line 1288
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;->mState:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1293
    const/4 v0, 0x0

    return-object v0
.end method
