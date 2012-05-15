.class final Lcom/yingyonghui/market/dt;
.super Ljava/lang/Object;
.source "ActivityDetailApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityDetailApp;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityDetailApp;)V
    .locals 0
    .parameter

    .prologue
    .line 467
    iput-object p1, p0, Lcom/yingyonghui/market/dt;->a:Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 469
    iget-object v0, p0, Lcom/yingyonghui/market/dt;->a:Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailApp;->h(Lcom/yingyonghui/market/ActivityDetailApp;)I

    move-result v0

    if-lez v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/yingyonghui/market/dt;->a:Lcom/yingyonghui/market/ActivityDetailApp;

    iget-object v1, p0, Lcom/yingyonghui/market/dt;->a:Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailApp;->h(Lcom/yingyonghui/market/ActivityDetailApp;)I

    move-result v1

    iget-object v2, p0, Lcom/yingyonghui/market/dt;->a:Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityDetailApp;->i(Lcom/yingyonghui/market/ActivityDetailApp;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/yingyonghui/market/dt;->a:Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityDetailApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/dt;->a:Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-virtual {v1}, Lcom/yingyonghui/market/ActivityDetailApp;->b()Lcom/yingyonghui/market/log/m;

    move-result-object v1

    invoke-static {v1}, Lcom/yingyonghui/market/log/h;->a(Lcom/yingyonghui/market/log/m;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 474
    :cond_0
    return-void
.end method
