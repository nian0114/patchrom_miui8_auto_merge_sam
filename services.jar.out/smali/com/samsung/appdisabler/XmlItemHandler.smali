.class public Lcom/samsung/appdisabler/XmlItemHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlItemHandler.java"


# static fields
.field protected static final ADD_SHORTCUT_TO_HOMESCREEN:Ljava/lang/String; = "add_shortcut_to_homescreen"

.field protected static final APPLICATION_ITEM:Ljava/lang/String; = "application"

.field protected static final APPLICATION_ITEMS_GROUP:Ljava/lang/String; = "applications"

.field protected static final CODE:Ljava/lang/String; = "code"

.field protected static final FORCE_APPLICATION_TURN_OFF:Ljava/lang/String; = "force_application_turn_off"

.field protected static final HIDE_AFTER_TIMEOUT:Ljava/lang/String; = "hide_after_timeout"

.field protected static final IMSI_ITEM:Ljava/lang/String; = "item"

.field protected static final IMSI_ITEMS_GROUP:Ljava/lang/String; = "imsis"

.field protected static final IMSI_MVNO_BASE:Ljava/lang/String; = "imsi_mvno_base"

.field protected static final IMSI_MVNO_RANGE_END:Ljava/lang/String; = "imsi_mvno_range_end"

.field protected static final IMSI_MVNO_RANGE_START:Ljava/lang/String; = "imsi_mvno_range_start"

.field protected static final IMSI_NUMERIC_BASE:Ljava/lang/String; = "imsi_numeric_base"

.field private static final IMSI_PART:[Ljava/lang/String;

.field protected static final IMSI_RANGE_END:Ljava/lang/String; = "imsi_range_end"

.field protected static final IMSI_RANGE_START:Ljava/lang/String; = "imsi_range_start"

.field protected static final NETWORK_NUMERIC:Ljava/lang/String; = "network_numeric"

.field protected static final PACKAGE_TO_HIDE:Ljava/lang/String; = "package_to_hide"

.field protected static final SIM_GID1:Ljava/lang/String; = "sim_gid1"

.field protected static final SIM_NUMERIC:Ljava/lang/String; = "sim_numeric"

.field protected static final SIM_SPN:Ljava/lang/String; = "sim_spn"

.field protected static final TIMEOUT_IN_SECONDS:Ljava/lang/String; = "timeout_in_seconds"


# instance fields
.field private currentElement:Ljava/lang/Boolean;

.field private currentValue:Ljava/lang/String;

.field private errorsFromAllItems:Ljava/lang/StringBuilder;

.field private imsiNumericBase:Lcom/samsung/appdisabler/ImsiNumeric;

.field private item:Lcom/samsung/appdisabler/ImsiItem;

.field private itemsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/appdisabler/ImsiItem;",
            ">;"
        }
    .end annotation
.end field

.field private locator:Lorg/xml/sax/Locator;

.field private parsingFaild:Z

.field private readingImsiNumeric:Z

.field private timeoutInSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "imsi_numeric_base"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "imsi_range_start"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "imsi_range_end"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "imsi_mvno_base"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "imsi_mvno_range_start"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "imsi_mvno_range_end"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/appdisabler/XmlItemHandler;->IMSI_PART:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentElement:Ljava/lang/Boolean;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    new-instance v0, Lcom/samsung/appdisabler/ImsiItem;

    invoke-direct {v0}, Lcom/samsung/appdisabler/ImsiItem;-><init>()V

    iput-object v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->timeoutInSeconds:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->itemsList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/samsung/appdisabler/XmlItemHandler;->readingImsiNumeric:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->errorsFromAllItems:Ljava/lang/StringBuilder;

    iput-boolean v1, p0, Lcom/samsung/appdisabler/XmlItemHandler;->parsingFaild:Z

    return-void
.end method

.method private appendHeaderToErrorMsg()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->parsingFaild:Z

    return-void
.end method

.method private getLineInfo()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/samsung/appdisabler/XmlItemHandler;->locator:Lorg/xml/sax/Locator;

    if-nez v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Check line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/appdisabler/XmlItemHandler;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v2}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "lineInfo":Ljava/lang/String;
    goto :goto_0
.end method

.method private getLocationInfo()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/samsung/appdisabler/XmlItemHandler;->locator:Lorg/xml/sax/Locator;

    if-nez v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->getLineInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/appdisabler/XmlItemHandler;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v2}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "info":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public appendParserError(Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    iget-boolean v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->parsingFaild:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->appendHeaderToErrorMsg()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->errorsFromAllItems:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public characters([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->itemsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "There where no elements in xml file!"

    invoke-virtual {p0, v0}, Lcom/samsung/appdisabler/XmlItemHandler;->appendParserError(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->parsingFaild:Z

    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentElement:Ljava/lang/Boolean;

    const-string v3, "timeout_in_seconds"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->timeoutInSeconds:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "is not valid number in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "timeout_in_seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->getLineInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->appendErrorMsg(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong format of timeout_in_seconds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Default value (5 minutes) will be use."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    const-string v3, "package_to_hide"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    iget-object v4, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->setPackageToHide(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v3, "sim_numeric"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    iget-object v4, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->setSimNumeric(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "imsi_numeric_base"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->readingImsiNumeric:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imsi_numeric_base must be inside item"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->getLocationInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->appendErrorMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->imsiNumericBase:Lcom/samsung/appdisabler/ImsiNumeric;

    iget-object v4, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiNumeric;->setImsiNumericBase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imsi_numeric_base can be used only once in item"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->getLocationInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->appendErrorMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v3, "imsi_range_start"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->readingImsiNumeric:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imsi_range_start must be inside item"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->getLocationInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->appendErrorMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->imsiNumericBase:Lcom/samsung/appdisabler/ImsiNumeric;

    iget-object v4, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiNumeric;->setImsiRangeStart(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imsi_range_start can be used only once in item"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->getLocationInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->appendErrorMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v3, "imsi_range_end"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->readingImsiNumeric:Z

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imsi_range_end must be inside item"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->getLocationInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->appendErrorMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->imsiNumericBase:Lcom/samsung/appdisabler/ImsiNumeric;

    iget-object v4, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiNumeric;->setImsiRangeEnd(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imsi_range_end can be used only once in item"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->getLocationInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->appendErrorMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v3, "imsi_mvno_base"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->readingImsiNumeric:Z

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imsi_mvno_base must be inside item"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->getLocationInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->appendErrorMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->imsiNumericBase:Lcom/samsung/appdisabler/ImsiNumeric;

    iget-object v4, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiNumeric;->setImsiNumericBase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imsi_mvno_base can be used only once in item"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->getLocationInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->appendErrorMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->imsiNumericBase:Lcom/samsung/appdisabler/ImsiNumeric;

    invoke-virtual {v3}, Lcom/samsung/appdisabler/ImsiNumeric;->setToMvno()V

    goto/16 :goto_0

    :cond_c
    const-string v3, "imsi_mvno_range_start"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-boolean v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->readingImsiNumeric:Z

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imsi_mvno_range_start must be inside item"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->getLocationInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->appendErrorMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->imsiNumericBase:Lcom/samsung/appdisabler/ImsiNumeric;

    iget-object v4, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiNumeric;->setImsiRangeStart(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imsi_mvno_range_start can be used only once in item"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->getLocationInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->appendErrorMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const-string v3, "imsi_mvno_range_end"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-boolean v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->readingImsiNumeric:Z

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imsi_mvno_range_end must be inside item"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->getLocationInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->appendErrorMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->imsiNumericBase:Lcom/samsung/appdisabler/ImsiNumeric;

    iget-object v4, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiNumeric;->setImsiRangeEnd(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imsi_mvno_range_end can be used only once in item"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->getLocationInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->appendErrorMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    const-string v3, "item"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->imsiNumericBase:Lcom/samsung/appdisabler/ImsiNumeric;

    invoke-virtual {v3}, Lcom/samsung/appdisabler/ImsiNumeric;->validate()Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    iget-object v4, p0, Lcom/samsung/appdisabler/XmlItemHandler;->imsiNumericBase:Lcom/samsung/appdisabler/ImsiNumeric;

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->setImsiNumericBase(Lcom/samsung/appdisabler/ImsiNumeric;)V

    iput-boolean v5, p0, Lcom/samsung/appdisabler/XmlItemHandler;->readingImsiNumeric:Z

    goto/16 :goto_0

    :cond_11
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "item must have imsi_numeric_base and imsi_range_start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->getLineInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->appendErrorMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    const-string v3, "sim_spn"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    iget-object v4, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->setSimSpn(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    const-string v3, "sim_gid1"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    iget-object v4, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->setGid1(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    const-string v3, "network_numeric"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    iget-object v4, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->setNetworkNumeric(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    const-string v3, "add_shortcut_to_homescreen"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    iget-object v4, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->setAddShortcutToScreen(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    const-string v3, "hide_after_timeout"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    iget-object v4, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->setHideAfterTimeout(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    const-string v3, "force_application_turn_off"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    iget-object v4, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->setForceApplicationTurnOff(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    const-string v3, "application"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->itemsList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v3}, Lcom/samsung/appdisabler/ImsiItem;->validate()Ljava/lang/String;

    move-result-object v2

    .local v2, "validationErrors":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    iget-boolean v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->parsingFaild:Z

    if-nez v3, :cond_19

    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->appendHeaderToErrorMsg()V

    :cond_19
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->parsingFaild:Z

    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->errorsFromAllItems:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---------Item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/appdisabler/XmlItemHandler;->itemsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from xml file have errors:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->errorsFromAllItems:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->errorsFromAllItems:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n---------Item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/appdisabler/XmlItemHandler;->itemsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--------\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    new-instance v3, Lcom/samsung/appdisabler/ImsiItem;

    invoke-direct {v3}, Lcom/samsung/appdisabler/ImsiItem;-><init>()V

    iput-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    goto/16 :goto_0

    .end local v2    # "validationErrors":Ljava/lang/String;
    :cond_1b
    const-string v3, "applications"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "imsis"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "item"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "code"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->errorsFromAllItems:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "errors":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "errors":Ljava/lang/String;
    :cond_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[END]Failed to parse XML: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->errorsFromAllItems:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported end TAG: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->getLineInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public getImsiList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/appdisabler/ImsiItem;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->itemsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "XML getItemsList empty"

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->itemsList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getTimeoutInSeconds()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->timeoutInSeconds:I

    return v0
.end method

.method public getValidationErrors()Ljava/lang/String;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->parsingFaild:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->errorsFromAllItems:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    iput-object p1, p0, Lcom/samsung/appdisabler/XmlItemHandler;->locator:Lorg/xml/sax/Locator;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentElement:Ljava/lang/Boolean;

    const-string v5, ""

    iput-object v5, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/samsung/appdisabler/XmlItemHandler;->readingImsiNumeric:Z

    if-eqz v5, :cond_3

    sget-object v0, Lcom/samsung/appdisabler/XmlItemHandler;->IMSI_PART:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .local v4, "tag":Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "tag":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "tag":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4    # "tag":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " can\'t be put inside of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "item"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->getLocationInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "errorMsg":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v5, v1}, Lcom/samsung/appdisabler/ImsiItem;->appendErrorMsg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Lcom/samsung/appdisabler/ImsiItem;->appendErrorMsg(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "errorMsg":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_3
    const-string v5, "item"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Lcom/samsung/appdisabler/ImsiNumeric;

    invoke-direct {v5}, Lcom/samsung/appdisabler/ImsiNumeric;-><init>()V

    iput-object v5, p0, Lcom/samsung/appdisabler/XmlItemHandler;->imsiNumericBase:Lcom/samsung/appdisabler/ImsiNumeric;

    iput-boolean v6, p0, Lcom/samsung/appdisabler/XmlItemHandler;->readingImsiNumeric:Z

    goto :goto_1

    :cond_4
    const-string v5, "package_to_hide"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "sim_numeric"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "imsi_numeric_base"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "timeout_in_seconds"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "imsi_range_start"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "imsi_range_end"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "sim_spn"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "network_numeric"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "add_shortcut_to_homescreen"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "hide_after_timeout"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "force_application_turn_off"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "application"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "code"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "applications"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "imsis"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "sim_gid1"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse XML: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->getLineInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/appdisabler/XmlItemHandler;->errorsFromAllItems:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported start TAG: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->getLineInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method
