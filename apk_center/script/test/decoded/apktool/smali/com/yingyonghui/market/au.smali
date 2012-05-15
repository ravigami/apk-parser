.class final Lcom/yingyonghui/market/au;
.super Landroid/os/Handler;
.source "ActivitySplash.java"


# instance fields
.field final synthetic a:Lcom/yingyonghui/market/ActivitySplash;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivitySplash;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/yingyonghui/market/au;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v5, 0x3e8

    const/4 v4, 0x2

    const/4 v3, 0x4

    .line 216
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 275
    :goto_0
    return-void

    .line 218
    :pswitch_0
    iget-object v0, p0, Lcom/yingyonghui/market/au;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {v0}, Lcom/yingyonghui/market/util/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/yingyonghui/market/au;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivitySplash;->a(Lcom/yingyonghui/market/ActivitySplash;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 220
    iget-object v0, p0, Lcom/yingyonghui/market/au;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivitySplash;->b(Lcom/yingyonghui/market/ActivitySplash;)Z

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/au;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivitySplash;->c(Lcom/yingyonghui/market/ActivitySplash;)V

    goto :goto_0

    .line 226
    :pswitch_1
    new-instance v0, Lcom/yingyonghui/market/cq;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/cq;-><init>(Lcom/yingyonghui/market/au;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/cq;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 237
    iget-object v0, p0, Lcom/yingyonghui/market/au;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivitySplash;->d(Lcom/yingyonghui/market/ActivitySplash;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yingyonghui/market/au;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivitySplash;->e(Lcom/yingyonghui/market/ActivitySplash;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/yingyonghui/market/au;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/ActivitySplash;->a(Lcom/yingyonghui/market/ActivitySplash;J)J

    .line 239
    iget-object v0, p0, Lcom/yingyonghui/market/au;->a:Lcom/yingyonghui/market/ActivitySplash;

    iget-object v0, v0, Lcom/yingyonghui/market/ActivitySplash;->a:Lcom/yingyonghui/market/online/e;

    iget-object v1, p0, Lcom/yingyonghui/market/au;->a:Lcom/yingyonghui/market/ActivitySplash;

    iget-object v1, v1, Lcom/yingyonghui/market/ActivitySplash;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/online/e;->a(Landroid/os/Handler;)V

    .line 241
    iget-object v0, p0, Lcom/yingyonghui/market/au;->a:Lcom/yingyonghui/market/ActivitySplash;

    const-string v1, "last_launch_time"

    iget-object v2, p0, Lcom/yingyonghui/market/au;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivitySplash;->f(Lcom/yingyonghui/market/ActivitySplash;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/yingyonghui/market/util/l;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 242
    iget-object v0, p0, Lcom/yingyonghui/market/au;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivitySplash;->a(Lcom/yingyonghui/market/ActivitySplash;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/au;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivitySplash;->a(Lcom/yingyonghui/market/ActivitySplash;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 251
    :pswitch_2
    iget-object v0, p0, Lcom/yingyonghui/market/au;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivitySplash;->g(Lcom/yingyonghui/market/ActivitySplash;)I

    .line 252
    iget-object v0, p0, Lcom/yingyonghui/market/au;->a:Lcom/yingyonghui/market/ActivitySplash;

    iget-object v1, p0, Lcom/yingyonghui/market/au;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivitySplash;->h(Lcom/yingyonghui/market/ActivitySplash;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/yingyonghui/market/au;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivitySplash;->i(Lcom/yingyonghui/market/ActivitySplash;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/ActivitySplash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 253
    if-eqz v0, :cond_2

    .line 254
    iget-object v1, p0, Lcom/yingyonghui/market/au;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivitySplash;->j(Lcom/yingyonghui/market/ActivitySplash;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/yingyonghui/market/au;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivitySplash;->i(Lcom/yingyonghui/market/ActivitySplash;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/yingyonghui/market/au;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivitySplash;->i(Lcom/yingyonghui/market/ActivitySplash;)I

    move-result v0

    if-lt v0, v3, :cond_3

    .line 257
    iget-object v0, p0, Lcom/yingyonghui/market/au;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivitySplash;->k(Lcom/yingyonghui/market/ActivitySplash;)V

    goto/16 :goto_0

    .line 259
    :cond_3
    iget-object v0, p0, Lcom/yingyonghui/market/au;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivitySplash;->a(Lcom/yingyonghui/market/ActivitySplash;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 263
    :pswitch_3
    iget-object v0, p0, Lcom/yingyonghui/market/au;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivitySplash;->g(Lcom/yingyonghui/market/ActivitySplash;)I

    .line 264
    iget-object v0, p0, Lcom/yingyonghui/market/au;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivitySplash;->i(Lcom/yingyonghui/market/ActivitySplash;)I

    move-result v0

    if-le v0, v3, :cond_4

    .line 265
    iget-object v0, p0, Lcom/yingyonghui/market/au;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivitySplash;->k(Lcom/yingyonghui/market/ActivitySplash;)V

    goto/16 :goto_0

    .line 267
    :cond_4
    iget-object v0, p0, Lcom/yingyonghui/market/au;->a:Lcom/yingyonghui/market/ActivitySplash;

    iget-object v1, p0, Lcom/yingyonghui/market/au;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivitySplash;->h(Lcom/yingyonghui/market/ActivitySplash;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/yingyonghui/market/au;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivitySplash;->i(Lcom/yingyonghui/market/ActivitySplash;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/ActivitySplash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 268
    if-eqz v0, :cond_5

    .line 269
    iget-object v1, p0, Lcom/yingyonghui/market/au;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivitySplash;->j(Lcom/yingyonghui/market/ActivitySplash;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/yingyonghui/market/au;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivitySplash;->i(Lcom/yingyonghui/market/ActivitySplash;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 271
    :cond_5
    iget-object v0, p0, Lcom/yingyonghui/market/au;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivitySplash;->a(Lcom/yingyonghui/market/ActivitySplash;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 216
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
