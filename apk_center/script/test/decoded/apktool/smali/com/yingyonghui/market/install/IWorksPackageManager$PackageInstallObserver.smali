.class Lcom/yingyonghui/market/install/IWorksPackageManager$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "IWorksPackageManager.java"


# instance fields
.field private a:Landroid/os/Handler;

.field private synthetic b:Lcom/yingyonghui/market/install/IWorksPackageManager;


# direct methods
.method public constructor <init>(Lcom/yingyonghui/market/install/IWorksPackageManager;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/yingyonghui/market/install/IWorksPackageManager$PackageInstallObserver;->b:Lcom/yingyonghui/market/install/IWorksPackageManager;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    .line 134
    iput-object p2, p0, Lcom/yingyonghui/market/install/IWorksPackageManager$PackageInstallObserver;->a:Landroid/os/Handler;

    .line 135
    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yingyonghui/market/install/IWorksPackageManager$PackageInstallObserver;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 140
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 141
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 143
    iget-object v1, p0, Lcom/yingyonghui/market/install/IWorksPackageManager$PackageInstallObserver;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 144
    iget-object v0, p0, Lcom/yingyonghui/market/install/IWorksPackageManager$PackageInstallObserver;->b:Lcom/yingyonghui/market/install/IWorksPackageManager;

    invoke-static {v0}, Lcom/yingyonghui/market/install/IWorksPackageManager;->a(Lcom/yingyonghui/market/install/IWorksPackageManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "tmpCopy.apk"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 145
    :cond_0
    return-void
.end method
