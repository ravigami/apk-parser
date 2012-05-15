.class final Lcom/yingyonghui/market/m;
.super Landroid/os/Handler;
.source "ActivityListAppDownload.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityListAppDownload;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityListAppDownload;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 148
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 86
    :pswitch_1
    iget-object v0, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->a(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->a(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->b(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->a(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityListAppDownload;->b(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->c(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 94
    iget-object v0, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->a(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityListAppDownload;->c(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 97
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 98
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 99
    new-instance v0, Lcom/yingyonghui/market/df;

    iget-object v1, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    iget-object v2, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityListAppDownload;->d(Lcom/yingyonghui/market/ActivityListAppDownload;)Lcom/yingyonghui/market/ex;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yingyonghui/market/df;-><init>(Lcom/yingyonghui/market/ActivityListAppDownload;Landroid/widget/ArrayAdapter;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityListAppDownload;->a(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/df;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 102
    :cond_4
    iget-object v0, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-virtual {v0, v3}, Lcom/yingyonghui/market/ActivityListAppDownload;->a(Z)V

    .line 104
    iget-object v0, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    iget-object v0, v0, Lcom/yingyonghui/market/ActivityListAppDownload;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    iget v1, v1, Lcom/yingyonghui/market/ActivityListAppDownload;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 105
    iget-object v0, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->d(Lcom/yingyonghui/market/ActivityListAppDownload;)Lcom/yingyonghui/market/ex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yingyonghui/market/ex;->notifyDataSetChanged()V

    .line 107
    iget-object v0, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->d(Lcom/yingyonghui/market/ActivityListAppDownload;)Lcom/yingyonghui/market/ex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yingyonghui/market/ex;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 108
    iget-object v0, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->e(Lcom/yingyonghui/market/ActivityListAppDownload;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 110
    :cond_5
    iget-object v0, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->e(Lcom/yingyonghui/market/ActivityListAppDownload;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 114
    :pswitch_2
    iget-object v0, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->f(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    .line 116
    iget-object v1, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityListAppDownload;->b(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 117
    iget-object v1, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityListAppDownload;->b(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 119
    iget-object v0, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->a(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 120
    iget-object v0, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->a(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 123
    :cond_6
    iget-object v0, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->b(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 124
    iget-object v0, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->a(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityListAppDownload;->b(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 126
    :cond_7
    iget-object v0, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->c(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 127
    iget-object v0, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->a(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityListAppDownload;->c(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 130
    :cond_8
    iget-object v0, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->d(Lcom/yingyonghui/market/ActivityListAppDownload;)Lcom/yingyonghui/market/ex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yingyonghui/market/ex;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 134
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 135
    iget-object v0, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->d(Lcom/yingyonghui/market/ActivityListAppDownload;)Lcom/yingyonghui/market/ex;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/ex;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    .line 136
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityListAppDownload;->a(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityListAppDownload;->a(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 137
    iget-object v2, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityListAppDownload;->a(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 138
    iget-object v1, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityListAppDownload;->c(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->d(Lcom/yingyonghui/market/ActivityListAppDownload;)Lcom/yingyonghui/market/ex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yingyonghui/market/ex;->notifyDataSetChanged()V

    .line 140
    iget-object v0, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->d(Lcom/yingyonghui/market/ActivityListAppDownload;)Lcom/yingyonghui/market/ex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yingyonghui/market/ex;->getCount()I

    move-result v0

    if-lez v0, :cond_9

    .line 141
    iget-object v0, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->e(Lcom/yingyonghui/market/ActivityListAppDownload;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 143
    :cond_9
    iget-object v0, p0, Lcom/yingyonghui/market/m;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->e(Lcom/yingyonghui/market/ActivityListAppDownload;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
