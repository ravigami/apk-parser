.class final Lcom/yingyonghui/market/log/a;
.super Ljava/lang/Thread;
.source "LogService.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/log/LogService;


# direct methods
.method synthetic constructor <init>(Lcom/yingyonghui/market/log/LogService;)V
    .locals 1
    .parameter

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yingyonghui/market/log/a;-><init>(Lcom/yingyonghui/market/log/LogService;B)V

    return-void
.end method

.method private constructor <init>(Lcom/yingyonghui/market/log/LogService;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/yingyonghui/market/log/a;->a:Lcom/yingyonghui/market/log/LogService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 79
    const/4 v0, 0x1

    .line 81
    :goto_0
    if-eqz v0, :cond_1

    .line 83
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/yingyonghui/market/log/LogService;->a()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x493e0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/yingyonghui/market/log/a;->a:Lcom/yingyonghui/market/log/LogService;

    invoke-static {v1}, Lcom/yingyonghui/market/log/LogService;->b(Lcom/yingyonghui/market/log/LogService;)V

    .line 87
    :cond_0
    const-wide/32 v1, 0xea60

    invoke-static {v1, v2}, Lcom/yingyonghui/market/log/a;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 90
    goto :goto_0

    .line 92
    :cond_1
    return-void
.end method
