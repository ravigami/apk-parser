.class final Lcom/yingyonghui/market/et;
.super Ljava/lang/Object;
.source "ActivityGridCategory.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/model/k;

.field private synthetic b:Lcom/yingyonghui/market/ActivityGridCategory;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityGridCategory;Lcom/yingyonghui/market/model/k;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/yingyonghui/market/et;->b:Lcom/yingyonghui/market/ActivityGridCategory;

    iput-object p2, p0, Lcom/yingyonghui/market/et;->a:Lcom/yingyonghui/market/model/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 262
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 263
    iget-object v1, p0, Lcom/yingyonghui/market/et;->b:Lcom/yingyonghui/market/ActivityGridCategory;

    const-class v2, Lcom/yingyonghui/market/ActivityNewEventDetail;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 265
    const-string v1, "_id"

    iget-object v2, p0, Lcom/yingyonghui/market/et;->a:Lcom/yingyonghui/market/model/k;

    iget v2, v2, Lcom/yingyonghui/market/model/k;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    const-string v1, "fromPage"

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    const-string v1, "title"

    iget-object v2, p0, Lcom/yingyonghui/market/et;->a:Lcom/yingyonghui/market/model/k;

    iget-object v2, v2, Lcom/yingyonghui/market/model/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const-string v1, "url"

    iget-object v2, p0, Lcom/yingyonghui/market/et;->a:Lcom/yingyonghui/market/model/k;

    iget-object v2, v2, Lcom/yingyonghui/market/model/k;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    iget-object v1, p0, Lcom/yingyonghui/market/et;->b:Lcom/yingyonghui/market/ActivityGridCategory;

    invoke-virtual {v1, v0}, Lcom/yingyonghui/market/ActivityGridCategory;->startActivity(Landroid/content/Intent;)V

    .line 270
    return-void
.end method
