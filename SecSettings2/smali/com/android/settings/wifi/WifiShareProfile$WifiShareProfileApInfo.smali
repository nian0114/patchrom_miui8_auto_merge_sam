.class public Lcom/android/settings_ex/wifi/WifiShareProfile$WifiShareProfileApInfo;
.super Ljava/lang/Object;
.source "WifiShareProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiShareProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiShareProfileApInfo"
.end annotation


# instance fields
.field index:Ljava/lang/String;

.field network:Ljava/lang/String;

.field priority:I

.field ssid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # Ljava/lang/String;
    .param p3, "n"    # Ljava/lang/String;
    .param p4, "p"    # I

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiShareProfile$WifiShareProfileApInfo;->ssid:Ljava/lang/String;

    .line 178
    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiShareProfile$WifiShareProfileApInfo;->index:Ljava/lang/String;

    .line 179
    iput-object p3, p0, Lcom/android/settings_ex/wifi/WifiShareProfile$WifiShareProfileApInfo;->network:Ljava/lang/String;

    .line 180
    iput p4, p0, Lcom/android/settings_ex/wifi/WifiShareProfile$WifiShareProfileApInfo;->priority:I

    .line 181
    return-void
.end method
