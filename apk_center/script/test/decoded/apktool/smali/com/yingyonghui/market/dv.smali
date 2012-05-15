.class final Lcom/yingyonghui/market/dv;
.super Landroid/content/BroadcastReceiver;
.source "ActivityDetailApp.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityDetailApp;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityDetailApp;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/yingyonghui/market/dv;->a:Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 308
    iget-object v0, p0, Lcom/yingyonghui/market/dv;->a:Lcom/yingyonghui/market/ActivityDetailApp;

    iget-object v0, v0, Lcom/yingyonghui/market/ActivityDetailApp;->c:Lcom/yingyonghui/market/model/q;

    if-nez v0, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    :try_start_0
    const-string v0, "app_instaled_refreshview"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pkgName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/yingyonghui/market/dv;->a:Lcom/yingyonghui/market/ActivityDetailApp;

    iget-object v1, v1, Lcom/yingyonghui/market/ActivityDetailApp;->c:Lcom/yingyonghui/market/model/q;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yingyonghui/market/dv;->a:Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailApp;->e(Lcom/yingyonghui/market/ActivityDetailApp;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yingyonghui/market/dv;->a:Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailApp;->e(Lcom/yingyonghui/market/ActivityDetailApp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/yingyonghui/market/dv;->a:Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailApp;->f(Lcom/yingyonghui/market/ActivityDetailApp;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 323
    :cond_2
    :try_start_1
    const-string v0, "app_uninstaled_refreshview"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pkgName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/yingyonghui/market/dv;->a:Lcom/yingyonghui/market/ActivityDetailApp;

    iget-object v1, v1, Lcom/yingyonghui/market/ActivityDetailApp;->c:Lcom/yingyonghui/market/model/q;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yingyonghui/market/dv;->a:Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailApp;->e(Lcom/yingyonghui/market/ActivityDetailApp;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yingyonghui/market/dv;->a:Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailApp;->e(Lcom/yingyonghui/market/ActivityDetailApp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/yingyonghui/market/dv;->a:Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailApp;->f(Lcom/yingyonghui/market/ActivityDetailApp;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
