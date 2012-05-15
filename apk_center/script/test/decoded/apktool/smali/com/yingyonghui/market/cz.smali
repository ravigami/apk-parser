.class final Lcom/yingyonghui/market/cz;
.super Landroid/content/BroadcastReceiver;
.source "ActivityListApp.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityListApp;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityListApp;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/yingyonghui/market/cz;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    .line 375
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "broadcast_search_request"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yingyonghui/market/cz;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListApp;->a(Lcom/yingyonghui/market/ActivityListApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 376
    iget-object v0, p0, Lcom/yingyonghui/market/cz;->a:Lcom/yingyonghui/market/ActivityListApp;

    const-string v1, "keyword"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yingyonghui/market/ActivityListApp;->a(Lcom/yingyonghui/market/ActivityListApp;Ljava/lang/String;)Ljava/lang/String;

    .line 377
    iget-object v0, p0, Lcom/yingyonghui/market/cz;->a:Lcom/yingyonghui/market/ActivityListApp;

    const-string v1, "title"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yingyonghui/market/ActivityListApp;->b(Lcom/yingyonghui/market/ActivityListApp;Ljava/lang/String;)Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lcom/yingyonghui/market/cz;->a:Lcom/yingyonghui/market/ActivityListApp;

    const-string v1, "searchType"

    const/4 v2, 0x3

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/yingyonghui/market/ActivityListApp;->a(Lcom/yingyonghui/market/ActivityListApp;I)I

    .line 379
    iget-object v0, p0, Lcom/yingyonghui/market/cz;->a:Lcom/yingyonghui/market/ActivityListApp;

    const-string v1, "source"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/yingyonghui/market/ActivityListApp;->b(Lcom/yingyonghui/market/ActivityListApp;I)I

    .line 381
    iget-object v0, p0, Lcom/yingyonghui/market/cz;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListApp;->b(Lcom/yingyonghui/market/ActivityListApp;)Z

    .line 382
    iget-object v0, p0, Lcom/yingyonghui/market/cz;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListApp;->c(Lcom/yingyonghui/market/ActivityListApp;)I

    .line 383
    iget-object v0, p0, Lcom/yingyonghui/market/cz;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListApp;->d(Lcom/yingyonghui/market/ActivityListApp;)I

    .line 384
    iget-object v0, p0, Lcom/yingyonghui/market/cz;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListApp;->e(Lcom/yingyonghui/market/ActivityListApp;)Lcom/yingyonghui/market/br;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/yingyonghui/market/cz;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListApp;->f(Lcom/yingyonghui/market/ActivityListApp;)Lcom/yingyonghui/market/br;

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/cz;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListApp;->g(Lcom/yingyonghui/market/ActivityListApp;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcom/yingyonghui/market/cz;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListApp;->h(Lcom/yingyonghui/market/ActivityListApp;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/yingyonghui/market/cz;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListApp;->i(Lcom/yingyonghui/market/ActivityListApp;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/yingyonghui/market/cz;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListApp;->j(Lcom/yingyonghui/market/ActivityListApp;)V

    .line 393
    new-instance v0, Landroid/content/Intent;

    const-string v1, "show_search_result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    const-string v1, "keyword"

    iget-object v2, p0, Lcom/yingyonghui/market/cz;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityListApp;->k(Lcom/yingyonghui/market/ActivityListApp;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    iget-object v1, p0, Lcom/yingyonghui/market/cz;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-virtual {v1, v0}, Lcom/yingyonghui/market/ActivityListApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 401
    :cond_1
    :goto_0
    return-void

    .line 397
    :cond_2
    iget-object v0, p0, Lcom/yingyonghui/market/cz;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListApp;->e(Lcom/yingyonghui/market/ActivityListApp;)Lcom/yingyonghui/market/br;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/yingyonghui/market/cz;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListApp;->e(Lcom/yingyonghui/market/ActivityListApp;)Lcom/yingyonghui/market/br;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yingyonghui/market/br;->notifyDataSetChanged()V

    goto :goto_0
.end method
