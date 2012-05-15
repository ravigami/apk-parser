.class final Lcom/yingyonghui/market/bd;
.super Landroid/database/ContentObserver;
.source "ActivityListAppDownload.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private synthetic b:Lcom/yingyonghui/market/ActivityListAppDownload;


# direct methods
.method public constructor <init>(Lcom/yingyonghui/market/ActivityListAppDownload;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 465
    iput-object p1, p0, Lcom/yingyonghui/market/bd;->b:Lcom/yingyonghui/market/ActivityListAppDownload;

    .line 466
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 467
    iput-object p2, p0, Lcom/yingyonghui/market/bd;->a:Landroid/content/Context;

    .line 468
    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/market/bd;)V
    .locals 1
    .parameter

    .prologue
    .line 446
    iget-object v0, p0, Lcom/yingyonghui/market/bd;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 5
    .parameter

    .prologue
    .line 456
    iget-object v0, p0, Lcom/yingyonghui/market/bd;->b:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->k(Lcom/yingyonghui/market/ActivityListAppDownload;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/yingyonghui/market/bd;->b:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->k(Lcom/yingyonghui/market/ActivityListAppDownload;)Landroid/os/Handler;

    move-result-object v1

    monitor-enter v1

    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/yingyonghui/market/bd;->b:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->k(Lcom/yingyonghui/market/ActivityListAppDownload;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x66

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/yingyonghui/market/bd;->b:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->k(Lcom/yingyonghui/market/ActivityListAppDownload;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x66

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 461
    :cond_0
    monitor-exit v1

    .line 463
    :cond_1
    return-void

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
