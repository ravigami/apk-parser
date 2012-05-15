.class final Lcom/yingyonghui/market/bj;
.super Landroid/content/BroadcastReceiver;
.source "ActivityTab4Search.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityTab4Search;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityTab4Search;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/yingyonghui/market/bj;->a:Lcom/yingyonghui/market/ActivityTab4Search;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 229
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "broadcast_search_request"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/yingyonghui/market/bj;->a:Lcom/yingyonghui/market/ActivityTab4Search;

    const-string v1, "keyword"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yingyonghui/market/ActivityTab4Search;->a(Lcom/yingyonghui/market/ActivityTab4Search;Ljava/lang/String;)Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/yingyonghui/market/bj;->a:Lcom/yingyonghui/market/ActivityTab4Search;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityTab4Search;->d(Lcom/yingyonghui/market/ActivityTab4Search;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/bj;->a:Lcom/yingyonghui/market/ActivityTab4Search;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityTab4Search;->f(Lcom/yingyonghui/market/ActivityTab4Search;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "show_search_result"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/yingyonghui/market/bj;->a:Lcom/yingyonghui/market/ActivityTab4Search;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/ActivityTab4Search;->a(I)V

    goto :goto_0
.end method
