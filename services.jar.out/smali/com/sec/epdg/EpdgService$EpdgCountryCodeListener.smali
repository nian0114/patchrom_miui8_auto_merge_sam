.class Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;
.super Ljava/lang/Object;
.source "EpdgService.java"

# interfaces
.implements Landroid/location/CountryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgCountryCodeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    .prologue
    .line 4333
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;->this$0:Lcom/sec/epdg/EpdgService;

    .line 4334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4335
    return-void
.end method


# virtual methods
.method public onCountryDetected(Landroid/location/Country;)V
    .locals 6
    .param p1, "country"    # Landroid/location/Country;

    .prologue
    .line 4339
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 4340
    .local v1, "countryIso":Ljava/lang/String;
    :goto_0
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCountryDetected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mBlackListCountry:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/epdg/EpdgService;->access$9200(Lcom/sec/epdg/EpdgService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4341
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mBlackListCountry:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$9200(Lcom/sec/epdg/EpdgService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4342
    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2500()Landroid/content/Context;

    move-result-object v2

    const-string v3, "country_detector"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    .line 4343
    .local v0, "countryDetector":Landroid/location/CountryDetector;
    iget-object v2, p0, Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mCountryListener:Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$9300(Lcom/sec/epdg/EpdgService;)Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/location/CountryDetector;->removeCountryListener(Landroid/location/CountryListener;)V

    .line 4344
    iget-object v2, p0, Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;->this$0:Lcom/sec/epdg/EpdgService;

    sget-object v3, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    # invokes: Lcom/sec/epdg/EpdgService;->setEpdgTemporaryBlocked(Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;)V
    invoke-static {v2, v3}, Lcom/sec/epdg/EpdgService;->access$7700(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;)V

    .line 4345
    iget-object v2, p0, Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isWifiConnected()Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$2200(Lcom/sec/epdg/EpdgService;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4346
    new-instance v2, Lcom/sec/epdg/EpdgService$WfcProfileTask;

    iget-object v3, p0, Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1400()Landroid/os/Handler;

    move-result-object v4

    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2500()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/epdg/EpdgService;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/epdg/EpdgService$WfcProfileTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;Ljava/lang/String;)V

    # setter for: Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$2902(Lcom/sec/epdg/EpdgService$WfcProfileTask;)Lcom/sec/epdg/EpdgService$WfcProfileTask;

    .line 4347
    # getter for: Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2900()Lcom/sec/epdg/EpdgService$WfcProfileTask;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgService$WfcProfileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4350
    .end local v0    # "countryDetector":Landroid/location/CountryDetector;
    :cond_0
    return-void

    .line 4339
    .end local v1    # "countryIso":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_0
.end method
