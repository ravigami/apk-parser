.class final Lcom/yingyonghui/market/fk;
.super Ljava/lang/Object;
.source "ActivityListApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityListApp;


# direct methods
.method synthetic constructor <init>(Lcom/yingyonghui/market/ActivityListApp;)V
    .locals 1
    .parameter

    .prologue
    .line 723
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yingyonghui/market/fk;-><init>(Lcom/yingyonghui/market/ActivityListApp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/yingyonghui/market/ActivityListApp;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 723
    iput-object p1, p0, Lcom/yingyonghui/market/fk;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 726
    :goto_0
    iget-object v0, p0, Lcom/yingyonghui/market/fk;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListApp;->l(Lcom/yingyonghui/market/ActivityListApp;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 728
    :try_start_0
    iget-object v0, p0, Lcom/yingyonghui/market/fk;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListApp;->m(Lcom/yingyonghui/market/ActivityListApp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    monitor-exit v1

    return-void

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/fk;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListApp;->l(Lcom/yingyonghui/market/ActivityListApp;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 732
    iget-object v0, p0, Lcom/yingyonghui/market/fk;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListApp;->l(Lcom/yingyonghui/market/ActivityListApp;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/ay;

    .line 741
    iget-object v2, p0, Lcom/yingyonghui/market/fk;->a:Lcom/yingyonghui/market/ActivityListApp;

    iget-object v3, v0, Lcom/yingyonghui/market/ay;->a:[B

    iget-object v0, v0, Lcom/yingyonghui/market/ay;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/yingyonghui/market/ActivityListApp;->a(Lcom/yingyonghui/market/ActivityListApp;[BLjava/lang/String;)V

    .line 742
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 735
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/yingyonghui/market/fk;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListApp;->l(Lcom/yingyonghui/market/ActivityListApp;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 739
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
