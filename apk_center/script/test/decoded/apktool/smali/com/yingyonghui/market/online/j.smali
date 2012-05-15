.class final Lcom/yingyonghui/market/online/j;
.super Landroid/os/Handler;
.source "HttpManager.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/online/c;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/online/c;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/yingyonghui/market/online/j;->a:Lcom/yingyonghui/market/online/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 99
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/yingyonghui/market/online/j;->a:Lcom/yingyonghui/market/online/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/yingyonghui/market/online/b;

    invoke-static {v1, v0}, Lcom/yingyonghui/market/online/c;->a(Lcom/yingyonghui/market/online/c;Lcom/yingyonghui/market/online/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/online/j;->a:Lcom/yingyonghui/market/online/c;

    iget-object v0, v0, Lcom/yingyonghui/market/online/c;->a:Lcom/yingyonghui/market/online/l;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yingyonghui/market/online/j;->a:Lcom/yingyonghui/market/online/c;

    invoke-static {v2}, Lcom/yingyonghui/market/online/c;->a(Lcom/yingyonghui/market/online/c;)I

    move-result v2

    shl-int/2addr v1, v2

    xor-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/yingyonghui/market/online/l;->a(Lcom/yingyonghui/market/online/l;I)I

    .line 111
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
