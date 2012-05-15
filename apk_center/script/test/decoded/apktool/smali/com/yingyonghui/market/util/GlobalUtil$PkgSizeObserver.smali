.class final Lcom/yingyonghui/market/util/GlobalUtil$PkgSizeObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "GlobalUtil.java"


# instance fields
.field private a:Ljava/util/concurrent/CountDownLatch;

.field private b:Lcom/yingyonghui/market/model/q;


# virtual methods
.method public final onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 962
    iget-object v0, p0, Lcom/yingyonghui/market/util/GlobalUtil$PkgSizeObserver;->b:Lcom/yingyonghui/market/model/q;

    if-eqz v0, :cond_0

    .line 963
    iget-object v1, p0, Lcom/yingyonghui/market/util/GlobalUtil$PkgSizeObserver;->b:Lcom/yingyonghui/market/model/q;

    monitor-enter v1

    .line 964
    :try_start_0
    iget-object v0, p0, Lcom/yingyonghui/market/util/GlobalUtil$PkgSizeObserver;->b:Lcom/yingyonghui/market/model/q;

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->codeSize:J

    long-to-int v2, v2

    iput v2, v0, Lcom/yingyonghui/market/model/q;->o:I

    .line 967
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/util/GlobalUtil$PkgSizeObserver;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 970
    return-void

    .line 967
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
