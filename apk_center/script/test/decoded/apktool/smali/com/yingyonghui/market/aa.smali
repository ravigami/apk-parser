.class final Lcom/yingyonghui/market/aa;
.super Ljava/lang/Object;
.source "ActivityListAppManage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityListAppManage;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityListAppManage;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/yingyonghui/market/aa;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/yingyonghui/market/aa;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppManage;->c(Lcom/yingyonghui/market/ActivityListAppManage;)V

    .line 200
    iget-object v0, p0, Lcom/yingyonghui/market/aa;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityListAppManage;->d()V

    .line 202
    iget-object v0, p0, Lcom/yingyonghui/market/aa;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityListAppManage;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "manageIgnoreAllUpdate"

    iget-object v2, p0, Lcom/yingyonghui/market/aa;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-virtual {v2}, Lcom/yingyonghui/market/ActivityListAppManage;->f()Lcom/yingyonghui/market/log/m;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yingyonghui/market/log/m;)V

    .line 203
    return-void
.end method
