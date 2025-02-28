.class public Landroid/net/wifi/hs20/WifiHs20SubscribedSp;
.super Ljava/lang/Object;
.source "WifiHs20SubscribedSp.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/hs20/WifiHs20SubscribedSp;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "SubscribedSp"


# instance fields
.field creationDate:Ljava/lang/String;

.field credId:I

.field credType:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

.field dataLimit:I

.field expiryDate:Ljava/lang/String;

.field fqdn:Ljava/lang/String;

.field friendlyName:Ljava/lang/String;

.field hsId:I

.field iconFileName:Ljava/lang/String;

.field isEnabled:Z

.field priority:I

.field realm:Ljava/lang/String;

.field subscriptionPriority:I

.field timeLimit:I

.field typeOfSubscription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->DBG:Z

    new-instance v0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp$1;

    invoke-direct {v0}, Landroid/net/wifi/hs20/WifiHs20SubscribedSp$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILandroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;)V
    .locals 0
    .param p1, "_hsId"    # I
    .param p2, "_isEnabeld"    # Z
    .param p3, "_credId"    # I
    .param p4, "_fqdn"    # Ljava/lang/String;
    .param p5, "_realm"    # Ljava/lang/String;
    .param p6, "_friendlyName"    # Ljava/lang/String;
    .param p7, "_iconFileName"    # Ljava/lang/String;
    .param p8, "_creationDate"    # Ljava/lang/String;
    .param p9, "_expiryDate"    # Ljava/lang/String;
    .param p10, "_typeOfSubscription"    # Ljava/lang/String;
    .param p11, "_dataLimit"    # I
    .param p12, "_timeLimit"    # I
    .param p13, "_priority"    # I
    .param p14, "_subscriptionPriority"    # I
    .param p15, "_credType"    # Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->hsId:I

    iput-boolean p2, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->isEnabled:Z

    iput p3, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->credId:I

    iput-object p4, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->fqdn:Ljava/lang/String;

    iput-object p5, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->realm:Ljava/lang/String;

    iput-object p6, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->friendlyName:Ljava/lang/String;

    iput-object p7, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->iconFileName:Ljava/lang/String;

    iput-object p8, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->creationDate:Ljava/lang/String;

    iput-object p9, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->expiryDate:Ljava/lang/String;

    iput-object p10, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->typeOfSubscription:Ljava/lang/String;

    iput p11, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->dataLimit:I

    iput p12, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->timeLimit:I

    iput p13, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->priority:I

    iput p14, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->subscriptionPriority:I

    iput-object p15, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->credType:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/hs20/WifiHs20SubscribedSp;)V
    .locals 1
    .param p1, "source"    # Landroid/net/wifi/hs20/WifiHs20SubscribedSp;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->hsId:I

    iput v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->hsId:I

    iget-boolean v0, p1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->isEnabled:Z

    iput-boolean v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->isEnabled:Z

    iget v0, p1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->credId:I

    iput v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->credId:I

    iget-object v0, p1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->fqdn:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->fqdn:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->realm:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->realm:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->friendlyName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->friendlyName:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->iconFileName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->iconFileName:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->creationDate:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->creationDate:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->expiryDate:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->expiryDate:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->typeOfSubscription:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->typeOfSubscription:Ljava/lang/String;

    iget v0, p1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->dataLimit:I

    iput v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->dataLimit:I

    iget v0, p1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->timeLimit:I

    iput v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->timeLimit:I

    iget v0, p1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->priority:I

    iput v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->priority:I

    iget v0, p1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->subscriptionPriority:I

    iput v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->subscriptionPriority:I

    iget-object v0, p1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->credType:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->credType:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getCreationDate()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->creationDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCredId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->credId:I

    return v0
.end method

.method public getCredType()Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->credType:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    return-object v0
.end method

.method public getDataLimit()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->dataLimit:I

    return v0
.end method

.method public getExpiryDate()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->expiryDate:Ljava/lang/String;

    return-object v0
.end method

.method public getFqdn()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->fqdn:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->friendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getHotspotId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->hsId:I

    return v0
.end method

.method public getIconFileName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->iconFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->priority:I

    return v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionPriority()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->subscriptionPriority:I

    return v0
.end method

.method public getTimeLimit()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->timeLimit:I

    return v0
.end method

.method public getTypeOfSubscription()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->typeOfSubscription:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->isEnabled:Z

    return v0
.end method

.method public setCredType(Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;)V
    .locals 0
    .param p1, "_credType"    # Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    .prologue
    iput-object p1, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->credType:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->isEnabled:Z

    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "_priority"    # I

    .prologue
    iput p1, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->priority:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v0, "<none>"

    .local v0, "none":Ljava/lang/String;
    const-string v2, "hsId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->hsId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", isEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->isEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", CredId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->credId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Fqdn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->fqdn:Ljava/lang/String;

    if-nez v2, :cond_0

    move-object v2, v0

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Realm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->realm:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", FriendlyName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->friendlyName:Ljava/lang/String;

    if-nez v2, :cond_2

    move-object v2, v0

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", IconFileName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->iconFileName:Ljava/lang/String;

    if-nez v2, :cond_3

    move-object v2, v0

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", CreationDate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->creationDate:Ljava/lang/String;

    if-nez v2, :cond_4

    move-object v2, v0

    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", ExpiryDate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->expiryDate:Ljava/lang/String;

    if-nez v2, :cond_5

    move-object v2, v0

    :goto_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", TypeOfSubscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->typeOfSubscription:Ljava/lang/String;

    if-nez v3, :cond_6

    .end local v0    # "none":Ljava/lang/String;
    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", DataLimit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->dataLimit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", TimeLimit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->timeLimit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Priority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->priority:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", SubscriptionPriority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->subscriptionPriority:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", CredType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->credType:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    invoke-virtual {v3}, Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .restart local v0    # "none":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->fqdn:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->realm:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->friendlyName:Ljava/lang/String;

    goto/16 :goto_2

    :cond_3
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->iconFileName:Ljava/lang/String;

    goto/16 :goto_3

    :cond_4
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->creationDate:Ljava/lang/String;

    goto :goto_4

    :cond_5
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->expiryDate:Ljava/lang/String;

    goto :goto_5

    :cond_6
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->typeOfSubscription:Ljava/lang/String;

    goto :goto_6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->hsId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->isEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->credId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->fqdn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->realm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->friendlyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->iconFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->creationDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->expiryDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->typeOfSubscription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->dataLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->timeLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->subscriptionPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->credType:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    invoke-virtual {v0}, Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
