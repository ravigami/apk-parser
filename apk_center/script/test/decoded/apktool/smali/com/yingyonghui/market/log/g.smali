.class public Lcom/yingyonghui/market/log/g;
.super Ljava/lang/Thread;
.source "WriteLogThread.java"


# static fields
.field private static a:Lcom/yingyonghui/market/log/g;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private d:Lcom/yingyonghui/market/log/r;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-object v0, Lcom/yingyonghui/market/log/g;->a:Lcom/yingyonghui/market/log/g;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/yingyonghui/market/log/g;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yingyonghui/market/log/g;->e:Z

    .line 18
    iput-object p1, p0, Lcom/yingyonghui/market/log/g;->b:Landroid/content/Context;

    .line 19
    new-instance v0, Lcom/yingyonghui/market/log/d;

    invoke-direct {v0}, Lcom/yingyonghui/market/log/d;-><init>()V

    iput-object v0, p0, Lcom/yingyonghui/market/log/g;->d:Lcom/yingyonghui/market/log/r;

    .line 20
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/yingyonghui/market/log/g;
    .locals 2
    .parameter

    .prologue
    .line 23
    sget-object v0, Lcom/yingyonghui/market/log/g;->a:Lcom/yingyonghui/market/log/g;

    if-nez v0, :cond_1

    .line 24
    const-class v1, Lcom/yingyonghui/market/log/g;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/yingyonghui/market/log/g;->a:Lcom/yingyonghui/market/log/g;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/yingyonghui/market/log/g;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/log/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yingyonghui/market/log/g;->a:Lcom/yingyonghui/market/log/g;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lcom/yingyonghui/market/log/g;->a:Lcom/yingyonghui/market/log/g;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 39
    :goto_0
    iget-object v0, p0, Lcom/yingyonghui/market/log/g;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 41
    iget-object v1, p0, Lcom/yingyonghui/market/log/g;->d:Lcom/yingyonghui/market/log/r;

    iget-object v2, p0, Lcom/yingyonghui/market/log/g;->b:Landroid/content/Context;

    invoke-interface {v1, v2, v0}, Lcom/yingyonghui/market/log/r;->b(Landroid/content/Context;Ljava/lang/String;)I

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yingyonghui/market/log/g;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 46
    :goto_0
    iget-boolean v0, p0, Lcom/yingyonghui/market/log/g;->e:Z

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/yingyonghui/market/log/g;->a()V

    .line 50
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Lcom/yingyonghui/market/log/g;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yingyonghui/market/log/g;->e:Z

    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method
