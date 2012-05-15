.class final Lcom/yingyonghui/market/ac;
.super Landroid/os/Handler;
.source "ActivityListAppManage.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityListAppManage;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityListAppManage;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/yingyonghui/market/ac;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 85
    :pswitch_0
    iget-object v0, p0, Lcom/yingyonghui/market/ac;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    new-instance v1, Lcom/yingyonghui/market/es;

    iget-object v2, p0, Lcom/yingyonghui/market/ac;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    iget-object v3, p0, Lcom/yingyonghui/market/ac;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-static {v3}, Lcom/yingyonghui/market/ActivityListAppManage;->a(Lcom/yingyonghui/market/ActivityListAppManage;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/yingyonghui/market/es;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/yingyonghui/market/ActivityListAppManage;->a(Lcom/yingyonghui/market/ActivityListAppManage;Lcom/yingyonghui/market/es;)Lcom/yingyonghui/market/es;

    .line 86
    iget-object v0, p0, Lcom/yingyonghui/market/ac;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppManage;->b(Lcom/yingyonghui/market/ActivityListAppManage;)Lcom/yingyonghui/market/es;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/yingyonghui/market/es;->setNotifyOnChange(Z)V

    .line 88
    new-instance v0, Lcom/yingyonghui/market/dg;

    iget-object v1, p0, Lcom/yingyonghui/market/ac;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    iget-object v2, p0, Lcom/yingyonghui/market/ac;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityListAppManage;->b(Lcom/yingyonghui/market/ActivityListAppManage;)Lcom/yingyonghui/market/es;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yingyonghui/market/dg;-><init>(Lcom/yingyonghui/market/ActivityListAppManage;Lcom/yingyonghui/market/es;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yingyonghui/market/ac;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityListAppManage;->a(Lcom/yingyonghui/market/ActivityListAppManage;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/dg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 91
    iget-object v0, p0, Lcom/yingyonghui/market/ac;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    iget-object v0, v0, Lcom/yingyonghui/market/ActivityListAppManage;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yingyonghui/market/ac;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityListAppManage;->b(Lcom/yingyonghui/market/ActivityListAppManage;)Lcom/yingyonghui/market/es;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    iget-object v0, p0, Lcom/yingyonghui/market/ac;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    iget-object v0, v0, Lcom/yingyonghui/market/ActivityListAppManage;->d:Landroid/widget/ListView;

    invoke-static {}, Lcom/yingyonghui/market/ActivityListAppManage;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 93
    iget-object v0, p0, Lcom/yingyonghui/market/ac;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppManage;->b(Lcom/yingyonghui/market/ActivityListAppManage;)Lcom/yingyonghui/market/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yingyonghui/market/es;->notifyDataSetChanged()V

    .line 94
    iget-object v0, p0, Lcom/yingyonghui/market/ac;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-virtual {v0, v4}, Lcom/yingyonghui/market/ActivityListAppManage;->a(Z)V

    .line 96
    iget-object v0, p0, Lcom/yingyonghui/market/ac;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityListAppManage;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ac;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-virtual {v1}, Lcom/yingyonghui/market/ActivityListAppManage;->f()Lcom/yingyonghui/market/log/m;

    move-result-object v1

    iget-object v2, p0, Lcom/yingyonghui/market/ac;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityListAppManage;->a(Lcom/yingyonghui/market/ActivityListAppManage;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/yingyonghui/market/ac;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-static {v3}, Lcom/yingyonghui/market/ActivityListAppManage;->a(Lcom/yingyonghui/market/ActivityListAppManage;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;ILjava/util/List;)V

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method
