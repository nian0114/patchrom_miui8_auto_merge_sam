.class Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$DeviceObject;
.super Ljava/lang/Object;
.source "BluetoothDevicePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceObject"
.end annotation


# instance fields
.field icon:Landroid/graphics/drawable/Drawable;

.field isBusy:Z

.field summary:I

.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;Ljava/lang/String;ILandroid/graphics/drawable/Drawable;Z)V
    .locals 1
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "summary"    # I
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "isBusy"    # Z

    .prologue
    .line 745
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$DeviceObject;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 743
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$DeviceObject;->isBusy:Z

    .line 746
    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$DeviceObject;->title:Ljava/lang/String;

    .line 747
    iput p3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$DeviceObject;->summary:I

    .line 748
    iput-object p4, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$DeviceObject;->icon:Landroid/graphics/drawable/Drawable;

    .line 749
    iput-boolean p5, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$DeviceObject;->isBusy:Z

    .line 750
    return-void
.end method
