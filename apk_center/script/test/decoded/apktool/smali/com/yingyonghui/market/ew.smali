.class final Lcom/yingyonghui/market/ew;
.super Ljava/lang/Object;
.source "ActivityDetailAppInner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/yingyonghui/market/log/m;

.field private synthetic b:Lcom/yingyonghui/market/model/q;

.field private synthetic c:I

.field private synthetic d:Lcom/yingyonghui/market/ActivityDetailAppInner;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityDetailAppInner;Lcom/yingyonghui/market/model/q;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/yingyonghui/market/ew;->d:Lcom/yingyonghui/market/ActivityDetailAppInner;

    iput-object p2, p0, Lcom/yingyonghui/market/ew;->b:Lcom/yingyonghui/market/model/q;

    iput p3, p0, Lcom/yingyonghui/market/ew;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    new-instance v0, Lcom/yingyonghui/market/log/m;

    const-string v1, "Relative"

    invoke-direct {v0, v1}, Lcom/yingyonghui/market/log/m;-><init>(Ljava/lang/String;)V

    const-string v1, "assetId"

    iget-object v2, p0, Lcom/yingyonghui/market/ew;->d:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityDetailAppInner;->b(Lcom/yingyonghui/market/ActivityDetailAppInner;)Lcom/yingyonghui/market/model/o;

    move-result-object v2

    iget v2, v2, Lcom/yingyonghui/market/model/o;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yingyonghui/market/log/m;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yingyonghui/market/log/m;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ew;->a:Lcom/yingyonghui/market/log/m;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 509
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 510
    iget-object v1, p0, Lcom/yingyonghui/market/ew;->d:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-virtual {v1}, Lcom/yingyonghui/market/ActivityDetailAppInner;->getParent()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 512
    const-string v1, "_id"

    iget-object v2, p0, Lcom/yingyonghui/market/ew;->b:Lcom/yingyonghui/market/model/q;

    iget v2, v2, Lcom/yingyonghui/market/model/q;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 513
    const-string v1, "title"

    iget-object v2, p0, Lcom/yingyonghui/market/ew;->b:Lcom/yingyonghui/market/model/q;

    iget-object v2, v2, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    const-string v1, "installed"

    iget-object v2, p0, Lcom/yingyonghui/market/ew;->b:Lcom/yingyonghui/market/model/q;

    iget v2, v2, Lcom/yingyonghui/market/model/q;->n:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 515
    const-string v1, "pkgName"

    iget-object v2, p0, Lcom/yingyonghui/market/ew;->b:Lcom/yingyonghui/market/model/q;

    iget-object v2, v2, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    const-string v1, "size"

    iget-object v2, p0, Lcom/yingyonghui/market/ew;->b:Lcom/yingyonghui/market/model/q;

    iget v2, v2, Lcom/yingyonghui/market/model/q;->o:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 517
    const-string v1, "versionName"

    iget-object v2, p0, Lcom/yingyonghui/market/ew;->b:Lcom/yingyonghui/market/model/q;

    iget-object v2, v2, Lcom/yingyonghui/market/model/q;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    const-string v1, "versionCode"

    iget-object v2, p0, Lcom/yingyonghui/market/ew;->b:Lcom/yingyonghui/market/model/q;

    iget v2, v2, Lcom/yingyonghui/market/model/q;->s:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 519
    const-string v1, "lastUpdate"

    iget-object v2, p0, Lcom/yingyonghui/market/ew;->b:Lcom/yingyonghui/market/model/q;

    iget-object v2, v2, Lcom/yingyonghui/market/model/q;->r:Ljava/lang/String;

    invoke-static {v2}, Lcom/yingyonghui/market/util/m;->b(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "yyyy-MM-dd"

    invoke-static {v2, v3, v4}, Lcom/yingyonghui/market/util/s;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    const-string v1, "downloadCount"

    iget-object v2, p0, Lcom/yingyonghui/market/ew;->b:Lcom/yingyonghui/market/model/q;

    iget v2, v2, Lcom/yingyonghui/market/model/q;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 521
    const-string v1, "rating"

    iget-object v2, p0, Lcom/yingyonghui/market/ew;->b:Lcom/yingyonghui/market/model/q;

    iget v2, v2, Lcom/yingyonghui/market/model/q;->l:F

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 522
    const-string v1, "ratingCount"

    iget-object v2, p0, Lcom/yingyonghui/market/ew;->b:Lcom/yingyonghui/market/model/q;

    iget v2, v2, Lcom/yingyonghui/market/model/q;->B:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 523
    const-string v1, "from"

    iget v2, p0, Lcom/yingyonghui/market/ew;->c:I

    iget-object v3, p0, Lcom/yingyonghui/market/ew;->a:Lcom/yingyonghui/market/log/m;

    const-string v4, "index"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/yingyonghui/market/log/m;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yingyonghui/market/log/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yingyonghui/market/log/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    iget-object v1, p0, Lcom/yingyonghui/market/ew;->d:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-virtual {v1}, Lcom/yingyonghui/market/ActivityDetailAppInner;->getParent()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 526
    iget-object v0, p0, Lcom/yingyonghui/market/ew;->d:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityDetailAppInner;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ew;->a:Lcom/yingyonghui/market/log/m;

    const-string v2, ""

    iget v3, p0, Lcom/yingyonghui/market/ew;->c:I

    iget-object v4, p0, Lcom/yingyonghui/market/ew;->b:Lcom/yingyonghui/market/model/q;

    iget v4, v4, Lcom/yingyonghui/market/model/q;->e:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/lang/String;II)V

    .line 528
    return-void
.end method
