.class final Lcom/yingyonghui/market/cg;
.super Landroid/os/Handler;
.source "HttpServiceSupportForActivity.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/HttpServiceSupportForActivity;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/HttpServiceSupportForActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/yingyonghui/market/cg;->a:Lcom/yingyonghui/market/HttpServiceSupportForActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 37
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 46
    :goto_0
    return-void

    .line 39
    :pswitch_0
    iget-object v1, p0, Lcom/yingyonghui/market/cg;->a:Lcom/yingyonghui/market/HttpServiceSupportForActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v1, v0}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->a(Lcom/yingyonghui/market/HttpServiceSupportForActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 40
    iget-object v0, p0, Lcom/yingyonghui/market/cg;->a:Lcom/yingyonghui/market/HttpServiceSupportForActivity;

    invoke-virtual {v0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->b(Landroid/os/Message;)V

    goto :goto_0

    .line 43
    :pswitch_1
    iget-object v0, p0, Lcom/yingyonghui/market/cg;->a:Lcom/yingyonghui/market/HttpServiceSupportForActivity;

    invoke-virtual {v0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->a(Landroid/os/Message;)V

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
