.class final Lcom/yingyonghui/market/bf;
.super Ljava/lang/Object;
.source "ActivityWeekly.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/model/b;

.field private synthetic b:Lcom/yingyonghui/market/fj;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/fj;Lcom/yingyonghui/market/model/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/yingyonghui/market/bf;->b:Lcom/yingyonghui/market/fj;

    iput-object p2, p0, Lcom/yingyonghui/market/bf;->a:Lcom/yingyonghui/market/model/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 396
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 397
    iget-object v1, p0, Lcom/yingyonghui/market/bf;->b:Lcom/yingyonghui/market/fj;

    iget-object v1, v1, Lcom/yingyonghui/market/fj;->a:Lcom/yingyonghui/market/ActivityWeekly;

    const-class v2, Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    const-string v1, "_id"

    iget-object v2, p0, Lcom/yingyonghui/market/bf;->a:Lcom/yingyonghui/market/model/b;

    iget-object v2, v2, Lcom/yingyonghui/market/model/b;->a:Lcom/yingyonghui/market/model/q;

    iget v2, v2, Lcom/yingyonghui/market/model/q;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 399
    const-string v1, "title"

    iget-object v2, p0, Lcom/yingyonghui/market/bf;->a:Lcom/yingyonghui/market/model/b;

    iget-object v2, v2, Lcom/yingyonghui/market/model/b;->a:Lcom/yingyonghui/market/model/q;

    iget-object v2, v2, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string v1, "installed"

    iget-object v2, p0, Lcom/yingyonghui/market/bf;->a:Lcom/yingyonghui/market/model/b;

    iget-object v2, v2, Lcom/yingyonghui/market/model/b;->a:Lcom/yingyonghui/market/model/q;

    iget v2, v2, Lcom/yingyonghui/market/model/q;->n:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 401
    const-string v1, "pkgName"

    iget-object v2, p0, Lcom/yingyonghui/market/bf;->a:Lcom/yingyonghui/market/model/b;

    iget-object v2, v2, Lcom/yingyonghui/market/model/b;->a:Lcom/yingyonghui/market/model/q;

    iget-object v2, v2, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    const-string v1, "size"

    iget-object v2, p0, Lcom/yingyonghui/market/bf;->a:Lcom/yingyonghui/market/model/b;

    iget-object v2, v2, Lcom/yingyonghui/market/model/b;->a:Lcom/yingyonghui/market/model/q;

    iget v2, v2, Lcom/yingyonghui/market/model/q;->o:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 403
    const-string v1, "versionCode"

    iget-object v2, p0, Lcom/yingyonghui/market/bf;->a:Lcom/yingyonghui/market/model/b;

    iget-object v2, v2, Lcom/yingyonghui/market/model/b;->a:Lcom/yingyonghui/market/model/q;

    iget v2, v2, Lcom/yingyonghui/market/model/q;->s:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 404
    const-string v1, "promotionId"

    iget-object v2, p0, Lcom/yingyonghui/market/bf;->a:Lcom/yingyonghui/market/model/b;

    iget-object v2, v2, Lcom/yingyonghui/market/model/b;->a:Lcom/yingyonghui/market/model/q;

    iget v2, v2, Lcom/yingyonghui/market/model/q;->E:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 405
    const-string v1, "promotionAgent"

    iget-object v2, p0, Lcom/yingyonghui/market/bf;->a:Lcom/yingyonghui/market/model/b;

    iget-object v2, v2, Lcom/yingyonghui/market/model/b;->a:Lcom/yingyonghui/market/model/q;

    iget-object v2, v2, Lcom/yingyonghui/market/model/q;->F:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    const-string v1, "promotionText"

    iget-object v2, p0, Lcom/yingyonghui/market/bf;->a:Lcom/yingyonghui/market/model/b;

    iget-object v2, v2, Lcom/yingyonghui/market/model/b;->a:Lcom/yingyonghui/market/model/q;

    iget-object v2, v2, Lcom/yingyonghui/market/model/q;->H:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const-string v1, "promotionDownUrl"

    iget-object v2, p0, Lcom/yingyonghui/market/bf;->a:Lcom/yingyonghui/market/model/b;

    iget-object v2, v2, Lcom/yingyonghui/market/model/b;->a:Lcom/yingyonghui/market/model/q;

    iget-object v2, v2, Lcom/yingyonghui/market/model/q;->G:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    const-string v1, "from"

    iget-object v2, p0, Lcom/yingyonghui/market/bf;->b:Lcom/yingyonghui/market/fj;

    iget-object v2, v2, Lcom/yingyonghui/market/fj;->a:Lcom/yingyonghui/market/ActivityWeekly;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityWeekly;->d(Lcom/yingyonghui/market/ActivityWeekly;)Lcom/yingyonghui/market/log/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yingyonghui/market/log/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    iget-object v1, p0, Lcom/yingyonghui/market/bf;->b:Lcom/yingyonghui/market/fj;

    iget-object v1, v1, Lcom/yingyonghui/market/fj;->a:Lcom/yingyonghui/market/ActivityWeekly;

    invoke-virtual {v1, v0}, Lcom/yingyonghui/market/ActivityWeekly;->startActivity(Landroid/content/Intent;)V

    .line 410
    return-void
.end method
