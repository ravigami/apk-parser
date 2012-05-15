.class Landroid/content/pm/IPackageDeleteObserver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPackageDeleteObserver.java"

# interfaces
.implements Landroid/content/pm/IPackageDeleteObserver;


# instance fields
.field private a:Landroid/os/IBinder;


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Landroid/content/pm/IPackageDeleteObserver$Stub$Proxy;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public packageDeleted(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 78
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 80
    :try_start_0
    const-string v2, "android.content.pm.IPackageDeleteObserver"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 81
    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-object v0, p0, Landroid/content/pm/IPackageDeleteObserver$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 86
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
