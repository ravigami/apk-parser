.class final Lcom/yingyonghui/market/ck;
.super Landroid/os/Handler;
.source "HttpServiceSupportForTabActivity.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/yingyonghui/market/ck;->a:Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 42
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 51
    :goto_0
    return-void

    .line 44
    :pswitch_0
    iget-object v1, p0, Lcom/yingyonghui/market/ck;->a:Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v1, v0}, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->a(Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 45
    iget-object v0, p0, Lcom/yingyonghui/market/ck;->a:Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;

    invoke-virtual {v0}, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->a()V

    goto :goto_0

    .line 48
    :pswitch_1
    iget-object v0, p0, Lcom/yingyonghui/market/ck;->a:Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;

    invoke-virtual {v0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->a(Landroid/os/Message;)V

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
