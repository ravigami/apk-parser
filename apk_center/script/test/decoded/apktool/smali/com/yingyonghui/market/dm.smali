.class final Lcom/yingyonghui/market/dm;
.super Landroid/database/ContentObserver;
.source "ActivityListAppManage.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityListAppManage;


# direct methods
.method public constructor <init>(Lcom/yingyonghui/market/ActivityListAppManage;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/yingyonghui/market/dm;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    .line 411
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 412
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1
    .parameter

    .prologue
    .line 416
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 417
    iget-object v0, p0, Lcom/yingyonghui/market/dm;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityListAppManage;->d()V

    .line 418
    return-void
.end method
