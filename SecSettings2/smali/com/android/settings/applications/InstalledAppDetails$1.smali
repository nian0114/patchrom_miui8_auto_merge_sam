.class Lcom/android/settings_ex/applications/InstalledAppDetails$1;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Lcom/android/settings_ex/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/InstalledAppDetails;->buildPremiumSmsDropDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 580
    iput-object p1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$1;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 2
    .param p1, "pos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$1;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/android/settings_ex/applications/InstalledAppDetails;->updatePremiumSmsState(I)Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->access$200(Lcom/android/settings_ex/applications/InstalledAppDetails;I)Z

    move-result v0

    return v0
.end method
