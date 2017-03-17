.class public abstract Landroid/view/IWindow$Stub;
.super Landroid/os/Binder;
.source "IWindow.java"

# interfaces
.implements Landroid/view/IWindow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindow$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindow"

.field static final TRANSACTION_closeSystemDialogs:I = 0x8

.field static final TRANSACTION_dispatchAppVisibility:I = 0x5

.field static final TRANSACTION_dispatchAttachedDisplayChanged:I = 0x3

.field static final TRANSACTION_dispatchCoverStateChanged:I = 0x11

.field static final TRANSACTION_dispatchDragEvent:I = 0xb

.field static final TRANSACTION_dispatchGetNewSurface:I = 0x6

.field static final TRANSACTION_dispatchMultiWindowStateChanged:I = 0x13

.field static final TRANSACTION_dispatchSmartClipRemoteRequest:I = 0x10

.field static final TRANSACTION_dispatchSystemUiVisibilityChanged:I = 0xc

.field static final TRANSACTION_dispatchWallpaperCommand:I = 0xa

.field static final TRANSACTION_dispatchWallpaperOffsets:I = 0x9

.field static final TRANSACTION_dispatchWindowShown:I = 0xf

.field static final TRANSACTION_executeCommand:I = 0x1

.field static final TRANSACTION_moved:I = 0x4

.field static final TRANSACTION_onAnimationStarted:I = 0xd

.field static final TRANSACTION_onAnimationStopped:I = 0xe

.field static final TRANSACTION_onSurfaceDestroyDeferred:I = 0x12

.field static final TRANSACTION_resized:I = 0x2

.field static final TRANSACTION_windowFocusChanged:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.IWindow"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindow$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.view.IWindow"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IWindow;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/IWindow;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/view/IWindow$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/view/IWindow$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    :goto_0
    return v10

    :sswitch_0
    const-string v0, "android.view.IWindow"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .local v3, "_arg2":Landroid/os/ParcelFileDescriptor;
    :goto_1
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/IWindow$Stub;->executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .end local v3    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :sswitch_2
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .local v1, "_arg0":Landroid/graphics/Rect;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .local v2, "_arg1":Landroid/graphics/Rect;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .local v3, "_arg2":Landroid/graphics/Rect;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .local v4, "_arg3":Landroid/graphics/Rect;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .local v5, "_arg4":Landroid/graphics/Rect;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .local v6, "_arg5":Landroid/graphics/Rect;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v7, v10

    .local v7, "_arg6":Z
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/res/Configuration;

    .local v8, "_arg7":Landroid/content/res/Configuration;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .local v9, "_arg8":Landroid/graphics/Rect;
    :goto_9
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/view/IWindow$Stub;->resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/graphics/Rect;
    .end local v2    # "_arg1":Landroid/graphics/Rect;
    .end local v3    # "_arg2":Landroid/graphics/Rect;
    .end local v4    # "_arg3":Landroid/graphics/Rect;
    .end local v5    # "_arg4":Landroid/graphics/Rect;
    .end local v6    # "_arg5":Landroid/graphics/Rect;
    .end local v7    # "_arg6":Z
    .end local v8    # "_arg7":Landroid/content/res/Configuration;
    .end local v9    # "_arg8":Landroid/graphics/Rect;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/graphics/Rect;
    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/graphics/Rect;
    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/graphics/Rect;
    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/graphics/Rect;
    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Landroid/graphics/Rect;
    goto :goto_6

    :cond_7
    const/4 v6, 0x0

    .restart local v6    # "_arg5":Landroid/graphics/Rect;
    goto :goto_7

    .restart local v7    # "_arg6":Z
    :cond_8
    const/4 v8, 0x0

    .restart local v8    # "_arg7":Landroid/content/res/Configuration;
    goto :goto_8

    :cond_9
    const/4 v9, 0x0

    .restart local v9    # "_arg8":Landroid/graphics/Rect;
    goto :goto_9

    .end local v1    # "_arg0":Landroid/graphics/Rect;
    .end local v2    # "_arg1":Landroid/graphics/Rect;
    .end local v3    # "_arg2":Landroid/graphics/Rect;
    .end local v4    # "_arg3":Landroid/graphics/Rect;
    .end local v5    # "_arg4":Landroid/graphics/Rect;
    .end local v6    # "_arg5":Landroid/graphics/Rect;
    .end local v7    # "_arg6":Z
    .end local v8    # "_arg7":Landroid/content/res/Configuration;
    .end local v9    # "_arg8":Landroid/graphics/Rect;
    :sswitch_3
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/view/IWindow$Stub;->dispatchAttachedDisplayChanged(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    :sswitch_4
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindow$Stub;->moved(II)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_5
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    move v1, v10

    .local v1, "_arg0":Z
    :goto_a
    invoke-virtual {p0, v1}, Landroid/view/IWindow$Stub;->dispatchAppVisibility(Z)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    :cond_a
    move v1, v7

    goto :goto_a

    :sswitch_6
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/IWindow$Stub;->dispatchGetNewSurface()V

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    move v1, v10

    .restart local v1    # "_arg0":Z
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    move v2, v10

    .local v2, "_arg1":Z
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    move v3, v10

    .local v3, "_arg2":Z
    :goto_d
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/IWindow$Stub;->windowFocusChanged(ZZZ)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    :cond_b
    move v1, v7

    goto :goto_b

    .restart local v1    # "_arg0":Z
    :cond_c
    move v2, v7

    goto :goto_c

    .restart local v2    # "_arg1":Z
    :cond_d
    move v3, v7

    goto :goto_d

    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    :sswitch_8
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/view/IWindow$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_9
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .local v1, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .local v2, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .local v3, "_arg2":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .local v4, "_arg3":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    move v5, v10

    .local v5, "_arg4":Z
    :goto_e
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindow$Stub;->dispatchWallpaperOffsets(FFFFZ)V

    goto/16 :goto_0

    .end local v5    # "_arg4":Z
    :cond_e
    move v5, v7

    goto :goto_e

    .end local v1    # "_arg0":F
    .end local v2    # "_arg1":F
    .end local v3    # "_arg2":F
    .end local v4    # "_arg3":F
    :sswitch_a
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .local v5, "_arg4":Landroid/os/Bundle;
    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    move v6, v10

    .local v6, "_arg5":Z
    :goto_10
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindow$Stub;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    goto/16 :goto_0

    .end local v5    # "_arg4":Landroid/os/Bundle;
    .end local v6    # "_arg5":Z
    :cond_f
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Landroid/os/Bundle;
    goto :goto_f

    :cond_10
    move v6, v7

    goto :goto_10

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/os/Bundle;
    :sswitch_b
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Landroid/view/DragEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/DragEvent;

    .local v1, "_arg0":Landroid/view/DragEvent;
    :goto_11
    invoke-virtual {p0, v1}, Landroid/view/IWindow$Stub;->dispatchDragEvent(Landroid/view/DragEvent;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/view/DragEvent;
    :cond_11
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/view/DragEvent;
    goto :goto_11

    .end local v1    # "_arg0":Landroid/view/DragEvent;
    :sswitch_c
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/IWindow$Stub;->dispatchSystemUiVisibilityChanged(IIII)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :sswitch_d
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/view/IWindow$Stub;->onAnimationStarted(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    :sswitch_e
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/IWindow$Stub;->onAnimationStopped()V

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/IWindow$Stub;->dispatchWindowShown()V

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    .local v1, "_arg0":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    :goto_12
    invoke-virtual {p0, v1}, Landroid/view/IWindow$Stub;->dispatchSmartClipRemoteRequest(Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    :cond_12
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    goto :goto_12

    .end local v1    # "_arg0":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    :sswitch_11
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    move v1, v10

    .local v1, "_arg0":Z
    :goto_13
    invoke-virtual {p0, v1}, Landroid/view/IWindow$Stub;->dispatchCoverStateChanged(Z)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    :cond_13
    move v1, v7

    goto :goto_13

    :sswitch_12
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/IWindow$Stub;->onSurfaceDestroyDeferred()V

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/view/IWindow$Stub;->dispatchMultiWindowStateChanged(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
