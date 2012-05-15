.class final Lcom/yingyonghui/market/f;
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
    .line 368
    iput-object p1, p0, Lcom/yingyonghui/market/f;->a:Lcom/yingyonghui/market/es;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 372
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 373
    if-nez v0, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    iget-object v1, p0, Lcom/yingyonghui/market/f;->a:Lcom/yingyonghui/market/es;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yingyonghui/market/es;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yingyonghui/market/model/q;

    .line 378
    if-eqz v1, :cond_0

    .line 382
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 408
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v1, Lcom/yingyonghui/market/model/q;->e:I

    iget-object v4, v1, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    iget-object v5, v1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v2, p0, Lcom/yingyonghui/market/f;->a:Lcom/yingyonghui/market/es;

    invoke-static {v2}, Lcom/yingyonghui/market/es;->b(Lcom/yingyonghui/market/es;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/yingyonghui/market/f;->a:Lcom/yingyonghui/market/es;

    invoke-static {v3}, Lcom/yingyonghui/market/es;->c(Lcom/yingyonghui/market/es;)Lcom/yingyonghui/market/log/m;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, v1, Lcom/yingyonghui/market/model/q;->e:I

    invoke-static {v2, v3, v4, v0, v1}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/lang/String;II)V

    goto :goto_0

    .line 385
    :sswitch_1
    :try_start_0
    iget-object v2, p0, Lcom/yingyonghui/market/f;->a:Lcom/yingyonghui/market/es;

    invoke-static {v2}, Lcom/yingyonghui/market/es;->e(Lcom/yingyonghui/market/es;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/yingyonghui/market/util/GlobalUtil;->c(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 386
    if-eqz v2, :cond_2

    .line 387
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 389
    :cond_2
    iget-object v2, p0, Lcom/yingyonghui/market/f;->a:Lcom/yingyonghui/market/es;

    invoke-static {v2}, Lcom/yingyonghui/market/es;->b(Lcom/yingyonghui/market/es;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "manageLaunch"

    iget-object v4, p0, Lcom/yingyonghui/market/f;->a:Lcom/yingyonghui/market/es;

    invoke-static {v4}, Lcom/yingyonghui/market/es;->c(Lcom/yingyonghui/market/es;)Lcom/yingyonghui/market/log/m;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, v1, Lcom/yingyonghui/market/model/q;->e:I

    invoke-static {v2, v3, v4, v0, v1}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yingyonghui/market/log/m;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 392
    :catch_0
    move-exception v0

    goto :goto_0

    .line 394
    :sswitch_2
    invoke-static {}, Lcom/yingyonghui/market/util/GlobalUtil;->a()Z

    move-result v2

    if-nez v2, :cond_3

    .line 395
    iget-object v0, p0, Lcom/yingyonghui/market/f;->a:Lcom/yingyonghui/market/es;

    invoke-static {v0}, Lcom/yingyonghui/market/es;->b(Lcom/yingyonghui/market/es;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09012c

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 400
    :cond_3
    iget-object v2, p0, Lcom/yingyonghui/market/f;->a:Lcom/yingyonghui/market/es;

    invoke-static {v2}, Lcom/yingyonghui/market/es;->b(Lcom/yingyonghui/market/es;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/yingyonghui/market/util/GlobalUtil;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 401
    iget-object v2, p0, Lcom/yingyonghui/market/f;->a:Lcom/yingyonghui/market/es;

    invoke-static {v2}, Lcom/yingyonghui/market/es;->b(Lcom/yingyonghui/market/es;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "manageTransfer"

    iget-object v4, p0, Lcom/yingyonghui/market/f;->a:Lcom/yingyonghui/market/es;

    invoke-static {v4}, Lcom/yingyonghui/market/es;->c(Lcom/yingyonghui/market/es;)Lcom/yingyonghui/market/log/m;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, v1, Lcom/yingyonghui/market/model/q;->e:I

    invoke-static {v2, v3, v4, v0, v1}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yingyonghui/market/log/m;II)V

    goto/16 :goto_0

    .line 404
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/yingyonghui/market/util/GlobalUtil;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 405
    iget-object v2, p0, Lcom/yingyonghui/market/f;->a:Lcom/yingyonghui/market/es;

    invoke-static {v2}, Lcom/yingyonghui/market/es;->b(Lcom/yingyonghui/market/es;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "manageUninstall"

    iget-object v4, p0, Lcom/yingyonghui/market/f;->a:Lcom/yingyonghui/market/es;

    invoke-static {v4}, Lcom/yingyonghui/market/es;->c(Lcom/yingyonghui/market/es;)Lcom/yingyonghui/market/log/m;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, v1, Lcom/yingyonghui/market/model/q;->e:I

    invoke-static {v2, v3, v4, v0, v1}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yingyonghui/market/log/m;II)V

    goto/16 :goto_0

    .line 382
    :sswitch_data_0
    .sparse-switch
        0x7f0b0041 -> :sswitch_0
        0x7f0b0078 -> :sswitch_1
        0x7f0b0079 -> :sswitch_2
        0x7f0b007a -> :sswitch_3
    .end sparse-switch
.end method
