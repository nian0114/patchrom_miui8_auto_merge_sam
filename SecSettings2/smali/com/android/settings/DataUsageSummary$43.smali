.class Lcom/android/settings_ex/DataUsageSummary$43;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 6139
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$43;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 6141
    const-string v0, "DataUsage"

    const-string v1, "onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6142
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$43;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    # setter for: Lcom/android/settings_ex/DataUsageSummary;->mServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->access$8402(Lcom/android/settings_ex/DataUsageSummary;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 6143
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$43;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    const/16 v1, 0x51

    const/16 v2, 0xb

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->getTimeData(II)V
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->access$8500(Lcom/android/settings_ex/DataUsageSummary;II)V

    .line 6144
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$43;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings_ex/DataUsageSummary;->mBound:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->access$8602(Lcom/android/settings_ex/DataUsageSummary;Z)Z

    .line 6145
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 6148
    const-string v0, "DataUsage"

    const-string v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6149
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$43;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/DataUsageSummary;->mServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->access$8402(Lcom/android/settings_ex/DataUsageSummary;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 6150
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$43;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/DataUsageSummary;->mBound:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->access$8602(Lcom/android/settings_ex/DataUsageSummary;Z)Z

    .line 6151
    return-void
.end method
