.class final Lcom/yingyonghui/market/eh;
.super Ljava/lang/Object;
.source "ActivityDetailAppInner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityDetailAppInner;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityDetailAppInner;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/yingyonghui/market/eh;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 257
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yingyonghui/market/eh;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    const-class v2, Lcom/yingyonghui/market/ActivityDetailScreenshot;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 258
    const-string v1, "position"

    iget-object v2, p0, Lcom/yingyonghui/market/eh;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityDetailAppInner;->f(Lcom/yingyonghui/market/ActivityDetailAppInner;)Lcom/yingyonghui/market/en;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yingyonghui/market/en;->a()I

    move-result v2

    rem-int v2, p3, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 259
    const-string v1, "id"

    iget-object v2, p0, Lcom/yingyonghui/market/eh;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityDetailAppInner;->a(Lcom/yingyonghui/market/ActivityDetailAppInner;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    const-string v1, "count"

    iget-object v2, p0, Lcom/yingyonghui/market/eh;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityDetailAppInner;->f(Lcom/yingyonghui/market/ActivityDetailAppInner;)Lcom/yingyonghui/market/en;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yingyonghui/market/en;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    const-string v1, "snapshotUrls"

    iget-object v2, p0, Lcom/yingyonghui/market/eh;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityDetailAppInner;->b(Lcom/yingyonghui/market/ActivityDetailAppInner;)Lcom/yingyonghui/market/model/o;

    move-result-object v2

    iget-object v2, v2, Lcom/yingyonghui/market/model/o;->C:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    iget-object v1, p0, Lcom/yingyonghui/market/eh;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-virtual {v1, v0}, Lcom/yingyonghui/market/ActivityDetailAppInner;->startActivity(Landroid/content/Intent;)V

    .line 264
    iget-object v0, p0, Lcom/yingyonghui/market/eh;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityDetailAppInner;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/eh;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailAppInner;->g(Lcom/yingyonghui/market/ActivityDetailAppInner;)Lcom/yingyonghui/market/log/m;

    move-result-object v1

    invoke-static {v1}, Lcom/yingyonghui/market/log/h;->k(Lcom/yingyonghui/market/log/m;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 265
    return-void
.end method
