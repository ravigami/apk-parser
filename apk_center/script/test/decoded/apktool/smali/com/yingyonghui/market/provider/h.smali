.class final Lcom/yingyonghui/market/provider/h;
.super Landroid/os/Handler;
.source "Accounts.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/provider/g;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/provider/g;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/yingyonghui/market/provider/h;->a:Lcom/yingyonghui/market/provider/g;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 33
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 34
    iget-object v1, p0, Lcom/yingyonghui/market/provider/h;->a:Lcom/yingyonghui/market/provider/g;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/yingyonghui/market/provider/g;->a(Lcom/yingyonghui/market/provider/g;Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
