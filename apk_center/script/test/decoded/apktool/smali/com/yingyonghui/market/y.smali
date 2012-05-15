.class final Lcom/yingyonghui/market/y;
.super Ljava/lang/Object;
.source "ActivityListComments.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/fb;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/fb;)V
    .locals 0
    .parameter

    .prologue
    .line 567
    iput-object p1, p0, Lcom/yingyonghui/market/y;->a:Lcom/yingyonghui/market/fb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 570
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 572
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 573
    if-eqz v1, :cond_0

    .line 574
    array-length v0, v1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 575
    iget-object v0, p0, Lcom/yingyonghui/market/y;->a:Lcom/yingyonghui/market/fb;

    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yingyonghui/market/fb;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/t;

    .line 576
    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, v0, Lcom/yingyonghui/market/model/t;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/t;

    .line 581
    :goto_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/yingyonghui/market/y;->a:Lcom/yingyonghui/market/fb;

    iget-object v3, v3, Lcom/yingyonghui/market/fb;->a:Lcom/yingyonghui/market/ActivityListComments;

    const-class v4, Lcom/yingyonghui/market/ActivityCommentsReply;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 582
    const-string v3, "_id"

    iget-object v4, p0, Lcom/yingyonghui/market/y;->a:Lcom/yingyonghui/market/fb;

    iget-object v4, v4, Lcom/yingyonghui/market/fb;->a:Lcom/yingyonghui/market/ActivityListComments;

    invoke-static {v4}, Lcom/yingyonghui/market/ActivityListComments;->n(Lcom/yingyonghui/market/ActivityListComments;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 583
    const-string v3, "author"

    iget-object v4, v0, Lcom/yingyonghui/market/model/t;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    const-string v3, "deviceName"

    iget-object v4, v0, Lcom/yingyonghui/market/model/t;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    const-string v3, "rating"

    iget-wide v4, v0, Lcom/yingyonghui/market/model/t;->f:D

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 586
    const-string v3, "commentTime"

    iget-wide v4, v0, Lcom/yingyonghui/market/model/t;->h:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 587
    const-string v3, "type"

    iget-object v4, v0, Lcom/yingyonghui/market/model/t;->i:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    const-string v3, "comment"

    iget-object v4, v0, Lcom/yingyonghui/market/model/t;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    const-string v3, "errorType"

    iget v4, v0, Lcom/yingyonghui/market/model/t;->j:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 590
    const-string v3, "parentId"

    aget-object v4, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 591
    const-string v3, "isDelete"

    iget-boolean v4, v0, Lcom/yingyonghui/market/model/t;->c:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 592
    const-string v3, "isMine"

    iget-boolean v0, v0, Lcom/yingyonghui/market/model/t;->k:Z

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 593
    const-string v0, "pkgName"

    iget-object v3, p0, Lcom/yingyonghui/market/y;->a:Lcom/yingyonghui/market/fb;

    iget-object v3, v3, Lcom/yingyonghui/market/fb;->a:Lcom/yingyonghui/market/ActivityListComments;

    invoke-static {v3}, Lcom/yingyonghui/market/ActivityListComments;->a(Lcom/yingyonghui/market/ActivityListComments;)Lcom/yingyonghui/market/model/o;

    move-result-object v3

    iget-object v3, v3, Lcom/yingyonghui/market/model/o;->m:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    iget-object v0, p0, Lcom/yingyonghui/market/y;->a:Lcom/yingyonghui/market/fb;

    iget-object v0, v0, Lcom/yingyonghui/market/fb;->a:Lcom/yingyonghui/market/ActivityListComments;

    const/16 v3, 0x192

    invoke-virtual {v0, v2, v3}, Lcom/yingyonghui/market/ActivityListComments;->startActivityForResult(Landroid/content/Intent;I)V

    .line 596
    aget-object v0, v1, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 597
    iget-object v1, p0, Lcom/yingyonghui/market/y;->a:Lcom/yingyonghui/market/fb;

    iget-object v1, v1, Lcom/yingyonghui/market/fb;->a:Lcom/yingyonghui/market/ActivityListComments;

    invoke-virtual {v1}, Lcom/yingyonghui/market/ActivityListComments;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yingyonghui/market/y;->a:Lcom/yingyonghui/market/fb;

    iget-object v2, v2, Lcom/yingyonghui/market/fb;->a:Lcom/yingyonghui/market/ActivityListComments;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityListComments;->n(Lcom/yingyonghui/market/ActivityListComments;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/yingyonghui/market/log/h;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 599
    :cond_0
    return-void

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/y;->a:Lcom/yingyonghui/market/fb;

    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yingyonghui/market/fb;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/t;

    goto/16 :goto_0
.end method
