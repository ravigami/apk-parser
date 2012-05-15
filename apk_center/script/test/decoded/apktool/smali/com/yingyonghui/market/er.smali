.class final Lcom/yingyonghui/market/er;
.super Ljava/lang/Object;
.source "AdapterListApp.java"

# interfaces
.implements Lcom/yingyonghui/market/cf;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/bz;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/bz;)V
    .locals 0
    .parameter

    .prologue
    .line 458
    iput-object p1, p0, Lcom/yingyonghui/market/er;->a:Lcom/yingyonghui/market/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/yingyonghui/market/er;->a:Lcom/yingyonghui/market/bz;

    iget-object v0, v0, Lcom/yingyonghui/market/bz;->b:Lcom/yingyonghui/market/br;

    invoke-static {v0}, Lcom/yingyonghui/market/br;->b(Lcom/yingyonghui/market/br;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityListAppManage;->getParent()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/er;->a:Lcom/yingyonghui/market/bz;

    iget-object v1, v1, Lcom/yingyonghui/market/bz;->a:Lcom/yingyonghui/market/model/q;

    iget-object v1, v1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/GlobalUtil;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 461
    return-void
.end method
