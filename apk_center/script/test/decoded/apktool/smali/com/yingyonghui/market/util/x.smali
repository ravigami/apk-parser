.class final Lcom/yingyonghui/market/util/x;
.super Landroid/os/Handler;
.source "DialogHandler.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/util/z;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/util/z;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/yingyonghui/market/util/x;->a:Lcom/yingyonghui/market/util/z;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yingyonghui/market/util/x;->a:Lcom/yingyonghui/market/util/z;

    invoke-static {v0}, Lcom/yingyonghui/market/util/z;->a(Lcom/yingyonghui/market/util/z;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/MarketApplication;

    .line 29
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 49
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 31
    :pswitch_1
    invoke-virtual {v0}, Lcom/yingyonghui/market/MarketApplication;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    invoke-virtual {v0}, Lcom/yingyonghui/market/MarketApplication;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 33
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 34
    iget-object v0, p0, Lcom/yingyonghui/market/util/x;->a:Lcom/yingyonghui/market/util/z;

    invoke-static {v0}, Lcom/yingyonghui/market/util/z;->a(Lcom/yingyonghui/market/util/z;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 36
    :cond_1
    iget-object v1, p0, Lcom/yingyonghui/market/util/x;->a:Lcom/yingyonghui/market/util/z;

    invoke-virtual {v0}, Lcom/yingyonghui/market/MarketApplication;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yingyonghui/market/util/z;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :pswitch_2
    invoke-virtual {v0}, Lcom/yingyonghui/market/MarketApplication;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    :pswitch_3
    iget-object v0, p0, Lcom/yingyonghui/market/util/x;->a:Lcom/yingyonghui/market/util/z;

    invoke-static {v0}, Lcom/yingyonghui/market/util/z;->a(Lcom/yingyonghui/market/util/z;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
