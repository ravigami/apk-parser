.class Lcom/yingyonghui/market/install/IWorksPackageManager$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
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
    .line 166
    iput-object p1, p0, Lcom/yingyonghui/market/install/IWorksPackageManager$PackageDeleteObserver;->b:Lcom/yingyonghui/market/install/IWorksPackageManager;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    .line 167
    iput-object p2, p0, Lcom/yingyonghui/market/install/IWorksPackageManager$PackageDeleteObserver;->a:Landroid/os/Handler;

    .line 168
    return-void
.end method


# virtual methods
.method public packageDeleted(Z)V
    .locals 4
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/yingyonghui/market/install/IWorksPackageManager$PackageDeleteObserver;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 173
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 175
    iget-object v0, p0, Lcom/yingyonghui/market/install/IWorksPackageManager$PackageDeleteObserver;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 176
    return-void

    .line 173
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
