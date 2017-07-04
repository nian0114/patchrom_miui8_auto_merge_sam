.class public Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
.super Ljava/lang/Object;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApInfo"
.end annotation


# instance fields
.field private Eap:Ljava/lang/String;

.field private Identity:Ljava/lang/String;

.field private MCCMNC:Ljava/lang/String;

.field private NetworkName:Ljava/lang/String;

.field private Password:Ljava/lang/String;

.field private Phase2:Ljava/lang/String;

.field private Priority:Ljava/lang/String;

.field private SPName:Ljava/lang/String;

.field private SSID:Ljava/lang/String;

.field private securityType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1955
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1956
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    .line 1957
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    .line 1958
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    .line 1959
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Eap:Ljava/lang/String;

    .line 1960
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->MCCMNC:Ljava/lang/String;

    .line 1961
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    .line 1962
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SPName:Ljava/lang/String;

    .line 1963
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Identity:Ljava/lang/String;

    .line 1964
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Password:Ljava/lang/String;

    .line 1965
    const-string v0, "None"

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Phase2:Ljava/lang/String;

    .line 1966
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "networkname"    # Ljava/lang/String;

    .prologue
    .line 1968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1969
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    .line 1970
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "networkname"    # Ljava/lang/String;

    .prologue
    .line 1971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1972
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->MCCMNC:Ljava/lang/String;

    .line 1973
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    .line 1974
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "networkname"    # Ljava/lang/String;
    .param p3, "spname"    # Ljava/lang/String;

    .prologue
    .line 1975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1976
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->MCCMNC:Ljava/lang/String;

    .line 1977
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    .line 1978
    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SPName:Ljava/lang/String;

    .line 1979
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;
    .param p3, "priority"    # Ljava/lang/String;
    .param p4, "eap"    # Ljava/lang/String;

    .prologue
    .line 1984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1985
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    .line 1986
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    .line 1987
    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    .line 1988
    iput-object p4, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Eap:Ljava/lang/String;

    .line 1989
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;
    .param p3, "priority"    # Ljava/lang/String;
    .param p4, "eap"    # Ljava/lang/String;
    .param p5, "networkname"    # Ljava/lang/String;

    .prologue
    .line 1995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1996
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    .line 1997
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    .line 1998
    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    .line 1999
    iput-object p4, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Eap:Ljava/lang/String;

    .line 2000
    iput-object p5, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    .line 2001
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;
    .param p3, "priority"    # Ljava/lang/String;
    .param p4, "eap"    # Ljava/lang/String;
    .param p5, "identity"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;

    .prologue
    .line 2008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2009
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    .line 2010
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    .line 2011
    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    .line 2012
    iput-object p4, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Eap:Ljava/lang/String;

    .line 2013
    iput-object p5, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Identity:Ljava/lang/String;

    .line 2014
    iput-object p6, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Password:Ljava/lang/String;

    .line 2015
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;
    .param p3, "priority"    # Ljava/lang/String;
    .param p4, "eap"    # Ljava/lang/String;
    .param p5, "identity"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;
    .param p7, "phase2"    # Ljava/lang/String;

    .prologue
    .line 2023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2024
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    .line 2025
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    .line 2026
    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    .line 2027
    iput-object p4, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Eap:Ljava/lang/String;

    .line 2028
    iput-object p5, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Identity:Ljava/lang/String;

    .line 2029
    iput-object p6, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Password:Ljava/lang/String;

    .line 2030
    iput-object p7, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Phase2:Ljava/lang/String;

    .line 2031
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;
    .param p3, "priority"    # Ljava/lang/String;
    .param p4, "eap"    # Ljava/lang/String;
    .param p5, "networkname"    # Ljava/lang/String;
    .param p6, "spname"    # Ljava/lang/String;
    .param p7, "bspname"    # Z

    .prologue
    .line 2032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2033
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    .line 2034
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    .line 2035
    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    .line 2036
    iput-object p4, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Eap:Ljava/lang/String;

    .line 2037
    iput-object p5, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    .line 2038
    iput-object p6, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SPName:Ljava/lang/String;

    .line 2039
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;
    .param p3, "priority"    # Ljava/lang/String;
    .param p4, "networkname"    # Ljava/lang/String;
    .param p5, "spname"    # Ljava/lang/String;
    .param p6, "bopen"    # Z

    .prologue
    .line 2016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2017
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    .line 2018
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    .line 2019
    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    .line 2020
    iput-object p4, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    .line 2021
    iput-object p5, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SPName:Ljava/lang/String;

    .line 2022
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;
    .param p3, "priority"    # Ljava/lang/String;
    .param p4, "networkname"    # Ljava/lang/String;
    .param p5, "bopen"    # Z

    .prologue
    .line 2002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2003
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    .line 2004
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    .line 2005
    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    .line 2006
    iput-object p4, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    .line 2007
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;
    .param p3, "priority"    # Ljava/lang/String;
    .param p4, "bopen"    # Z

    .prologue
    .line 1990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1991
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    .line 1992
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    .line 1993
    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    .line 1994
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;
    .param p3, "bopen"    # Z

    .prologue
    .line 1980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1981
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    .line 1982
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    .line 1983
    return-void
.end method


# virtual methods
.method public getEap()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2054
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Eap:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2067
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Identity:Ljava/lang/String;

    return-object v0
.end method

.method public getMCCMNC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2058
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->MCCMNC:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2061
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2070
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Password:Ljava/lang/String;

    return-object v0
.end method

.method public getPhase2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2073
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Phase2:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2050
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    return-object v0
.end method

.method public getSPName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2064
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SPName:Ljava/lang/String;

    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2046
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    return-object v0
.end method
