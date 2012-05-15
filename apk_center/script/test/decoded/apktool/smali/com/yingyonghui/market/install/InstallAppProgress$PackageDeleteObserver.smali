.class Lcom/yingyonghui/market/install/InstallAppProgress$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "InstallAppProgress.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/install/InstallAppProgress;


# virtual methods
.method public packageDeleted(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 69
    iget-object v1, p0, Lcom/yingyonghui/market/install/InstallAppProgress$PackageDeleteObserver;->a:Lcom/yingyonghui/market/install/InstallAppProgress;

    invoke-static {v1}, Lcom/yingyonghui/market/install/InstallAppProgress;->e(Lcom/yingyonghui/market/install/InstallAppProgress;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 70
    if-eqz p1, :cond_0

    :goto_0
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 71
    iget-object v0, p0, Lcom/yingyonghui/market/install/InstallAppProgress$PackageDeleteObserver;->a:Lcom/yingyonghui/market/install/InstallAppProgress;

    invoke-static {v0}, Lcom/yingyonghui/market/install/InstallAppProgress;->e(Lcom/yingyonghui/market/install/InstallAppProgress;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 72
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
