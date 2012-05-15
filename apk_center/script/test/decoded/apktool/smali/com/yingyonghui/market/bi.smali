.class final Lcom/yingyonghui/market/bi;
.super Landroid/content/BroadcastReceiver;
.source "ActivityListNews.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityListNews;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityListNews;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/yingyonghui/market/bi;->a:Lcom/yingyonghui/market/ActivityListNews;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "request_more_news_list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/yingyonghui/market/bi;->a:Lcom/yingyonghui/market/ActivityListNews;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListNews;->a(Lcom/yingyonghui/market/ActivityListNews;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yingyonghui/market/bi;->a:Lcom/yingyonghui/market/ActivityListNews;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListNews;->b(Lcom/yingyonghui/market/ActivityListNews;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 110
    const/16 v0, 0x1e

    .line 111
    iget-object v1, p0, Lcom/yingyonghui/market/bi;->a:Lcom/yingyonghui/market/ActivityListNews;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityListNews;->c(Lcom/yingyonghui/market/ActivityListNews;)Z

    .line 115
    :goto_0
    iget-object v1, p0, Lcom/yingyonghui/market/bi;->a:Lcom/yingyonghui/market/ActivityListNews;

    iget-object v1, v1, Lcom/yingyonghui/market/ActivityListNews;->a:Lcom/yingyonghui/market/online/e;

    invoke-static {}, Lcom/yingyonghui/market/ActivityListNews;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/yingyonghui/market/bi;->a:Lcom/yingyonghui/market/ActivityListNews;

    invoke-static {v3}, Lcom/yingyonghui/market/ActivityListNews;->d(Lcom/yingyonghui/market/ActivityListNews;)I

    move-result v3

    sub-int/2addr v2, v3

    const/16 v3, 0x384

    iget-object v4, p0, Lcom/yingyonghui/market/bi;->a:Lcom/yingyonghui/market/ActivityListNews;

    iget-object v4, v4, Lcom/yingyonghui/market/ActivityListNews;->b:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/yingyonghui/market/online/e;->c(IIILandroid/os/Handler;)V

    .line 117
    :cond_0
    return-void

    .line 113
    :cond_1
    const/16 v0, 0xa

    goto :goto_0
.end method
