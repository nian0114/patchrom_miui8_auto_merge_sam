.class Lcom/samsung/android/writingbuddy/IWritingBuddyManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWritingBuddyManager.java"

# interfaces
.implements Lcom/samsung/android/writingbuddy/IWritingBuddyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/writingbuddy/IWritingBuddyManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/writingbuddy/IWritingBuddyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/IWritingBuddyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public dismiss(IZ)V
    .locals 5
    .param p1, "clientId"    # I
    .param p2, "immediate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.samsung.android.writingbuddy.IWritingBuddyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/samsung/android/writingbuddy/IWritingBuddyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getImage(I)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.samsung.android.writingbuddy.IWritingBuddyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/IWritingBuddyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "com.samsung.android.writingbuddy.IWritingBuddyManager"

    return-object v0
.end method

.method public isShowing()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.samsung.android.writingbuddy.IWritingBuddyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/IWritingBuddyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public show(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/inputmethod/ExtractedText;Landroid/view/inputmethod/EditorInfo;I)V
    .locals 5
    .param p1, "clientId"    # I
    .param p2, "client"    # Landroid/os/IBinder;
    .param p3, "appToken"    # Landroid/os/IBinder;
    .param p4, "windowToken"    # Landroid/os/IBinder;
    .param p5, "windowRect"    # Landroid/graphics/Rect;
    .param p6, "screenRect"    # Landroid/graphics/Rect;
    .param p7, "aniInitRect"    # Landroid/graphics/Rect;
    .param p8, "et"    # Landroid/view/inputmethod/ExtractedText;
    .param p9, "ei"    # Landroid/view/inputmethod/EditorInfo;
    .param p10, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.writingbuddy.IWritingBuddyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    if-eqz p5, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    invoke-virtual {p5, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    if-eqz p6, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    invoke-virtual {p6, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    if-eqz p7, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    invoke-virtual {p7, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    if-eqz p8, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    invoke-virtual {p8, v0, v2}, Landroid/view/inputmethod/ExtractedText;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    if-eqz p9, :cond_4

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    invoke-virtual {p9, v0, v2}, Landroid/view/inputmethod/EditorInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/samsung/android/writingbuddy/IWritingBuddyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method public showPopup(II)V
    .locals 5
    .param p1, "clientId"    # I
    .param p2, "style"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.writingbuddy.IWritingBuddyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/samsung/android/writingbuddy/IWritingBuddyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public showTemplate(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/inputmethod/ExtractedText;Landroid/view/inputmethod/EditorInfo;I)V
    .locals 6
    .param p1, "clientId"    # I
    .param p2, "client"    # Landroid/os/IBinder;
    .param p3, "appToken"    # Landroid/os/IBinder;
    .param p4, "windowToken"    # Landroid/os/IBinder;
    .param p5, "windowRect"    # Landroid/graphics/Rect;
    .param p6, "screenRect"    # Landroid/graphics/Rect;
    .param p7, "aniInitRect"    # Landroid/graphics/Rect;
    .param p8, "template"    # I
    .param p9, "et"    # Landroid/view/inputmethod/ExtractedText;
    .param p10, "ei"    # Landroid/view/inputmethod/EditorInfo;
    .param p11, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.samsung.android.writingbuddy.IWritingBuddyManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    if-eqz p5, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    invoke-virtual {p5, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    if-eqz p6, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    invoke-virtual {p6, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    if-eqz p7, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    invoke-virtual {p7, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p9, :cond_3

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    invoke-virtual {p9, v1, v3}, Landroid/view/inputmethod/ExtractedText;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    if-eqz p10, :cond_4

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    move-object/from16 v0, p10

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/EditorInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    move/from16 v0, p11

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/IWritingBuddyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method public updateDialog(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "clientId"    # I
    .param p2, "windowRect"    # Landroid/graphics/Rect;
    .param p3, "screenRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.writingbuddy.IWritingBuddyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    if-eqz p3, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/IWritingBuddyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public updatePosition(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "clientId"    # I
    .param p2, "windowRect"    # Landroid/graphics/Rect;
    .param p3, "screenRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.writingbuddy.IWritingBuddyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    if-eqz p3, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/IWritingBuddyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
