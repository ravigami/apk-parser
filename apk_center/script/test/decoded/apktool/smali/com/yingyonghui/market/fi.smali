.class final Lcom/yingyonghui/market/fi;
.super Ljava/lang/Object;
.source "AdapterListApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/br;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/br;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 357
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 358
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 362
    aget-object v1, v0, v5

    invoke-static {v1}, Lcom/yingyonghui/market/util/m;->a(Ljava/lang/String;)I

    move-result v3

    .line 363
    aget-object v1, v0, v4

    .line 365
    iget-object v2, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    iget-object v0, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-virtual {v0, v3}, Lcom/yingyonghui/market/br;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    invoke-static {v2, v0}, Lcom/yingyonghui/market/br;->a(Lcom/yingyonghui/market/br;Lcom/yingyonghui/market/model/q;)Lcom/yingyonghui/market/model/q;

    .line 367
    iget-object v0, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-static {v0}, Lcom/yingyonghui/market/br;->a(Lcom/yingyonghui/market/br;)Lcom/yingyonghui/market/model/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-static {v0}, Lcom/yingyonghui/market/br;->a(Lcom/yingyonghui/market/br;)Lcom/yingyonghui/market/model/q;

    move-result-object v0

    iget-boolean v0, v0, Lcom/yingyonghui/market/model/q;->w:Z

    if-nez v0, :cond_0

    .line 371
    const-string v0, "down"

    invoke-static {v1, v0}, Lcom/yingyonghui/market/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 372
    iget-object v0, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-static {v0}, Lcom/yingyonghui/market/br;->a(Lcom/yingyonghui/market/br;)Lcom/yingyonghui/market/model/q;

    move-result-object v0

    iput v5, v0, Lcom/yingyonghui/market/model/q;->n:I

    .line 373
    iget-object v0, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    iget-object v1, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-static {v1}, Lcom/yingyonghui/market/br;->a(Lcom/yingyonghui/market/br;)Lcom/yingyonghui/market/model/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/br;->a(Lcom/yingyonghui/market/model/q;)V

    .line 374
    iget-object v0, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-static {v0}, Lcom/yingyonghui/market/br;->b(Lcom/yingyonghui/market/br;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-static {v1}, Lcom/yingyonghui/market/br;->c(Lcom/yingyonghui/market/br;)Lcom/yingyonghui/market/log/m;

    move-result-object v1

    const-string v2, ""

    iget-object v4, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-static {v4}, Lcom/yingyonghui/market/br;->a(Lcom/yingyonghui/market/br;)Lcom/yingyonghui/market/model/q;

    move-result-object v4

    iget v4, v4, Lcom/yingyonghui/market/model/q;->e:I

    const-string v5, "download"

    invoke-static/range {v0 .. v5}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_2
    const-string v0, "update"

    invoke-static {v1, v0}, Lcom/yingyonghui/market/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 376
    iget-object v0, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-static {v0}, Lcom/yingyonghui/market/br;->a(Lcom/yingyonghui/market/br;)Lcom/yingyonghui/market/model/q;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Lcom/yingyonghui/market/model/q;->n:I

    .line 377
    iget-object v0, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-static {v0}, Lcom/yingyonghui/market/br;->b(Lcom/yingyonghui/market/br;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/yingyonghui/market/ActivityListAppManage;

    if-eqz v0, :cond_4

    .line 378
    iget-object v0, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-static {v0}, Lcom/yingyonghui/market/br;->a(Lcom/yingyonghui/market/br;)Lcom/yingyonghui/market/model/q;

    move-result-object v0

    iput-boolean v4, v0, Lcom/yingyonghui/market/model/q;->O:Z

    .line 384
    iget-object v0, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-static {v0}, Lcom/yingyonghui/market/br;->a(Lcom/yingyonghui/market/br;)Lcom/yingyonghui/market/model/q;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 385
    iget-object v0, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-static {v0}, Lcom/yingyonghui/market/br;->a(Lcom/yingyonghui/market/br;)Lcom/yingyonghui/market/model/q;

    move-result-object v0

    .line 386
    new-instance v1, Lcom/yingyonghui/market/bz;

    iget-object v2, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-direct {v1, v2}, Lcom/yingyonghui/market/bz;-><init>(Lcom/yingyonghui/market/br;)V

    new-array v2, v4, [Lcom/yingyonghui/market/model/q;

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/yingyonghui/market/bz;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 391
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-static {v0}, Lcom/yingyonghui/market/br;->b(Lcom/yingyonghui/market/br;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-static {v1}, Lcom/yingyonghui/market/br;->c(Lcom/yingyonghui/market/br;)Lcom/yingyonghui/market/log/m;

    move-result-object v1

    const-string v2, ""

    iget-object v4, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-static {v4}, Lcom/yingyonghui/market/br;->a(Lcom/yingyonghui/market/br;)Lcom/yingyonghui/market/model/q;

    move-result-object v4

    iget v4, v4, Lcom/yingyonghui/market/model/q;->e:I

    const-string v5, "update"

    invoke-static/range {v0 .. v5}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 389
    :cond_4
    iget-object v0, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    iget-object v1, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-static {v1}, Lcom/yingyonghui/market/br;->a(Lcom/yingyonghui/market/br;)Lcom/yingyonghui/market/model/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/br;->a(Lcom/yingyonghui/market/model/q;)V

    goto :goto_1

    .line 392
    :cond_5
    const-string v0, "install"

    invoke-static {v1, v0}, Lcom/yingyonghui/market/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 393
    iget-object v0, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-static {v0}, Lcom/yingyonghui/market/br;->b(Lcom/yingyonghui/market/br;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-static {v1}, Lcom/yingyonghui/market/br;->a(Lcom/yingyonghui/market/br;)Lcom/yingyonghui/market/model/q;

    move-result-object v1

    iget-object v1, v1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/GlobalUtil;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-static {v0}, Lcom/yingyonghui/market/br;->d(Lcom/yingyonghui/market/br;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 395
    :cond_6
    const-string v0, "transfer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 396
    const-string v0, "transfer_sd"

    invoke-static {v1, v0}, Lcom/yingyonghui/market/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 397
    invoke-static {}, Lcom/yingyonghui/market/util/GlobalUtil;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 398
    iget-object v0, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-static {v0}, Lcom/yingyonghui/market/br;->b(Lcom/yingyonghui/market/br;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09012c

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 403
    :cond_7
    iget-object v0, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-static {v0}, Lcom/yingyonghui/market/br;->b(Lcom/yingyonghui/market/br;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/ActivityListAppManage;

    iput-boolean v4, v0, Lcom/yingyonghui/market/ActivityListAppManage;->c:Z

    .line 404
    iget-object v0, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-static {v0}, Lcom/yingyonghui/market/br;->b(Lcom/yingyonghui/market/br;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-static {v1}, Lcom/yingyonghui/market/br;->a(Lcom/yingyonghui/market/br;)Lcom/yingyonghui/market/model/q;

    move-result-object v1

    iget-object v1, v1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/GlobalUtil;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-static {v0}, Lcom/yingyonghui/market/br;->b(Lcom/yingyonghui/market/br;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "manageTransfer"

    iget-object v2, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-static {v2}, Lcom/yingyonghui/market/br;->c(Lcom/yingyonghui/market/br;)Lcom/yingyonghui/market/log/m;

    move-result-object v2

    iget-object v4, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-static {v4}, Lcom/yingyonghui/market/br;->a(Lcom/yingyonghui/market/br;)Lcom/yingyonghui/market/model/q;

    move-result-object v4

    iget-object v4, v4, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yingyonghui/market/log/m;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 406
    :cond_8
    const-string v0, "ignore"

    invoke-static {v1, v0}, Lcom/yingyonghui/market/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 407
    iget-object v0, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    iget-object v1, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-static {v1}, Lcom/yingyonghui/market/br;->a(Lcom/yingyonghui/market/br;)Lcom/yingyonghui/market/model/q;

    move-result-object v1

    iget-object v1, v1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/yingyonghui/market/br;->a(Lcom/yingyonghui/market/br;Ljava/lang/String;Z)V

    .line 408
    iget-object v0, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-static {v0}, Lcom/yingyonghui/market/br;->b(Lcom/yingyonghui/market/br;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "manageIgnoreUpdate"

    iget-object v2, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-static {v2}, Lcom/yingyonghui/market/br;->c(Lcom/yingyonghui/market/br;)Lcom/yingyonghui/market/log/m;

    move-result-object v2

    iget-object v4, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-static {v4}, Lcom/yingyonghui/market/br;->a(Lcom/yingyonghui/market/br;)Lcom/yingyonghui/market/model/q;

    move-result-object v4

    iget v4, v4, Lcom/yingyonghui/market/model/q;->e:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yingyonghui/market/log/m;II)V

    goto/16 :goto_0

    .line 409
    :cond_9
    const-string v0, "unignore"

    invoke-static {v1, v0}, Lcom/yingyonghui/market/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    iget-object v1, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-static {v1}, Lcom/yingyonghui/market/br;->a(Lcom/yingyonghui/market/br;)Lcom/yingyonghui/market/model/q;

    move-result-object v1

    iget-object v1, v1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v0, v1, v5}, Lcom/yingyonghui/market/br;->a(Lcom/yingyonghui/market/br;Ljava/lang/String;Z)V

    .line 411
    iget-object v0, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-static {v0}, Lcom/yingyonghui/market/br;->b(Lcom/yingyonghui/market/br;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "manageIgnoreCancel"

    iget-object v2, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-static {v2}, Lcom/yingyonghui/market/br;->c(Lcom/yingyonghui/market/br;)Lcom/yingyonghui/market/log/m;

    move-result-object v2

    iget-object v4, p0, Lcom/yingyonghui/market/fi;->a:Lcom/yingyonghui/market/br;

    invoke-static {v4}, Lcom/yingyonghui/market/br;->a(Lcom/yingyonghui/market/br;)Lcom/yingyonghui/market/model/q;

    move-result-object v4

    iget v4, v4, Lcom/yingyonghui/market/model/q;->e:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yingyonghui/market/log/m;II)V

    goto/16 :goto_0
.end method
