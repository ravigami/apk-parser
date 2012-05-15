.class final Lcom/yingyonghui/market/online/m;
.super Landroid/os/Handler;
.source "HttpManager.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/online/g;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/online/g;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/yingyonghui/market/online/m;->a:Lcom/yingyonghui/market/online/g;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 303
    iget-object v2, p0, Lcom/yingyonghui/market/online/m;->a:Lcom/yingyonghui/market/online/g;

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x4d2

    if-ne v1, v3, :cond_0

    iget-object v0, v2, Lcom/yingyonghui/market/online/g;->a:Lcom/yingyonghui/market/online/l;

    invoke-static {v0}, Lcom/yingyonghui/market/online/l;->d(Lcom/yingyonghui/market/online/l;)Ljava/util/Queue;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, v2, Lcom/yingyonghui/market/online/g;->a:Lcom/yingyonghui/market/online/l;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/yingyonghui/market/online/l;->b(Lcom/yingyonghui/market/online/l;I)I

    monitor-exit v1

    .line 304
    :goto_0
    return-void

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    iget-object v1, v2, Lcom/yingyonghui/market/online/g;->a:Lcom/yingyonghui/market/online/l;

    invoke-static {v1}, Lcom/yingyonghui/market/online/l;->f(Lcom/yingyonghui/market/online/l;)I

    move-result v1

    const/16 v3, 0x3f

    if-eq v1, v3, :cond_2

    const/4 v1, -0x1

    :goto_1
    const/4 v3, 0x6

    if-ge v0, v3, :cond_3

    iget-object v3, v2, Lcom/yingyonghui/market/online/g;->a:Lcom/yingyonghui/market/online/l;

    invoke-static {v3}, Lcom/yingyonghui/market/online/l;->f(Lcom/yingyonghui/market/online/l;)I

    move-result v3

    shl-int v4, v5, v0

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    :goto_2
    iget-object v1, v2, Lcom/yingyonghui/market/online/g;->a:Lcom/yingyonghui/market/online/l;

    shl-int v3, v5, v0

    invoke-static {v1, v3}, Lcom/yingyonghui/market/online/l;->c(Lcom/yingyonghui/market/online/l;I)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, v2, Lcom/yingyonghui/market/online/g;->a:Lcom/yingyonghui/market/online/l;

    invoke-static {v2}, Lcom/yingyonghui/market/online/l;->b(Lcom/yingyonghui/market/online/l;)[Landroid/os/Handler;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, v2, Lcom/yingyonghui/market/online/g;->a:Lcom/yingyonghui/market/online/l;

    invoke-static {v1}, Lcom/yingyonghui/market/online/l;->g(Lcom/yingyonghui/market/online/l;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method
