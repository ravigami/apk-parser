.class final Lcom/yingyonghui/market/bg;
.super Ljava/lang/Object;
.source "ActivityWeekly.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/model/d;

.field private synthetic b:Lcom/yingyonghui/market/fj;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/fj;Lcom/yingyonghui/market/model/d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/yingyonghui/market/bg;->b:Lcom/yingyonghui/market/fj;

    iput-object p2, p0, Lcom/yingyonghui/market/bg;->a:Lcom/yingyonghui/market/model/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 424
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 425
    iget-object v1, p0, Lcom/yingyonghui/market/bg;->b:Lcom/yingyonghui/market/fj;

    iget-object v1, v1, Lcom/yingyonghui/market/fj;->a:Lcom/yingyonghui/market/ActivityWeekly;

    const-class v2, Lcom/yingyonghui/market/ActivityDetailNews;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    const-string v1, "url"

    iget-object v2, p0, Lcom/yingyonghui/market/bg;->a:Lcom/yingyonghui/market/model/d;

    iget-object v2, v2, Lcom/yingyonghui/market/model/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    iget-object v1, p0, Lcom/yingyonghui/market/bg;->b:Lcom/yingyonghui/market/fj;

    iget-object v1, v1, Lcom/yingyonghui/market/fj;->a:Lcom/yingyonghui/market/ActivityWeekly;

    invoke-virtual {v1, v0}, Lcom/yingyonghui/market/ActivityWeekly;->startActivity(Landroid/content/Intent;)V

    .line 428
    return-void
.end method
