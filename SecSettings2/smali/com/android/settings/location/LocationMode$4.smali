.class Lcom/android/settings_ex/location/LocationMode$4;
.super Ljava/lang/Object;
.source "LocationMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/location/LocationMode;->onRadioButtonClicked(Lcom/android/settings_ex/location/RadioButtonPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/location/LocationMode;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/location/LocationMode;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/settings_ex/location/LocationMode$4;->this$0:Lcom/android/settings_ex/location/LocationMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 211
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 212
    return-void
.end method
