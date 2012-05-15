.class final Lcom/yingyonghui/market/online/p;
.super Landroid/os/Handler;
.source "WeeklyService.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/online/WeeklyService;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/online/WeeklyService;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/yingyonghui/market/online/p;->a:Lcom/yingyonghui/market/online/WeeklyService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    .line 21
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 22
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/yingyonghui/market/online/b;

    .line 24
    iget v1, v0, Lcom/yingyonghui/market/online/b;->c:I

    packed-switch v1, :pswitch_data_0

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 28
    :pswitch_0
    iget-object v0, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/yingyonghui/market/online/e;->c(Ljava/lang/String;)Lcom/yingyonghui/market/model/s;

    move-result-object v0

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lcom/yingyonghui/market/model/s;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/yingyonghui/market/model/s;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/yingyonghui/market/model/s;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    if-eqz v0, :cond_2

    .line 37
    iget-object v1, p0, Lcom/yingyonghui/market/online/p;->a:Lcom/yingyonghui/market/online/WeeklyService;

    const-string v2, "weekly_id"

    invoke-static {v1, v2}, Lcom/yingyonghui/market/util/u;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 40
    iget v2, v0, Lcom/yingyonghui/market/model/s;->a:I

    if-le v2, v1, :cond_2

    .line 41
    if-eqz v1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/yingyonghui/market/online/p;->a:Lcom/yingyonghui/market/online/WeeklyService;

    invoke-static {v1}, Lcom/yingyonghui/market/online/f;->a(Landroid/content/Context;)Lcom/yingyonghui/market/online/f;

    move-result-object v1

    iget v2, v0, Lcom/yingyonghui/market/model/s;->a:I

    iget-object v3, v0, Lcom/yingyonghui/market/model/s;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/yingyonghui/market/model/s;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/yingyonghui/market/online/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/yingyonghui/market/online/p;->a:Lcom/yingyonghui/market/online/WeeklyService;

    const-string v2, "weekly_id"

    iget v0, v0, Lcom/yingyonghui/market/model/s;->a:I

    invoke-static {v1, v2, v0}, Lcom/yingyonghui/market/util/u;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/yingyonghui/market/online/p;->a:Lcom/yingyonghui/market/online/WeeklyService;

    invoke-virtual {v0}, Lcom/yingyonghui/market/online/WeeklyService;->stopSelf()V

    goto :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x399
        :pswitch_0
    .end packed-switch
.end method
