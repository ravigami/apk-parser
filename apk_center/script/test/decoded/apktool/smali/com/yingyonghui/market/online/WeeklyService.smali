.class public Lcom/yingyonghui/market/online/WeeklyService;
.super Landroid/app/Service;
.source "WeeklyService.java"


# instance fields
.field private a:Lcom/yingyonghui/market/online/e;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 19
    new-instance v0, Lcom/yingyonghui/market/online/p;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/online/p;-><init>(Lcom/yingyonghui/market/online/WeeklyService;)V

    iput-object v0, p0, Lcom/yingyonghui/market/online/WeeklyService;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 66
    invoke-static {p0}, Lcom/yingyonghui/market/online/e;->a(Landroid/content/Context;)Lcom/yingyonghui/market/online/e;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/online/WeeklyService;->a:Lcom/yingyonghui/market/online/e;

    .line 69
    iget-object v0, p0, Lcom/yingyonghui/market/online/WeeklyService;->a:Lcom/yingyonghui/market/online/e;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/yingyonghui/market/online/WeeklyService;->a:Lcom/yingyonghui/market/online/e;

    iget-object v1, p0, Lcom/yingyonghui/market/online/WeeklyService;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/online/e;->c(Landroid/os/Handler;)V

    .line 74
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 87
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 80
    return-void
.end method
