.class final Lcom/yingyonghui/market/e;
.super Ljava/lang/Object;
.source "ActivityListAppDownload.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityListAppDownload;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityListAppDownload;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/yingyonghui/market/e;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/yingyonghui/market/e;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->c(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/market/e;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->c(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/yingyonghui/market/e;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->g(Lcom/yingyonghui/market/ActivityListAppDownload;)V

    .line 210
    iget-object v0, p0, Lcom/yingyonghui/market/e;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "manageDeleteAll"

    iget-object v2, p0, Lcom/yingyonghui/market/e;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-virtual {v2}, Lcom/yingyonghui/market/ActivityListAppDownload;->f()Lcom/yingyonghui/market/log/m;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yingyonghui/market/log/m;)V

    .line 212
    :cond_0
    return-void
.end method
