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
    .line 1918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1919
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    .line 1920
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    .line 1921
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    .line 1922
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Eap:Ljava/lang/String;

    .line 1923
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->MCCMNC:Ljava/lang/String;

    .line 1924
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    .line 1925
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SPName:Ljava/lang/String;

    .line 1926
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Identity:Ljava/lang/String;

    .line 1927
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Password:Ljava/lang/String;

    .line 1928
    const-string v0, "None"

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Phase2:Ljava/lang/String;

    .line 1929
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "networkname"    # Ljava/lang/String;

    .prologue
    .line 1931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1932
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    .line 1933
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "networkname"    # Ljava/lang/String;

    .prologue
    .line 1934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1935
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->MCCMNC:Ljava/lang/String;

    .line 1936
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    .line 1937
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "networkname"    # Ljava/lang/String;
    .param p3, "spname"    # Ljava/lang/String;

    .prologue
    .line 1938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1939
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->MCCMNC:Ljava/lang/String;

    .line 1940
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    .line 1941
    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SPName:Ljava/lang/String;

    .line 1942
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;
    .param p3, "priority"    # Ljava/lang/String;
    .param p4, "eap"    # Ljava/lang/String;

    .prologue
    .line 1943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1944
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    .line 1945
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    .line 1946
    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    .line 1947
    iput-object p4, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Eap:Ljava/lang/String;

    .line 1948
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
    .line 1949
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1950
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    .line 1951
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    .line 1952
    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    .line 1953
    iput-object p4, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Eap:Ljava/lang/String;

    .line 1954
    iput-object p5, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    .line 1955
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
    .line 1964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1965
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    .line 1966
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    .line 1967
    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    .line 1968
    iput-object p4, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Eap:Ljava/lang/String;

    .line 1969
    iput-object p5, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Identity:Ljava/lang/String;

    .line 1970
    iput-object p6, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Password:Ljava/lang/String;

    .line 1971
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
    .line 1972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1973
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    .line 1974
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    .line 1975
    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    .line 1976
    iput-object p4, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Eap:Ljava/lang/String;

    .line 1977
    iput-object p5, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Identity:Ljava/lang/String;

    .line 1978
    iput-object p6, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Password:Ljava/lang/String;

    .line 1979
    iput-object p7, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Phase2:Ljava/lang/String;

    .line 1980
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
    .line 1956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1957
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    .line 1958
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    .line 1959
    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    .line 1960
    iput-object p4, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Eap:Ljava/lang/String;

    .line 1961
    iput-object p5, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    .line 1962
    iput-object p6, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SPName:Ljava/lang/String;

    .line 1963
    return-void
.end method


# virtual methods
.method public getEap()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1995
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Eap:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2008
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Identity:Ljava/lang/String;

    return-object v0
.end method

.method public getMCCMNC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1999
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->MCCMNC:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2002
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->NetworkName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2011
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Password:Ljava/lang/String;

    return-object v0
.end method

.method public getPhase2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2014
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Phase2:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1991
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->Priority:Ljava/lang/String;

    return-object v0
.end method

.method public getSPName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SPName:Ljava/lang/String;

    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1983
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->SSID:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1987
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->securityType:Ljava/lang/String;

    return-object v0
.end method
