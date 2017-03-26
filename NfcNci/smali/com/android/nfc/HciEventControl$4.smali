.class Lcom/android/nfc/HciEventControl$4;
.super Ljava/lang/Object;
.source "HciEventControl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/HciEventControl;->dispatchSecureEvent(Ljava/lang/String;[B[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/HciEventControl;


# direct methods
.method constructor <init>(Lcom/android/nfc/HciEventControl;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/android/nfc/HciEventControl$4;->this$0:Lcom/android/nfc/HciEventControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 13
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v10, 0x0

    .line 426
    move-object v3, p1

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget v1, v3, Landroid/content/pm/ResolveInfo;->priority:I

    .local v1, "p1":I
    move-object v3, p2

    .line 427
    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget v2, v3, Landroid/content/pm/ResolveInfo;->priority:I

    .line 428
    .local v2, "p2":I
    const-wide/16 v4, 0x0

    .line 429
    .local v4, "t1":J
    const-wide/16 v6, 0x0

    .line 431
    .local v6, "t2":J
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/HciEventControl$4;->this$0:Lcom/android/nfc/HciEventControl;

    # getter for: Lcom/android/nfc/HciEventControl;->mPM:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/nfc/HciEventControl;->access$500(Lcom/android/nfc/HciEventControl;)Landroid/content/pm/PackageManager;

    move-result-object v3

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .end local p1    # "o1":Ljava/lang/Object;
    iget-object v11, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-wide v4, v3, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 433
    iget-object v3, p0, Lcom/android/nfc/HciEventControl$4;->this$0:Lcom/android/nfc/HciEventControl;

    # getter for: Lcom/android/nfc/HciEventControl;->mPM:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/nfc/HciEventControl;->access$500(Lcom/android/nfc/HciEventControl;)Landroid/content/pm/PackageManager;

    move-result-object v3

    check-cast p2, Landroid/content/pm/ResolveInfo;

    .end local p2    # "o2":Ljava/lang/Object;
    iget-object v11, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-wide v6, v3, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :goto_0
    if-le v1, v2, :cond_0

    move v3, v8

    :goto_1
    return v3

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "NfcServiceHciEventControl"

    const-string v11, "Can\'t find package name"

    invoke-static {v3, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 438
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    if-ge v1, v2, :cond_1

    move v3, v9

    goto :goto_1

    :cond_1
    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    move v3, v8

    goto :goto_1

    :cond_2
    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    move v3, v9

    goto :goto_1

    :cond_3
    move v3, v10

    goto :goto_1
.end method
