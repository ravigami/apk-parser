.class final Lcom/yingyonghui/market/ct;
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
    .line 398
    iput-object p1, p0, Lcom/yingyonghui/market/ct;->b:Lcom/yingyonghui/market/ActivityDetailNews;

    iput-object p2, p0, Lcom/yingyonghui/market/ct;->a:Lcom/yingyonghui/market/model/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 401
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 402
    const-string v1, "download"

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 403
    iget-object v0, p0, Lcom/yingyonghui/market/ct;->b:Lcom/yingyonghui/market/ActivityDetailNews;

    iget-object v1, p0, Lcom/yingyonghui/market/ct;->a:Lcom/yingyonghui/market/model/o;

    invoke-static {v0, v1}, Lcom/yingyonghui/market/ActivityDetailNews;->a(Lcom/yingyonghui/market/ActivityDetailNews;Lcom/yingyonghui/market/model/o;)V

    .line 405
    iget-object v0, p0, Lcom/yingyonghui/market/ct;->a:Lcom/yingyonghui/market/model/o;

    iget-object v1, p0, Lcom/yingyonghui/market/ct;->b:Lcom/yingyonghui/market/ActivityDetailNews;

    invoke-virtual {v1}, Lcom/yingyonghui/market/ActivityDetailNews;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yingyonghui/market/ct;->a:Lcom/yingyonghui/market/model/o;

    iget-object v2, v2, Lcom/yingyonghui/market/model/o;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/yingyonghui/market/ct;->a:Lcom/yingyonghui/market/model/o;

    iget v3, v3, Lcom/yingyonghui/market/model/o;->s:I

    iget-object v4, p0, Lcom/yingyonghui/market/ct;->a:Lcom/yingyonghui/market/model/o;

    iget v4, v4, Lcom/yingyonghui/market/model/o;->e:I

    invoke-static {v1, v2, v3, v4}, Lcom/yingyonghui/market/util/v;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    iput v1, v0, Lcom/yingyonghui/market/model/o;->n:I

    .line 406
    iget-object v0, p0, Lcom/yingyonghui/market/ct;->a:Lcom/yingyonghui/market/model/o;

    iget v0, v0, Lcom/yingyonghui/market/model/o;->n:I

    invoke-static {v0}, Lcom/yingyonghui/market/util/GlobalUtil;->a(I)Ljava/lang/String;

    move-result-object v5

    .line 407
    iget-object v0, p0, Lcom/yingyonghui/market/ct;->b:Lcom/yingyonghui/market/ActivityDetailNews;

    iget-object v1, p0, Lcom/yingyonghui/market/ct;->a:Lcom/yingyonghui/market/model/o;

    iget v1, v1, Lcom/yingyonghui/market/model/o;->e:I

    invoke-static {v0, v1}, Lcom/yingyonghui/market/ActivityDetailNews;->a(Lcom/yingyonghui/market/ActivityDetailNews;I)I

    move-result v3

    .line 408
    iget-object v0, p0, Lcom/yingyonghui/market/ct;->b:Lcom/yingyonghui/market/ActivityDetailNews;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityDetailNews;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ct;->b:Lcom/yingyonghui/market/ActivityDetailNews;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailNews;->c(Lcom/yingyonghui/market/ActivityDetailNews;)Lcom/yingyonghui/market/log/m;

    move-result-object v1

    const-string v2, ""

    iget-object v4, p0, Lcom/yingyonghui/market/ct;->a:Lcom/yingyonghui/market/model/o;

    iget v4, v4, Lcom/yingyonghui/market/model/o;->e:I

    invoke-static/range {v0 .. v5}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/lang/String;IILjava/lang/String;)V

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    const-string v1, "install"

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/yingyonghui/market/ct;->b:Lcom/yingyonghui/market/ActivityDetailNews;

    iget-object v1, p0, Lcom/yingyonghui/market/ct;->a:Lcom/yingyonghui/market/model/o;

    iget-object v1, v1, Lcom/yingyonghui/market/model/o;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/GlobalUtil;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
