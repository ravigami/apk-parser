.class final Lcom/yingyonghui/market/g;
.super Ljava/lang/Object;
.source "AdapterManagerListApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/es;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/es;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 303
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 304
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 308
    aget-object v1, v0, v6

    invoke-static {v1}, Lcom/yingyonghui/market/util/m;->a(Ljava/lang/String;)I

    move-result v3

    .line 309
    aget-object v1, v0, v5

    .line 311
    iget-object v2, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    iget-object v0, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    invoke-virtual {v0, v3}, Lcom/yingyonghui/market/es;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    invoke-static {v2, v0}, Lcom/yingyonghui/market/es;->a(Lcom/yingyonghui/market/es;Lcom/yingyonghui/market/model/q;)Lcom/yingyonghui/market/model/q;

    .line 313
    iget-object v0, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    invoke-static {v0}, Lcom/yingyonghui/market/es;->a(Lcom/yingyonghui/market/es;)Lcom/yingyonghui/market/model/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    invoke-static {v0}, Lcom/yingyonghui/market/es;->a(Lcom/yingyonghui/market/es;)Lcom/yingyonghui/market/model/q;

    move-result-object v0

    iget-boolean v0, v0, Lcom/yingyonghui/market/model/q;->w:Z

    if-nez v0, :cond_0

    .line 317
    const-string v0, "update"

    invoke-static {v1, v0}, Lcom/yingyonghui/market/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 318
    iget-object v0, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    invoke-static {v0}, Lcom/yingyonghui/market/es;->b(Lcom/yingyonghui/market/es;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    invoke-static {v1}, Lcom/yingyonghui/market/es;->a(Lcom/yingyonghui/market/es;)Lcom/yingyonghui/market/model/q;

    move-result-object v1

    iget-object v1, v1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yingyonghui/market/provider/k;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/yingyonghui/market/provider/k;

    move-result-object v1

    .line 320
    if-eqz v1, :cond_4

    .line 321
    invoke-virtual {v1}, Lcom/yingyonghui/market/provider/k;->d()Lcom/yingyonghui/market/provider/m;

    move-result-object v2

    .line 322
    sget-object v4, Lcom/yingyonghui/market/provider/m;->d:Lcom/yingyonghui/market/provider/m;

    if-eq v2, v4, :cond_2

    sget-object v4, Lcom/yingyonghui/market/provider/m;->j:Lcom/yingyonghui/market/provider/m;

    if-ne v2, v4, :cond_4

    .line 323
    :cond_2
    invoke-virtual {v1, v0}, Lcom/yingyonghui/market/provider/k;->a(Landroid/content/ContentResolver;)Ljava/io/File;

    move-result-object v2

    .line 325
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 326
    iget-object v0, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    invoke-static {v0}, Lcom/yingyonghui/market/es;->b(Lcom/yingyonghui/market/es;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    invoke-static {v1}, Lcom/yingyonghui/market/es;->a(Lcom/yingyonghui/market/es;)Lcom/yingyonghui/market/model/q;

    move-result-object v1

    iget-object v1, v1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/GlobalUtil;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_3
    invoke-virtual {v1}, Lcom/yingyonghui/market/provider/k;->d()Lcom/yingyonghui/market/provider/m;

    move-result-object v2

    sget-object v4, Lcom/yingyonghui/market/provider/m;->j:Lcom/yingyonghui/market/provider/m;

    if-ne v2, v4, :cond_5

    .line 330
    sget-object v2, Lcom/yingyonghui/market/provider/m;->l:Lcom/yingyonghui/market/provider/m;

    invoke-virtual {v1, v2}, Lcom/yingyonghui/market/provider/k;->a(Lcom/yingyonghui/market/provider/m;)V

    .line 334
    :goto_1
    invoke-virtual {v1, v0}, Lcom/yingyonghui/market/provider/k;->b(Landroid/content/ContentResolver;)V

    .line 339
    :cond_4
    iget-object v0, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    invoke-static {v0}, Lcom/yingyonghui/market/es;->a(Lcom/yingyonghui/market/es;)Lcom/yingyonghui/market/model/q;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Lcom/yingyonghui/market/model/q;->n:I

    .line 340
    iget-object v0, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    invoke-static {v0}, Lcom/yingyonghui/market/es;->a(Lcom/yingyonghui/market/es;)Lcom/yingyonghui/market/model/q;

    move-result-object v0

    iput-boolean v5, v0, Lcom/yingyonghui/market/model/q;->O:Z

    .line 341
    new-instance v0, Lcom/yingyonghui/market/w;

    iget-object v1, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    invoke-direct {v0, v1}, Lcom/yingyonghui/market/w;-><init>(Lcom/yingyonghui/market/es;)V

    new-array v1, v5, [Lcom/yingyonghui/market/model/q;

    iget-object v2, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    invoke-static {v2}, Lcom/yingyonghui/market/es;->a(Lcom/yingyonghui/market/es;)Lcom/yingyonghui/market/model/q;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/w;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 343
    iget-object v0, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    invoke-static {v0}, Lcom/yingyonghui/market/es;->b(Lcom/yingyonghui/market/es;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    invoke-static {v1}, Lcom/yingyonghui/market/es;->c(Lcom/yingyonghui/market/es;)Lcom/yingyonghui/market/log/m;

    move-result-object v1

    const-string v2, ""

    iget-object v4, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    invoke-static {v4}, Lcom/yingyonghui/market/es;->a(Lcom/yingyonghui/market/es;)Lcom/yingyonghui/market/model/q;

    move-result-object v4

    iget v4, v4, Lcom/yingyonghui/market/model/q;->e:I

    const-string v5, "update"

    invoke-static/range {v0 .. v5}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 332
    :cond_5
    sget-object v2, Lcom/yingyonghui/market/provider/m;->g:Lcom/yingyonghui/market/provider/m;

    invoke-virtual {v1, v2}, Lcom/yingyonghui/market/provider/k;->a(Lcom/yingyonghui/market/provider/m;)V

    goto :goto_1

    .line 344
    :cond_6
    const-string v0, "install"

    invoke-static {v1, v0}, Lcom/yingyonghui/market/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 345
    iget-object v0, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    invoke-static {v0}, Lcom/yingyonghui/market/es;->b(Lcom/yingyonghui/market/es;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    invoke-static {v1}, Lcom/yingyonghui/market/es;->a(Lcom/yingyonghui/market/es;)Lcom/yingyonghui/market/model/q;

    move-result-object v1

    iget-object v1, v1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/GlobalUtil;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    invoke-static {v0}, Lcom/yingyonghui/market/es;->d(Lcom/yingyonghui/market/es;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 347
    :cond_7
    const-string v0, "transfer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 348
    const-string v0, "transfer_sd"

    invoke-static {v1, v0}, Lcom/yingyonghui/market/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 349
    invoke-static {}, Lcom/yingyonghui/market/util/GlobalUtil;->a()Z

    move-result v0

    if-nez v0, :cond_8

    .line 350
    iget-object v0, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    invoke-static {v0}, Lcom/yingyonghui/market/es;->b(Lcom/yingyonghui/market/es;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09012c

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 355
    :cond_8
    iget-object v0, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    invoke-static {v0}, Lcom/yingyonghui/market/es;->b(Lcom/yingyonghui/market/es;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/ActivityListAppManage;

    iput-boolean v5, v0, Lcom/yingyonghui/market/ActivityListAppManage;->c:Z

    .line 356
    iget-object v0, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    invoke-static {v0}, Lcom/yingyonghui/market/es;->b(Lcom/yingyonghui/market/es;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    invoke-static {v1}, Lcom/yingyonghui/market/es;->a(Lcom/yingyonghui/market/es;)Lcom/yingyonghui/market/model/q;

    move-result-object v1

    iget-object v1, v1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/GlobalUtil;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    invoke-static {v0}, Lcom/yingyonghui/market/es;->b(Lcom/yingyonghui/market/es;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "manageTransfer"

    iget-object v2, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    invoke-static {v2}, Lcom/yingyonghui/market/es;->c(Lcom/yingyonghui/market/es;)Lcom/yingyonghui/market/log/m;

    move-result-object v2

    iget-object v4, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    invoke-static {v4}, Lcom/yingyonghui/market/es;->a(Lcom/yingyonghui/market/es;)Lcom/yingyonghui/market/model/q;

    move-result-object v4

    iget-object v4, v4, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yingyonghui/market/log/m;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 358
    :cond_9
    const-string v0, "ignore"

    invoke-static {v1, v0}, Lcom/yingyonghui/market/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 359
    iget-object v0, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    iget-object v1, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    invoke-static {v1}, Lcom/yingyonghui/market/es;->a(Lcom/yingyonghui/market/es;)Lcom/yingyonghui/market/model/q;

    move-result-object v1

    iget-object v1, v1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v0, v1, v5}, Lcom/yingyonghui/market/es;->a(Lcom/yingyonghui/market/es;Ljava/lang/String;Z)V

    .line 360
    iget-object v0, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    invoke-static {v0}, Lcom/yingyonghui/market/es;->b(Lcom/yingyonghui/market/es;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "manageIgnoreUpdate"

    iget-object v2, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    invoke-static {v2}, Lcom/yingyonghui/market/es;->c(Lcom/yingyonghui/market/es;)Lcom/yingyonghui/market/log/m;

    move-result-object v2

    iget-object v4, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    invoke-static {v4}, Lcom/yingyonghui/market/es;->a(Lcom/yingyonghui/market/es;)Lcom/yingyonghui/market/model/q;

    move-result-object v4

    iget v4, v4, Lcom/yingyonghui/market/model/q;->e:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yingyonghui/market/log/m;II)V

    goto/16 :goto_0

    .line 361
    :cond_a
    const-string v0, "unignore"

    invoke-static {v1, v0}, Lcom/yingyonghui/market/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    iget-object v1, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    invoke-static {v1}, Lcom/yingyonghui/market/es;->a(Lcom/yingyonghui/market/es;)Lcom/yingyonghui/market/model/q;

    move-result-object v1

    iget-object v1, v1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v0, v1, v6}, Lcom/yingyonghui/market/es;->a(Lcom/yingyonghui/market/es;Ljava/lang/String;Z)V

    .line 363
    iget-object v0, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    invoke-static {v0}, Lcom/yingyonghui/market/es;->b(Lcom/yingyonghui/market/es;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "manageIgnoreCancel"

    iget-object v2, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    invoke-static {v2}, Lcom/yingyonghui/market/es;->c(Lcom/yingyonghui/market/es;)Lcom/yingyonghui/market/log/m;

    move-result-object v2

    iget-object v4, p0, Lcom/yingyonghui/market/g;->a:Lcom/yingyonghui/market/es;

    invoke-static {v4}, Lcom/yingyonghui/market/es;->a(Lcom/yingyonghui/market/es;)Lcom/yingyonghui/market/model/q;

    move-result-object v4

    iget v4, v4, Lcom/yingyonghui/market/model/q;->e:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yingyonghui/market/log/m;II)V

    goto/16 :goto_0
.end method
