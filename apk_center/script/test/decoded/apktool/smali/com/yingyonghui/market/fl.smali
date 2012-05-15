.class final Lcom/yingyonghui/market/fl;
.super Ljava/lang/Object;
.source "ActivityGridWeekly.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:I

.field private synthetic c:Lcom/yingyonghui/market/el;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/el;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/yingyonghui/market/fl;->c:Lcom/yingyonghui/market/el;

    iput p2, p0, Lcom/yingyonghui/market/fl;->a:I

    iput p3, p0, Lcom/yingyonghui/market/fl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 318
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 319
    iget-object v1, p0, Lcom/yingyonghui/market/fl;->c:Lcom/yingyonghui/market/el;

    iget-object v1, v1, Lcom/yingyonghui/market/el;->a:Lcom/yingyonghui/market/ActivityGridWeekly;

    const-class v2, Lcom/yingyonghui/market/ActivityWeekly;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 320
    const-string v1, "weekly_item_id"

    iget v2, p0, Lcom/yingyonghui/market/fl;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 321
    const-string v1, ""

    const-string v2, "list"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const-string v1, "from"

    iget-object v2, p0, Lcom/yingyonghui/market/fl;->c:Lcom/yingyonghui/market/el;

    iget-object v2, v2, Lcom/yingyonghui/market/el;->a:Lcom/yingyonghui/market/ActivityGridWeekly;

    iget v3, p0, Lcom/yingyonghui/market/fl;->b:I

    invoke-static {v2, v3}, Lcom/yingyonghui/market/ActivityGridWeekly;->a(Lcom/yingyonghui/market/ActivityGridWeekly;I)Lcom/yingyonghui/market/log/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yingyonghui/market/log/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    iget-object v1, p0, Lcom/yingyonghui/market/fl;->c:Lcom/yingyonghui/market/el;

    iget-object v1, v1, Lcom/yingyonghui/market/el;->a:Lcom/yingyonghui/market/ActivityGridWeekly;

    invoke-virtual {v1, v0}, Lcom/yingyonghui/market/ActivityGridWeekly;->startActivity(Landroid/content/Intent;)V

    .line 325
    iget-object v0, p0, Lcom/yingyonghui/market/fl;->c:Lcom/yingyonghui/market/el;

    iget-object v0, v0, Lcom/yingyonghui/market/el;->a:Lcom/yingyonghui/market/ActivityGridWeekly;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityGridWeekly;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/fl;->c:Lcom/yingyonghui/market/el;

    iget-object v1, v1, Lcom/yingyonghui/market/el;->a:Lcom/yingyonghui/market/ActivityGridWeekly;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityGridWeekly;->a(Lcom/yingyonghui/market/ActivityGridWeekly;)Lcom/yingyonghui/market/log/m;

    move-result-object v1

    const-string v2, ""

    iget v3, p0, Lcom/yingyonghui/market/fl;->b:I

    iget v4, p0, Lcom/yingyonghui/market/fl;->a:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/lang/String;II)V

    .line 326
    return-void
.end method
