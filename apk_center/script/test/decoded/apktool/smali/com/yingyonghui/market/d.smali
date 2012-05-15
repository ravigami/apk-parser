.class final Lcom/yingyonghui/market/d;
.super Landroid/content/BroadcastReceiver;
.source "ActivityListAppDownload.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityListAppDownload;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityListAppDownload;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/yingyonghui/market/d;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 325
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 326
    const-string v1, "com.yingyonghui.market.DOWNLOAD_COMPLETED_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    iget-object v0, p0, Lcom/yingyonghui/market/d;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->h(Lcom/yingyonghui/market/ActivityListAppDownload;)Lcom/yingyonghui/market/be;

    .line 328
    iget-object v0, p0, Lcom/yingyonghui/market/d;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->i(Lcom/yingyonghui/market/ActivityListAppDownload;)Z

    .line 329
    iget-object v0, p0, Lcom/yingyonghui/market/d;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->j(Lcom/yingyonghui/market/ActivityListAppDownload;)Z

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/yingyonghui/market/d;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->h(Lcom/yingyonghui/market/ActivityListAppDownload;)Lcom/yingyonghui/market/be;

    .line 332
    iget-object v0, p0, Lcom/yingyonghui/market/d;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->i(Lcom/yingyonghui/market/ActivityListAppDownload;)Z

    .line 333
    iget-object v0, p0, Lcom/yingyonghui/market/d;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->j(Lcom/yingyonghui/market/ActivityListAppDownload;)Z

    goto :goto_0
.end method
