.class Lcom/android/settings_ex/nearby/NearbyEnabler$10;
.super Ljava/lang/Object;
.source "NearbyEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/nearby/NearbyEnabler;->requestRestartServerPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nearby/NearbyEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/nearby/NearbyEnabler;)V
    .locals 0

    .prologue
    .line 1106
    iput-object p1, p0, Lcom/android/settings_ex/nearby/NearbyEnabler$10;->this$0:Lcom/android/settings_ex/nearby/NearbyEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1108
    const-string v0, "NearbyEnabler"

    const-string v1, "requestRestartServerPopup"

    const-string v2, "Restart AlertDialog Select : cancel - do nothing"

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    return-void
.end method
