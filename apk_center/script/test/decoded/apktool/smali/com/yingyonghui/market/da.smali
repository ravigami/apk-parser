.class final Lcom/yingyonghui/market/da;
.super Landroid/os/Handler;
.source "ActivityListApp.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityListApp;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityListApp;)V
    .locals 0
    .parameter

    .prologue
    .line 898
    iput-object p1, p0, Lcom/yingyonghui/market/da;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, 0x12c

    const/16 v2, 0x78

    const/16 v1, 0x64

    .line 901
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 929
    :cond_0
    :goto_0
    return-void

    .line 907
    :sswitch_0
    iget-object v0, p0, Lcom/yingyonghui/market/da;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListApp;->e(Lcom/yingyonghui/market/ActivityListApp;)Lcom/yingyonghui/market/br;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/yingyonghui/market/da;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListApp;->n(Lcom/yingyonghui/market/ActivityListApp;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 909
    iget-object v0, p0, Lcom/yingyonghui/market/da;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListApp;->e(Lcom/yingyonghui/market/ActivityListApp;)Lcom/yingyonghui/market/br;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yingyonghui/market/br;->notifyDataSetChanged()V

    goto :goto_0

    .line 911
    :cond_1
    invoke-virtual {p0, v1}, Lcom/yingyonghui/market/da;->removeMessages(I)V

    .line 912
    invoke-virtual {p0, v1}, Lcom/yingyonghui/market/da;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Lcom/yingyonghui/market/da;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 917
    :sswitch_1
    iget-object v0, p0, Lcom/yingyonghui/market/da;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListApp;->n(Lcom/yingyonghui/market/ActivityListApp;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 918
    iget-object v0, p0, Lcom/yingyonghui/market/da;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListApp;->l(Lcom/yingyonghui/market/ActivityListApp;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 919
    :try_start_0
    iget-object v0, p0, Lcom/yingyonghui/market/da;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListApp;->l(Lcom/yingyonghui/market/ActivityListApp;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 920
    iget-object v0, p0, Lcom/yingyonghui/market/da;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListApp;->l(Lcom/yingyonghui/market/ActivityListApp;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 922
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 924
    :cond_3
    invoke-virtual {p0, v2}, Lcom/yingyonghui/market/da;->removeMessages(I)V

    .line 925
    invoke-virtual {p0, v2}, Lcom/yingyonghui/market/da;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Lcom/yingyonghui/market/da;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 901
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x78 -> :sswitch_1
    .end sparse-switch
.end method
