.class public Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;
.super Ljava/lang/Object;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FotaXmlDataParser"
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_SYSTEM:Ljava/lang/String; = "system"

.field private static final PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG:Ljava/lang/String; = "FotaXmlDataParser"


# instance fields
.field private final mParser:Lorg/xmlpull/v1/XmlPullParser;

.field private mTypeListLocal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->mTypeListLocal:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->mTypeListLocal:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getAppList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->mTypeListLocal:Ljava/util/ArrayList;

    return-object v0
.end method

.method public readFromXml()V
    .locals 10

    .prologue
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .local v1, "event":I
    const/4 v3, 0x0

    .local v3, "row":Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;
    :goto_0
    const/4 v7, 0x1

    if-eq v1, v7, :cond_2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    :pswitch_0
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .local v5, "tag":Ljava/lang/String;
    const-string v7, "package"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "PersonaManagerService"

    const-string v8, "New row found "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v8, 0x0

    const-string v9, "name"

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "name":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v8, 0x0

    const-string v9, "system"

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "value":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "system":Z
    if-eqz v6, :cond_1

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v4, 0x1

    :cond_1
    new-instance v3, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;

    .end local v3    # "row":Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;
    invoke-direct {v3, v2, v4}, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;-><init>(Ljava/lang/String;Z)V

    .restart local v3    # "row":Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;
    goto :goto_1

    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "system":Z
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :pswitch_1
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "tag":Ljava/lang/String;
    const-string v7, "package"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;->dumpState()V

    const-string v7, "PersonaManagerService"

    const-string v8, "ROW added to list"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->mTypeListLocal:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v1    # "event":I
    .end local v3    # "row":Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;
    .end local v5    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readFromXml EX:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
