.class final Lcom/yingyonghui/market/log/c;
.super Ljava/lang/Thread;
.source "AnalyticsService.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/log/AnalyticsService;


# direct methods
.method public constructor <init>(Lcom/yingyonghui/market/log/AnalyticsService;)V
    .locals 1
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/yingyonghui/market/log/c;->a:Lcom/yingyonghui/market/log/AnalyticsService;

    .line 153
    const-string v0, "Analytics Service"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 154
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 158
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 160
    iget-object v0, p0, Lcom/yingyonghui/market/log/c;->a:Lcom/yingyonghui/market/log/AnalyticsService;

    invoke-static {v0}, Lcom/yingyonghui/market/log/AnalyticsService;->a(Lcom/yingyonghui/market/log/AnalyticsService;)V

    .line 167
    :goto_0
    iget-object v2, p0, Lcom/yingyonghui/market/log/c;->a:Lcom/yingyonghui/market/log/AnalyticsService;

    monitor-enter v2

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/yingyonghui/market/log/c;->a:Lcom/yingyonghui/market/log/AnalyticsService;

    invoke-static {v0}, Lcom/yingyonghui/market/log/AnalyticsService;->b(Lcom/yingyonghui/market/log/AnalyticsService;)Lcom/yingyonghui/market/log/c;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "multiple UpdateThreads in AnalyticsService"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 172
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/yingyonghui/market/log/c;->a:Lcom/yingyonghui/market/log/AnalyticsService;

    iget-object v3, p0, Lcom/yingyonghui/market/log/c;->a:Lcom/yingyonghui/market/log/AnalyticsService;

    const-string v4, "app_trace_log_enable"

    invoke-static {v3, v4}, Lcom/yingyonghui/market/util/l;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/yingyonghui/market/log/AnalyticsService;->a(Lcom/yingyonghui/market/log/AnalyticsService;Z)Z

    .line 173
    iget-object v0, p0, Lcom/yingyonghui/market/log/c;->a:Lcom/yingyonghui/market/log/AnalyticsService;

    invoke-static {v0}, Lcom/yingyonghui/market/log/AnalyticsService;->c(Lcom/yingyonghui/market/log/AnalyticsService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/yingyonghui/market/log/c;->a:Lcom/yingyonghui/market/log/AnalyticsService;

    iget-object v3, p0, Lcom/yingyonghui/market/log/c;->a:Lcom/yingyonghui/market/log/AnalyticsService;

    const-string v4, "checkbox_allow_app_trace"

    invoke-static {v3, v4}, Lcom/yingyonghui/market/util/l;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/yingyonghui/market/log/AnalyticsService;->a(Lcom/yingyonghui/market/log/AnalyticsService;Z)Z

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/log/c;->a:Lcom/yingyonghui/market/log/AnalyticsService;

    invoke-static {v0}, Lcom/yingyonghui/market/log/AnalyticsService;->c(Lcom/yingyonghui/market/log/AnalyticsService;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/yingyonghui/market/log/c;->a:Lcom/yingyonghui/market/log/AnalyticsService;

    invoke-static {v0}, Lcom/yingyonghui/market/log/AnalyticsService;->d(Lcom/yingyonghui/market/log/AnalyticsService;)Lcom/yingyonghui/market/log/c;

    .line 179
    iget-object v0, p0, Lcom/yingyonghui/market/log/c;->a:Lcom/yingyonghui/market/log/AnalyticsService;

    invoke-virtual {v0}, Lcom/yingyonghui/market/log/AnalyticsService;->stopSelf()V

    .line 181
    monitor-exit v2

    return-void

    .line 183
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    invoke-static {}, Lcom/yingyonghui/market/log/AnalyticsService;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 189
    invoke-static {}, Lcom/yingyonghui/market/log/AnalyticsService;->b()Ljava/lang/String;

    move-result-object v0

    .line 192
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/yingyonghui/market/log/AnalyticsService;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 193
    :cond_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 194
    iget-object v3, p0, Lcom/yingyonghui/market/log/c;->a:Lcom/yingyonghui/market/log/AnalyticsService;

    invoke-static {v3}, Lcom/yingyonghui/market/log/AnalyticsService;->f(Lcom/yingyonghui/market/log/AnalyticsService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {}, Lcom/yingyonghui/market/log/AnalyticsService;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0}, Lcom/yingyonghui/market/util/b;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v3, p0, Lcom/yingyonghui/market/log/c;->a:Lcom/yingyonghui/market/log/AnalyticsService;

    invoke-static {v3}, Lcom/yingyonghui/market/log/AnalyticsService;->e(Lcom/yingyonghui/market/log/AnalyticsService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 207
    invoke-static {v0}, Lcom/yingyonghui/market/log/AnalyticsService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    iget-object v2, p0, Lcom/yingyonghui/market/log/c;->a:Lcom/yingyonghui/market/log/AnalyticsService;

    invoke-static {v2}, Lcom/yingyonghui/market/util/g;->a(Landroid/content/Context;)Z

    move-result v2

    .line 210
    if-eqz v2, :cond_6

    .line 211
    iget-object v2, p0, Lcom/yingyonghui/market/log/c;->a:Lcom/yingyonghui/market/log/AnalyticsService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v0, v3, v4}, Lcom/yingyonghui/market/log/AnalyticsService;->a(Lcom/yingyonghui/market/log/AnalyticsService;Ljava/lang/String;J)Z

    move-result v2

    .line 212
    if-nez v2, :cond_4

    .line 213
    iget-object v2, p0, Lcom/yingyonghui/market/log/c;->a:Lcom/yingyonghui/market/log/AnalyticsService;

    invoke-static {v2, v0}, Lcom/yingyonghui/market/log/AnalyticsService;->a(Lcom/yingyonghui/market/log/AnalyticsService;Ljava/lang/String;)Z

    .line 216
    :cond_4
    iget-object v0, p0, Lcom/yingyonghui/market/log/c;->a:Lcom/yingyonghui/market/log/AnalyticsService;

    invoke-static {v0}, Lcom/yingyonghui/market/log/AnalyticsService;->g(Lcom/yingyonghui/market/log/AnalyticsService;)V

    .line 224
    :cond_5
    :goto_3
    const-wide/16 v2, 0x4e20

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 228
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 218
    :cond_6
    iget-object v2, p0, Lcom/yingyonghui/market/log/c;->a:Lcom/yingyonghui/market/log/AnalyticsService;

    invoke-static {v2, v0}, Lcom/yingyonghui/market/log/AnalyticsService;->a(Lcom/yingyonghui/market/log/AnalyticsService;Ljava/lang/String;)Z

    goto :goto_3

    :cond_7
    move-object v0, v1

    goto :goto_2

    :cond_8
    move-object v0, v1

    goto/16 :goto_1
.end method
