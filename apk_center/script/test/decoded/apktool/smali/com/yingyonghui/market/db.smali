.class final Lcom/yingyonghui/market/db;
.super Ljava/lang/Object;
.source "ActivityListApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Ljava/util/ArrayList;

.field private synthetic b:I

.field private synthetic c:Lcom/yingyonghui/market/ActivityListApp;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityListApp;Ljava/util/ArrayList;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 562
    iput-object p1, p0, Lcom/yingyonghui/market/db;->c:Lcom/yingyonghui/market/ActivityListApp;

    iput-object p2, p0, Lcom/yingyonghui/market/db;->a:Ljava/util/ArrayList;

    iput p3, p0, Lcom/yingyonghui/market/db;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 565
    iget-object v0, p0, Lcom/yingyonghui/market/db;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/yingyonghui/market/db;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    .line 566
    if-nez v0, :cond_0

    .line 587
    :goto_0
    return-void

    .line 570
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 571
    iget-object v2, p0, Lcom/yingyonghui/market/db;->c:Lcom/yingyonghui/market/ActivityListApp;

    const-class v3, Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    const-string v2, "_id"

    iget v3, v0, Lcom/yingyonghui/market/model/q;->e:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 573
    const-string v2, "title"

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 574
    const-string v2, "installed"

    iget v3, v0, Lcom/yingyonghui/market/model/q;->n:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 575
    const-string v2, "pkgName"

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    const-string v2, "size"

    iget v3, v0, Lcom/yingyonghui/market/model/q;->o:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 577
    const-string v2, "versionCode"

    iget v3, v0, Lcom/yingyonghui/market/model/q;->s:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 578
    const-string v2, "promotionId"

    iget v3, v0, Lcom/yingyonghui/market/model/q;->E:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 579
    const-string v2, "promotionAgent"

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->F:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    const-string v2, "promotionText"

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->H:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 581
    const-string v2, "promotionDownUrl"

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->G:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    const-string v2, "from"

    iget-object v3, p0, Lcom/yingyonghui/market/db;->c:Lcom/yingyonghui/market/ActivityListApp;

    iget v4, p0, Lcom/yingyonghui/market/db;->b:I

    invoke-static {v3, v4}, Lcom/yingyonghui/market/ActivityListApp;->c(Lcom/yingyonghui/market/ActivityListApp;I)Lcom/yingyonghui/market/log/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yingyonghui/market/log/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    iget-object v2, p0, Lcom/yingyonghui/market/db;->c:Lcom/yingyonghui/market/ActivityListApp;

    invoke-virtual {v2, v1}, Lcom/yingyonghui/market/ActivityListApp;->startActivity(Landroid/content/Intent;)V

    .line 586
    iget-object v1, p0, Lcom/yingyonghui/market/db;->c:Lcom/yingyonghui/market/ActivityListApp;

    invoke-virtual {v1}, Lcom/yingyonghui/market/ActivityListApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yingyonghui/market/db;->c:Lcom/yingyonghui/market/ActivityListApp;

    invoke-virtual {v2}, Lcom/yingyonghui/market/ActivityListApp;->a()Lcom/yingyonghui/market/log/m;

    move-result-object v2

    const-string v3, "CatBanner"

    iget v4, p0, Lcom/yingyonghui/market/db;->b:I

    iget v0, v0, Lcom/yingyonghui/market/model/q;->e:I

    invoke-static {v1, v2, v3, v4, v0}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/lang/String;II)V

    goto/16 :goto_0
.end method
