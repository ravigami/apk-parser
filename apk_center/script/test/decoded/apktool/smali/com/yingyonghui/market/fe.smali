.class final Lcom/yingyonghui/market/fe;
.super Landroid/os/Handler;
.source "HttpServiceSupportForListActivity.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/HttpServiceSupportForListActivity;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/HttpServiceSupportForListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/yingyonghui/market/fe;->a:Lcom/yingyonghui/market/HttpServiceSupportForListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 33
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 42
    :goto_0
    return-void

    .line 35
    :pswitch_0
    iget-object v1, p0, Lcom/yingyonghui/market/fe;->a:Lcom/yingyonghui/market/HttpServiceSupportForListActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v1, v0}, Lcom/yingyonghui/market/HttpServiceSupportForListActivity;->a(Lcom/yingyonghui/market/HttpServiceSupportForListActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 36
    iget-object v0, p0, Lcom/yingyonghui/market/fe;->a:Lcom/yingyonghui/market/HttpServiceSupportForListActivity;

    invoke-virtual {v0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForListActivity;->b(Landroid/os/Message;)V

    goto :goto_0

    .line 39
    :pswitch_1
    iget-object v0, p0, Lcom/yingyonghui/market/fe;->a:Lcom/yingyonghui/market/HttpServiceSupportForListActivity;

    invoke-virtual {v0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForListActivity;->a(Landroid/os/Message;)V

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
