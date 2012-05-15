.class Landroid/content/pm/IPackageInstallObserver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPackageInstallObserver.java"

# interfaces
.implements Landroid/content/pm/IPackageInstallObserver;


# instance fields
.field private a:Landroid/os/IBinder;


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Landroid/content/pm/IPackageInstallObserver$Stub$Proxy;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public packageInstalled(Ljava/lang/String;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 81
    :try_start_0
    const-string v0, "android.content.pm.IPackageInstallObserver"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object v0, p0, Landroid/content/pm/IPackageInstallObserver$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
