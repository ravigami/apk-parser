.class final Lcom/yingyonghui/market/online/a;
.super Landroid/os/Handler;
.source "SyncService.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/online/SyncService;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/online/SyncService;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/yingyonghui/market/online/a;->a:Lcom/yingyonghui/market/online/SyncService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8

    .line 45
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 46
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/yingyonghui/market/online/b;

    .line 47
    iget v1, v0, Lcom/yingyonghui/market/online/b;->c:I

    packed-switch v1, :pswitch_data_0

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 54
    :pswitch_0
    iget-object v1, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 55
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    iget-object v2, p0, Lcom/yingyonghui/market/online/a;->a:Lcom/yingyonghui/market/online/SyncService;

    invoke-static {v2, v1}, Lcom/yingyonghui/market/online/e;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 57
    if-eqz v2, :cond_1

    .line 58
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yingyonghui/market/model/q;

    .line 59
    iget-object v4, p0, Lcom/yingyonghui/market/online/a;->a:Lcom/yingyonghui/market/online/SyncService;

    iget-object v2, v2, Lcom/yingyonghui/market/model/q;->f:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/yingyonghui/market/online/SyncService;->a(Lcom/yingyonghui/market/online/SyncService;Ljava/lang/String;)V

    goto :goto_1

    .line 63
    :cond_1
    iget-object v2, p0, Lcom/yingyonghui/market/online/a;->a:Lcom/yingyonghui/market/online/SyncService;

    iget-object v3, p0, Lcom/yingyonghui/market/online/a;->a:Lcom/yingyonghui/market/online/SyncService;

    invoke-static {v3}, Lcom/yingyonghui/market/online/SyncService;->a(Lcom/yingyonghui/market/online/SyncService;)[Ljava/lang/String;

    move-result-object v3

    iget v0, v0, Lcom/yingyonghui/market/online/b;->c:I

    aget-object v0, v3, v0

    invoke-static {v2, v0, v1}, Lcom/yingyonghui/market/online/SyncService;->a(Lcom/yingyonghui/market/online/SyncService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :pswitch_1
    iget-object v1, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 69
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    invoke-static {v1}, Lcom/yingyonghui/market/online/e;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 71
    if-eqz v2, :cond_2

    .line 72
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yingyonghui/market/model/g;

    .line 73
    iget-object v4, p0, Lcom/yingyonghui/market/online/a;->a:Lcom/yingyonghui/market/online/SyncService;

    iget-object v2, v2, Lcom/yingyonghui/market/model/g;->h:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/yingyonghui/market/online/SyncService;->a(Lcom/yingyonghui/market/online/SyncService;Ljava/lang/String;)V

    goto :goto_2

    .line 77
    :cond_2
    iget-object v2, p0, Lcom/yingyonghui/market/online/a;->a:Lcom/yingyonghui/market/online/SyncService;

    iget-object v3, p0, Lcom/yingyonghui/market/online/a;->a:Lcom/yingyonghui/market/online/SyncService;

    invoke-static {v3}, Lcom/yingyonghui/market/online/SyncService;->a(Lcom/yingyonghui/market/online/SyncService;)[Ljava/lang/String;

    move-result-object v3

    iget v0, v0, Lcom/yingyonghui/market/online/b;->c:I

    aget-object v0, v3, v0

    invoke-static {v2, v0, v1}, Lcom/yingyonghui/market/online/SyncService;->a(Lcom/yingyonghui/market/online/SyncService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :pswitch_2
    iget-object v1, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 85
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    iget v2, v0, Lcom/yingyonghui/market/online/b;->c:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_3

    .line 88
    const/16 v2, 0x1e

    invoke-static {v1, v2}, Lcom/yingyonghui/market/online/e;->b(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 95
    :goto_3
    if-eqz v2, :cond_5

    .line 96
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yingyonghui/market/model/p;

    .line 97
    iget-object v4, p0, Lcom/yingyonghui/market/online/a;->a:Lcom/yingyonghui/market/online/SyncService;

    iget-object v2, v2, Lcom/yingyonghui/market/model/p;->d:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/yingyonghui/market/online/SyncService;->a(Lcom/yingyonghui/market/online/SyncService;Ljava/lang/String;)V

    goto :goto_4

    .line 89
    :cond_3
    iget v2, v0, Lcom/yingyonghui/market/online/b;->c:I

    if-ne v2, v4, :cond_4

    .line 90
    const/16 v2, 0x28

    invoke-static {v1, v2}, Lcom/yingyonghui/market/online/e;->b(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_3

    .line 92
    :cond_4
    invoke-static {v1, v4}, Lcom/yingyonghui/market/online/e;->b(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_3

    .line 101
    :cond_5
    iget-object v2, p0, Lcom/yingyonghui/market/online/a;->a:Lcom/yingyonghui/market/online/SyncService;

    iget-object v3, p0, Lcom/yingyonghui/market/online/a;->a:Lcom/yingyonghui/market/online/SyncService;

    invoke-static {v3}, Lcom/yingyonghui/market/online/SyncService;->a(Lcom/yingyonghui/market/online/SyncService;)[Ljava/lang/String;

    move-result-object v3

    iget v0, v0, Lcom/yingyonghui/market/online/b;->c:I

    aget-object v0, v3, v0

    invoke-static {v2, v0, v1}, Lcom/yingyonghui/market/online/SyncService;->a(Lcom/yingyonghui/market/online/SyncService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 106
    :pswitch_3
    iget-object v1, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 107
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/yingyonghui/market/online/a;->a:Lcom/yingyonghui/market/online/SyncService;

    iget-object v3, p0, Lcom/yingyonghui/market/online/a;->a:Lcom/yingyonghui/market/online/SyncService;

    invoke-static {v3}, Lcom/yingyonghui/market/online/SyncService;->a(Lcom/yingyonghui/market/online/SyncService;)[Ljava/lang/String;

    move-result-object v3

    iget v0, v0, Lcom/yingyonghui/market/online/b;->c:I

    aget-object v0, v3, v0

    invoke-static {v2, v0, v1}, Lcom/yingyonghui/market/online/SyncService;->a(Lcom/yingyonghui/market/online/SyncService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
