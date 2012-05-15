.class final Lcom/yingyonghui/market/bv;
.super Ljava/lang/Object;
.source "ActivityGridCategory.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/model/p;

.field private synthetic b:I

.field private synthetic c:Lcom/yingyonghui/market/eg;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/eg;Lcom/yingyonghui/market/model/p;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/yingyonghui/market/bv;->c:Lcom/yingyonghui/market/eg;

    iput-object p2, p0, Lcom/yingyonghui/market/bv;->a:Lcom/yingyonghui/market/model/p;

    iput p3, p0, Lcom/yingyonghui/market/bv;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    .line 362
    iget-object v0, p0, Lcom/yingyonghui/market/bv;->a:Lcom/yingyonghui/market/model/p;

    iget-object v0, v0, Lcom/yingyonghui/market/model/p;->b:Ljava/lang/String;

    .line 363
    iget-object v1, p0, Lcom/yingyonghui/market/bv;->a:Lcom/yingyonghui/market/model/p;

    iget v1, v1, Lcom/yingyonghui/market/model/p;->a:I

    .line 364
    iget-object v2, p0, Lcom/yingyonghui/market/bv;->c:Lcom/yingyonghui/market/eg;

    iget-object v2, v2, Lcom/yingyonghui/market/eg;->a:Lcom/yingyonghui/market/ActivityGridCategory;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityGridCategory;->b(Lcom/yingyonghui/market/ActivityGridCategory;)I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 365
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 366
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 367
    iget-object v3, p0, Lcom/yingyonghui/market/bv;->c:Lcom/yingyonghui/market/eg;

    iget-object v3, v3, Lcom/yingyonghui/market/eg;->a:Lcom/yingyonghui/market/ActivityGridCategory;

    const-class v4, Lcom/yingyonghui/market/ActivityNewEvents;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    iget-object v3, p0, Lcom/yingyonghui/market/bv;->c:Lcom/yingyonghui/market/eg;

    iget-object v3, v3, Lcom/yingyonghui/market/eg;->a:Lcom/yingyonghui/market/ActivityGridCategory;

    invoke-virtual {v3}, Lcom/yingyonghui/market/ActivityGridCategory;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/yingyonghui/market/bv;->c:Lcom/yingyonghui/market/eg;

    iget-object v4, v4, Lcom/yingyonghui/market/eg;->a:Lcom/yingyonghui/market/ActivityGridCategory;

    invoke-static {v4}, Lcom/yingyonghui/market/ActivityGridCategory;->c(Lcom/yingyonghui/market/ActivityGridCategory;)Lcom/yingyonghui/market/log/m;

    move-result-object v4

    const-string v5, "NewEvent"

    iget v6, p0, Lcom/yingyonghui/market/bv;->b:I

    invoke-static {v3, v4, v5, v6, v1}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/lang/String;II)V

    .line 380
    :goto_0
    const-string v3, "_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 381
    const-string v1, "label"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    iget-object v0, p0, Lcom/yingyonghui/market/bv;->c:Lcom/yingyonghui/market/eg;

    iget-object v0, v0, Lcom/yingyonghui/market/eg;->a:Lcom/yingyonghui/market/ActivityGridCategory;

    invoke-virtual {v0, v2}, Lcom/yingyonghui/market/ActivityGridCategory;->startActivity(Landroid/content/Intent;)V

    .line 392
    :goto_1
    return-void

    .line 370
    :cond_0
    const/4 v3, -0x3

    if-ne v1, v3, :cond_1

    .line 372
    iget-object v3, p0, Lcom/yingyonghui/market/bv;->c:Lcom/yingyonghui/market/eg;

    iget-object v3, v3, Lcom/yingyonghui/market/eg;->a:Lcom/yingyonghui/market/ActivityGridCategory;

    const-class v4, Lcom/yingyonghui/market/ActivityGridWeekly;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    iget-object v3, p0, Lcom/yingyonghui/market/bv;->c:Lcom/yingyonghui/market/eg;

    iget-object v3, v3, Lcom/yingyonghui/market/eg;->a:Lcom/yingyonghui/market/ActivityGridCategory;

    invoke-virtual {v3}, Lcom/yingyonghui/market/ActivityGridCategory;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/yingyonghui/market/bv;->c:Lcom/yingyonghui/market/eg;

    iget-object v4, v4, Lcom/yingyonghui/market/eg;->a:Lcom/yingyonghui/market/ActivityGridCategory;

    invoke-static {v4}, Lcom/yingyonghui/market/ActivityGridCategory;->c(Lcom/yingyonghui/market/ActivityGridCategory;)Lcom/yingyonghui/market/log/m;

    move-result-object v4

    const-string v5, "Weekly"

    iget v6, p0, Lcom/yingyonghui/market/bv;->b:I

    invoke-static {v3, v4, v5, v6, v1}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/lang/String;II)V

    goto :goto_0

    .line 376
    :cond_1
    iget-object v3, p0, Lcom/yingyonghui/market/bv;->c:Lcom/yingyonghui/market/eg;

    iget-object v3, v3, Lcom/yingyonghui/market/eg;->a:Lcom/yingyonghui/market/ActivityGridCategory;

    const-class v4, Lcom/yingyonghui/market/ActivityListAppRecommend;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    iget-object v3, p0, Lcom/yingyonghui/market/bv;->c:Lcom/yingyonghui/market/eg;

    iget-object v3, v3, Lcom/yingyonghui/market/eg;->a:Lcom/yingyonghui/market/ActivityGridCategory;

    invoke-virtual {v3}, Lcom/yingyonghui/market/ActivityGridCategory;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/yingyonghui/market/bv;->c:Lcom/yingyonghui/market/eg;

    iget-object v4, v4, Lcom/yingyonghui/market/eg;->a:Lcom/yingyonghui/market/ActivityGridCategory;

    invoke-static {v4}, Lcom/yingyonghui/market/ActivityGridCategory;->c(Lcom/yingyonghui/market/ActivityGridCategory;)Lcom/yingyonghui/market/log/m;

    move-result-object v4

    const-string v5, ""

    iget v6, p0, Lcom/yingyonghui/market/bv;->b:I

    invoke-static {v3, v4, v5, v6, v1}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/lang/String;II)V

    goto :goto_0

    .line 384
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 385
    iget-object v3, p0, Lcom/yingyonghui/market/bv;->c:Lcom/yingyonghui/market/eg;

    iget-object v3, v3, Lcom/yingyonghui/market/eg;->a:Lcom/yingyonghui/market/ActivityGridCategory;

    const-class v4, Lcom/yingyonghui/market/ActivityListCategoryInner;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    const-string v3, "_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 387
    const-string v3, "label"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    iget-object v0, p0, Lcom/yingyonghui/market/bv;->c:Lcom/yingyonghui/market/eg;

    iget-object v0, v0, Lcom/yingyonghui/market/eg;->a:Lcom/yingyonghui/market/ActivityGridCategory;

    invoke-virtual {v0, v2}, Lcom/yingyonghui/market/ActivityGridCategory;->startActivity(Landroid/content/Intent;)V

    .line 390
    iget-object v0, p0, Lcom/yingyonghui/market/bv;->c:Lcom/yingyonghui/market/eg;

    iget-object v0, v0, Lcom/yingyonghui/market/eg;->a:Lcom/yingyonghui/market/ActivityGridCategory;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityGridCategory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/yingyonghui/market/bv;->c:Lcom/yingyonghui/market/eg;

    iget-object v2, v2, Lcom/yingyonghui/market/eg;->a:Lcom/yingyonghui/market/ActivityGridCategory;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityGridCategory;->c(Lcom/yingyonghui/market/ActivityGridCategory;)Lcom/yingyonghui/market/log/m;

    move-result-object v2

    const-string v3, ""

    iget v4, p0, Lcom/yingyonghui/market/bv;->b:I

    invoke-static {v0, v2, v3, v4, v1}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/lang/String;II)V

    goto/16 :goto_1
.end method
