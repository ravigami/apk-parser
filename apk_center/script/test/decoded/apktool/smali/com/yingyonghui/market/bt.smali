.class final Lcom/yingyonghui/market/bt;
.super Ljava/lang/Object;
.source "AdapterManagerListApp.java"

# interfaces
.implements Lcom/yingyonghui/market/cf;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/w;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/w;)V
    .locals 0
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/yingyonghui/market/bt;->a:Lcom/yingyonghui/market/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/yingyonghui/market/bt;->a:Lcom/yingyonghui/market/w;

    iget-object v0, v0, Lcom/yingyonghui/market/w;->b:Lcom/yingyonghui/market/es;

    iget-object v1, p0, Lcom/yingyonghui/market/bt;->a:Lcom/yingyonghui/market/w;

    iget-object v1, v1, Lcom/yingyonghui/market/w;->a:Lcom/yingyonghui/market/model/q;

    iput-object v1, v0, Lcom/yingyonghui/market/es;->a:Lcom/yingyonghui/market/model/q;

    .line 458
    iget-object v0, p0, Lcom/yingyonghui/market/bt;->a:Lcom/yingyonghui/market/w;

    iget-object v0, v0, Lcom/yingyonghui/market/w;->b:Lcom/yingyonghui/market/es;

    invoke-static {v0}, Lcom/yingyonghui/market/es;->b(Lcom/yingyonghui/market/es;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityListAppManage;->getParent()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/bt;->a:Lcom/yingyonghui/market/w;

    iget-object v1, v1, Lcom/yingyonghui/market/w;->b:Lcom/yingyonghui/market/es;

    iget-object v1, v1, Lcom/yingyonghui/market/es;->a:Lcom/yingyonghui/market/model/q;

    iget-object v1, v1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/GlobalUtil;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 459
    return-void
.end method
