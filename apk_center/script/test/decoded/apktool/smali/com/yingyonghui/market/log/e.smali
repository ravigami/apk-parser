.class final Lcom/yingyonghui/market/log/e;
.super Landroid/os/Handler;
.source "SendLogThread.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/log/f;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/log/f;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/yingyonghui/market/log/e;->a:Lcom/yingyonghui/market/log/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 45
    :goto_0
    return-void

    .line 39
    :pswitch_0
    iget-object v0, p0, Lcom/yingyonghui/market/log/e;->a:Lcom/yingyonghui/market/log/f;

    invoke-virtual {v0, p1}, Lcom/yingyonghui/market/log/f;->b(Landroid/os/Message;)V

    goto :goto_0

    .line 42
    :pswitch_1
    iget-object v0, p0, Lcom/yingyonghui/market/log/e;->a:Lcom/yingyonghui/market/log/f;

    invoke-virtual {v0, p1}, Lcom/yingyonghui/market/log/f;->a(Landroid/os/Message;)V

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
