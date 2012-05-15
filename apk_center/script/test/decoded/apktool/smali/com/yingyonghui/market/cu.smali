.class final Lcom/yingyonghui/market/cu;
.super Ljava/lang/Object;
.source "ActivityDetailNews.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/model/o;

.field private synthetic b:Lcom/yingyonghui/market/ActivityDetailNews;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityDetailNews;Lcom/yingyonghui/market/model/o;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/yingyonghui/market/cu;->b:Lcom/yingyonghui/market/ActivityDetailNews;

    iput-object p2, p0, Lcom/yingyonghui/market/cu;->a:Lcom/yingyonghui/market/model/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 418
    iget-object v0, p0, Lcom/yingyonghui/market/cu;->b:Lcom/yingyonghui/market/ActivityDetailNews;

    iget-object v1, p0, Lcom/yingyonghui/market/cu;->a:Lcom/yingyonghui/market/model/o;

    iget v1, v1, Lcom/yingyonghui/market/model/o;->e:I

    invoke-static {v0, v1}, Lcom/yingyonghui/market/ActivityDetailNews;->a(Lcom/yingyonghui/market/ActivityDetailNews;I)I

    move-result v0

    .line 420
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 421
    iget-object v2, p0, Lcom/yingyonghui/market/cu;->b:Lcom/yingyonghui/market/ActivityDetailNews;

    const-class v3, Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    const-string v2, "_id"

    iget-object v3, p0, Lcom/yingyonghui/market/cu;->a:Lcom/yingyonghui/market/model/o;

    iget v3, v3, Lcom/yingyonghui/market/model/o;->e:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 424
    const-string v2, "title"

    iget-object v3, p0, Lcom/yingyonghui/market/cu;->a:Lcom/yingyonghui/market/model/o;

    iget-object v3, v3, Lcom/yingyonghui/market/model/o;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    const-string v2, "installed"

    iget-object v3, p0, Lcom/yingyonghui/market/cu;->a:Lcom/yingyonghui/market/model/o;

    iget v3, v3, Lcom/yingyonghui/market/model/o;->n:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 426
    const-string v2, "pkgName"

    iget-object v3, p0, Lcom/yingyonghui/market/cu;->a:Lcom/yingyonghui/market/model/o;

    iget-object v3, v3, Lcom/yingyonghui/market/model/o;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    const-string v2, "size"

    iget-object v3, p0, Lcom/yingyonghui/market/cu;->a:Lcom/yingyonghui/market/model/o;

    iget v3, v3, Lcom/yingyonghui/market/model/o;->o:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 428
    const-string v2, "versionCode"

    iget-object v3, p0, Lcom/yingyonghui/market/cu;->a:Lcom/yingyonghui/market/model/o;

    iget v3, v3, Lcom/yingyonghui/market/model/o;->s:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 429
    const-string v2, "from"

    iget-object v3, p0, Lcom/yingyonghui/market/cu;->b:Lcom/yingyonghui/market/ActivityDetailNews;

    invoke-static {v3, v0}, Lcom/yingyonghui/market/ActivityDetailNews;->b(Lcom/yingyonghui/market/ActivityDetailNews;I)Lcom/yingyonghui/market/log/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yingyonghui/market/log/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const-string v2, "assetDetail"

    iget-object v3, p0, Lcom/yingyonghui/market/cu;->a:Lcom/yingyonghui/market/model/o;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 432
    iget-object v2, p0, Lcom/yingyonghui/market/cu;->b:Lcom/yingyonghui/market/ActivityDetailNews;

    invoke-virtual {v2, v1}, Lcom/yingyonghui/market/ActivityDetailNews;->startActivity(Landroid/content/Intent;)V

    .line 434
    iget-object v1, p0, Lcom/yingyonghui/market/cu;->b:Lcom/yingyonghui/market/ActivityDetailNews;

    invoke-virtual {v1}, Lcom/yingyonghui/market/ActivityDetailNews;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yingyonghui/market/cu;->b:Lcom/yingyonghui/market/ActivityDetailNews;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityDetailNews;->c(Lcom/yingyonghui/market/ActivityDetailNews;)Lcom/yingyonghui/market/log/m;

    move-result-object v2

    const-string v3, ""

    iget-object v4, p0, Lcom/yingyonghui/market/cu;->a:Lcom/yingyonghui/market/model/o;

    iget v4, v4, Lcom/yingyonghui/market/model/o;->e:I

    invoke-static {v1, v2, v3, v0, v4}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/lang/String;II)V

    .line 435
    return-void
.end method
