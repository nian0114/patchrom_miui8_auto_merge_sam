.class public Lcom/android/server/wifi/hs20/WifiHs20DBStore$OtherHomePartner;
.super Ljava/lang/Object;
.source "WifiHs20DBStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20DBStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OtherHomePartner"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FQDN:Ljava/lang/String; = "fqdn"

.field public static final HOTSPOT_ID:Ljava/lang/String; = "hotspot_id"

.field public static final OTHERHOME_PARTNER_ID:Ljava/lang/String; = "otherhome_partner_id"

.field public static final SERVER_OTHERHOME_PARTNER_ID:Ljava/lang/String; = "server_otherhome_network_id"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20DBStore;->AUTHORITY_SLASH:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/hs20/WifiHs20DBStore;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hotspot_otherhome_partner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBStore$OtherHomePartner;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
