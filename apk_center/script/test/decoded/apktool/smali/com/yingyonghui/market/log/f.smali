.class public Lcom/yingyonghui/market/log/f;
.super Ljava/lang/Thread;
.source "SendLogThread.java"


# static fields
.field private static a:Lcom/yingyonghui/market/log/f;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/yingyonghui/market/online/e;

.field private d:Ljava/util/List;

.field private e:[B

.field private f:Lcom/yingyonghui/market/log/r;

.field private g:Landroid/os/Handler;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/yingyonghui/market/log/f;->a:Lcom/yingyonghui/market/log/f;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yingyonghui/market/log/f;->d:Ljava/util/List;

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yingyonghui/market/log/f;->h:Z

    .line 29
    iput-object p1, p0, Lcom/yingyonghui/market/log/f;->b:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Lcom/yingyonghui/market/online/e;->a(Landroid/content/Context;)Lcom/yingyonghui/market/online/e;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/log/f;->c:Lcom/yingyonghui/market/online/e;

    .line 31
    new-instance v0, Lcom/yingyonghui/market/log/d;

    invoke-direct {v0}, Lcom/yingyonghui/market/log/d;-><init>()V

    iput-object v0, p0, Lcom/yingyonghui/market/log/f;->f:Lcom/yingyonghui/market/log/r;

    .line 34
    new-instance v0, Lcom/yingyonghui/market/log/e;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/log/e;-><init>(Lcom/yingyonghui/market/log/f;)V

    iput-object v0, p0, Lcom/yingyonghui/market/log/f;->g:Landroid/os/Handler;

    .line 49
    iget-object v1, p0, Lcom/yingyonghui/market/log/f;->d:Ljava/util/List;

    monitor-enter v1

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/yingyonghui/market/log/f;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/yingyonghui/market/log/f;->f:Lcom/yingyonghui/market/log/r;

    invoke-interface {v2, p1}, Lcom/yingyonghui/market/log/r;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;)Lcom/yingyonghui/market/log/f;
    .locals 2
    .parameter

    .prologue
    .line 55
    sget-object v0, Lcom/yingyonghui/market/log/f;->a:Lcom/yingyonghui/market/log/f;

    if-nez v0, :cond_1

    .line 56
    const-class v1, Lcom/yingyonghui/market/log/f;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Lcom/yingyonghui/market/log/f;->a:Lcom/yingyonghui/market/log/f;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/yingyonghui/market/log/f;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/log/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yingyonghui/market/log/f;->a:Lcom/yingyonghui/market/log/f;

    .line 60
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_1
    sget-object v0, Lcom/yingyonghui/market/log/f;->a:Lcom/yingyonghui/market/log/f;

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected final a(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 108
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/yingyonghui/market/online/b;

    .line 112
    const/4 v1, 0x3

    iget v2, v0, Lcom/yingyonghui/market/online/b;->b:I

    if-ne v1, v2, :cond_0

    .line 113
    iget-object v1, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 114
    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/yingyonghui/market/log/f;->f:Lcom/yingyonghui/market/log/r;

    iget-object v2, p0, Lcom/yingyonghui/market/log/f;->b:Landroid/content/Context;

    iget-object v3, v0, Lcom/yingyonghui/market/online/b;->k:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/yingyonghui/market/log/r;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 116
    iget-object v1, p0, Lcom/yingyonghui/market/log/f;->d:Ljava/util/List;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v2, p0, Lcom/yingyonghui/market/log/f;->d:Ljava/util/List;

    iget-object v0, v0, Lcom/yingyonghui/market/online/b;->k:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 118
    monitor-exit v1

    .line 121
    :cond_0
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 71
    iget-object v1, p0, Lcom/yingyonghui/market/log/f;->d:Ljava/util/List;

    monitor-enter v1

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/yingyonghui/market/log/f;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final b(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/yingyonghui/market/log/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/yingyonghui/market/online/e;->a(Landroid/content/Context;)Lcom/yingyonghui/market/online/e;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/log/f;->c:Lcom/yingyonghui/market/online/e;

    .line 126
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 127
    iget-object v1, p0, Lcom/yingyonghui/market/log/f;->c:Lcom/yingyonghui/market/online/e;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-virtual {v1}, Lcom/yingyonghui/market/online/e;->c()V

    .line 128
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 88
    :goto_0
    iget-boolean v0, p0, Lcom/yingyonghui/market/log/f;->h:Z

    if-eqz v0, :cond_2

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    iget-object v1, p0, Lcom/yingyonghui/market/log/f;->d:Ljava/util/List;

    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v2, p0, Lcom/yingyonghui/market/log/f;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 92
    iget-object v2, p0, Lcom/yingyonghui/market/log/f;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 93
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    iget-object v2, p0, Lcom/yingyonghui/market/log/f;->g:Landroid/os/Handler;

    iget-object v3, p0, Lcom/yingyonghui/market/log/f;->f:Lcom/yingyonghui/market/log/r;

    iget-object v4, p0, Lcom/yingyonghui/market/log/f;->b:Landroid/content/Context;

    invoke-interface {v3, v4, v0}, Lcom/yingyonghui/market/log/r;->d(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/yingyonghui/market/log/f;->e:[B

    iget-object v3, p0, Lcom/yingyonghui/market/log/f;->e:[B

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/yingyonghui/market/log/f;->c:Lcom/yingyonghui/market/online/e;

    iget-object v4, p0, Lcom/yingyonghui/market/log/f;->e:[B

    invoke-virtual {v3, v4, v0, v2}, Lcom/yingyonghui/market/online/e;->a([BLjava/lang/String;Landroid/os/Handler;)V

    goto :goto_1

    .line 93
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 100
    :cond_1
    const-wide/16 v0, 0x2710

    :try_start_2
    invoke-static {v0, v1}, Lcom/yingyonghui/market/log/f;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yingyonghui/market/log/f;->h:Z

    goto :goto_0

    .line 105
    :cond_2
    return-void
.end method
