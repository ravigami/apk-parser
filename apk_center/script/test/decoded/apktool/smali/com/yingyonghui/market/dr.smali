.class final Lcom/yingyonghui/market/dr;
.super Ljava/lang/Object;
.source "ActivityDetailApp.java"

# interfaces
.implements Lcom/yingyonghui/market/cf;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/fm;

.field private synthetic b:Lcom/yingyonghui/market/ActivityDetailApp;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityDetailApp;Lcom/yingyonghui/market/fm;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1188
    iput-object p1, p0, Lcom/yingyonghui/market/dr;->b:Lcom/yingyonghui/market/ActivityDetailApp;

    iput-object p2, p0, Lcom/yingyonghui/market/dr;->a:Lcom/yingyonghui/market/fm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/yingyonghui/market/dr;->b:Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailApp;->j(Lcom/yingyonghui/market/ActivityDetailApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "download_error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/yingyonghui/market/dr;->b:Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailApp;->k(Lcom/yingyonghui/market/ActivityDetailApp;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 1194
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/dr;->b:Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Lcom/yingyonghui/market/ActivityDetailApp;J)J

    .line 1195
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1196
    iget-object v1, p0, Lcom/yingyonghui/market/dr;->a:Lcom/yingyonghui/market/fm;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1197
    const/16 v1, 0xde

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1198
    iget-object v1, p0, Lcom/yingyonghui/market/dr;->b:Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailApp;->g(Lcom/yingyonghui/market/ActivityDetailApp;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1200
    iget-object v0, p0, Lcom/yingyonghui/market/dr;->b:Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailApp;->j(Lcom/yingyonghui/market/ActivityDetailApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "download_error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yingyonghui/market/dr;->b:Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailApp;->j(Lcom/yingyonghui/market/ActivityDetailApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "install_error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1201
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/dr;->b:Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityDetailApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/dr;->b:Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-virtual {v1}, Lcom/yingyonghui/market/ActivityDetailApp;->b()Lcom/yingyonghui/market/log/m;

    move-result-object v1

    invoke-static {v1}, Lcom/yingyonghui/market/log/h;->i(Lcom/yingyonghui/market/log/m;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1205
    :goto_0
    return-void

    .line 1203
    :cond_2
    iget-object v0, p0, Lcom/yingyonghui/market/dr;->b:Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityDetailApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/dr;->b:Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-virtual {v1}, Lcom/yingyonghui/market/ActivityDetailApp;->b()Lcom/yingyonghui/market/log/m;

    move-result-object v1

    invoke-static {v1}, Lcom/yingyonghui/market/log/h;->g(Lcom/yingyonghui/market/log/m;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
