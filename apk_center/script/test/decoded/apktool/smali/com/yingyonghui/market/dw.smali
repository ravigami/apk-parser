.class final Lcom/yingyonghui/market/dw;
.super Landroid/os/Handler;
.source "ActivityDetailApp.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityDetailApp;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityDetailApp;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/yingyonghui/market/dw;->a:Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 143
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 155
    :goto_0
    return-void

    .line 145
    :sswitch_0
    iget-object v0, p0, Lcom/yingyonghui/market/dw;->a:Lcom/yingyonghui/market/ActivityDetailApp;

    iget-object v1, p0, Lcom/yingyonghui/market/dw;->a:Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Lcom/yingyonghui/market/ActivityDetailApp;)Lcom/yingyonghui/market/provider/k;

    move-result-object v1

    iget-object v2, p0, Lcom/yingyonghui/market/dw;->a:Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityDetailApp;->b(Lcom/yingyonghui/market/ActivityDetailApp;)Landroid/widget/ProgressBar;

    move-result-object v2

    iget-object v3, p0, Lcom/yingyonghui/market/dw;->a:Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-static {v3}, Lcom/yingyonghui/market/ActivityDetailApp;->c(Lcom/yingyonghui/market/ActivityDetailApp;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Lcom/yingyonghui/market/ActivityDetailApp;Lcom/yingyonghui/market/provider/k;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    goto :goto_0

    .line 149
    :sswitch_1
    iget-object v0, p0, Lcom/yingyonghui/market/dw;->a:Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailApp;->d(Lcom/yingyonghui/market/ActivityDetailApp;)V

    goto :goto_0

    .line 152
    :sswitch_2
    iget-object v0, p0, Lcom/yingyonghui/market/dw;->a:Lcom/yingyonghui/market/ActivityDetailApp;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Lcom/yingyonghui/market/ActivityDetailApp;Ljava/lang/Object;)V

    goto :goto_0

    .line 143
    :sswitch_data_0
    .sparse-switch
        0x6e -> :sswitch_0
        0xdc -> :sswitch_1
        0xde -> :sswitch_2
    .end sparse-switch
.end method
