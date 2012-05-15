.class final Lcom/yingyonghui/market/online/o;
.super Ljava/lang/Thread;
.source "SyncService.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/online/SyncService;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/online/SyncService;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/yingyonghui/market/online/o;->a:Lcom/yingyonghui/market/online/SyncService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 158
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 160
    iget-object v1, p0, Lcom/yingyonghui/market/online/o;->a:Lcom/yingyonghui/market/online/SyncService;

    monitor-enter v1

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/yingyonghui/market/online/o;->a:Lcom/yingyonghui/market/online/SyncService;

    invoke-static {v0}, Lcom/yingyonghui/market/online/SyncService;->b(Lcom/yingyonghui/market/online/SyncService;)Lcom/yingyonghui/market/online/o;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "multiple UpdateThreads in SyncService"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/yingyonghui/market/online/o;->a:Lcom/yingyonghui/market/online/SyncService;

    invoke-static {v1}, Lcom/yingyonghui/market/online/SyncService;->a(Lcom/yingyonghui/market/online/SyncService;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_3

    .line 169
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/yingyonghui/market/online/o;->a:Lcom/yingyonghui/market/online/SyncService;

    invoke-static {v3}, Lcom/yingyonghui/market/online/SyncService;->a(Lcom/yingyonghui/market/online/SyncService;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x2dc6c0

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 172
    :cond_1
    iget-object v2, p0, Lcom/yingyonghui/market/online/o;->a:Lcom/yingyonghui/market/online/SyncService;

    invoke-static {v2, v0}, Lcom/yingyonghui/market/online/SyncService;->a(Lcom/yingyonghui/market/online/SyncService;I)V

    .line 168
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/yingyonghui/market/online/o;->a:Lcom/yingyonghui/market/online/SyncService;

    invoke-static {v0}, Lcom/yingyonghui/market/online/SyncService;->c(Lcom/yingyonghui/market/online/SyncService;)Lcom/yingyonghui/market/online/o;

    .line 177
    iget-object v0, p0, Lcom/yingyonghui/market/online/o;->a:Lcom/yingyonghui/market/online/SyncService;

    invoke-virtual {v0}, Lcom/yingyonghui/market/online/SyncService;->stopSelf()V

    .line 180
    return-void
.end method
