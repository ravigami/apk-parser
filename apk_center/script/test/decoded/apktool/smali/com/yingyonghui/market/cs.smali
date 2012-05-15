.class final Lcom/yingyonghui/market/cs;
.super Landroid/content/BroadcastReceiver;
.source "ActivityDetailNews.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityDetailNews;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityDetailNews;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/yingyonghui/market/cs;->a:Lcom/yingyonghui/market/ActivityDetailNews;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "request_news_list_complete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/yingyonghui/market/cs;->a:Lcom/yingyonghui/market/ActivityDetailNews;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailNews;->b(Lcom/yingyonghui/market/ActivityDetailNews;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 240
    iget-object v0, p0, Lcom/yingyonghui/market/cs;->a:Lcom/yingyonghui/market/ActivityDetailNews;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailNews;->b(Lcom/yingyonghui/market/ActivityDetailNews;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 242
    :cond_0
    return-void
.end method
