.class final Lcom/yingyonghui/market/s;
.super Ljava/lang/Object;
.source "ActivityWeekly.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityWeekly;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityWeekly;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/yingyonghui/market/s;->a:Lcom/yingyonghui/market/ActivityWeekly;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 211
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0x9

    if-ge v1, v0, :cond_2

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {}, Lcom/yingyonghui/market/ActivityWeekly;->a()[I

    move-result-object v2

    aget v2, v2, v1

    if-ne v0, v2, :cond_0

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/yingyonghui/market/ActivityWeekly;->a()[I

    move-result-object v2

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/yingyonghui/market/s;->a:Lcom/yingyonghui/market/ActivityWeekly;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityWeekly;->b(Lcom/yingyonghui/market/ActivityWeekly;)[Lcom/yingyonghui/market/view/WeeklyItemView;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/yingyonghui/market/view/WeeklyItemView;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/yingyonghui/market/s;->a:Lcom/yingyonghui/market/ActivityWeekly;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityWeekly;->b(Lcom/yingyonghui/market/ActivityWeekly;)[Lcom/yingyonghui/market/view/WeeklyItemView;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/yingyonghui/market/view/WeeklyItemView;->b()I

    move-result v2

    .line 218
    if-ltz v2, :cond_0

    .line 219
    iget-object v0, p0, Lcom/yingyonghui/market/s;->a:Lcom/yingyonghui/market/ActivityWeekly;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityWeekly;->c(Lcom/yingyonghui/market/ActivityWeekly;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/h;

    iget-object v0, v0, Lcom/yingyonghui/market/model/h;->c:Ljava/lang/String;

    const-string v3, "weekly_app"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/yingyonghui/market/s;->a:Lcom/yingyonghui/market/ActivityWeekly;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityWeekly;->c(Lcom/yingyonghui/market/ActivityWeekly;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/b;

    .line 222
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 223
    iget-object v4, p0, Lcom/yingyonghui/market/s;->a:Lcom/yingyonghui/market/ActivityWeekly;

    const-class v5, Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v4, "_id"

    iget-object v5, v0, Lcom/yingyonghui/market/model/b;->a:Lcom/yingyonghui/market/model/q;

    iget v5, v5, Lcom/yingyonghui/market/model/q;->e:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    const-string v4, "title"

    iget-object v5, v0, Lcom/yingyonghui/market/model/b;->a:Lcom/yingyonghui/market/model/q;

    iget-object v5, v5, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v4, "installed"

    iget-object v5, v0, Lcom/yingyonghui/market/model/b;->a:Lcom/yingyonghui/market/model/q;

    iget v5, v5, Lcom/yingyonghui/market/model/q;->n:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    const-string v4, "pkgName"

    iget-object v5, v0, Lcom/yingyonghui/market/model/b;->a:Lcom/yingyonghui/market/model/q;

    iget-object v5, v5, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v4, "size"

    iget-object v5, v0, Lcom/yingyonghui/market/model/b;->a:Lcom/yingyonghui/market/model/q;

    iget v5, v5, Lcom/yingyonghui/market/model/q;->o:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 229
    const-string v4, "versionCode"

    iget-object v5, v0, Lcom/yingyonghui/market/model/b;->a:Lcom/yingyonghui/market/model/q;

    iget v5, v5, Lcom/yingyonghui/market/model/q;->s:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 230
    const-string v4, "promotionId"

    iget-object v5, v0, Lcom/yingyonghui/market/model/b;->a:Lcom/yingyonghui/market/model/q;

    iget v5, v5, Lcom/yingyonghui/market/model/q;->E:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    const-string v4, "promotionAgent"

    iget-object v5, v0, Lcom/yingyonghui/market/model/b;->a:Lcom/yingyonghui/market/model/q;

    iget-object v5, v5, Lcom/yingyonghui/market/model/q;->F:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const-string v4, "promotionText"

    iget-object v5, v0, Lcom/yingyonghui/market/model/b;->a:Lcom/yingyonghui/market/model/q;

    iget-object v5, v5, Lcom/yingyonghui/market/model/q;->H:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v4, "promotionDownUrl"

    iget-object v5, v0, Lcom/yingyonghui/market/model/b;->a:Lcom/yingyonghui/market/model/q;

    iget-object v5, v5, Lcom/yingyonghui/market/model/q;->G:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v4, "from"

    iget-object v5, p0, Lcom/yingyonghui/market/s;->a:Lcom/yingyonghui/market/ActivityWeekly;

    invoke-static {v5}, Lcom/yingyonghui/market/ActivityWeekly;->d(Lcom/yingyonghui/market/ActivityWeekly;)Lcom/yingyonghui/market/log/m;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yingyonghui/market/log/m;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    iget-object v4, p0, Lcom/yingyonghui/market/s;->a:Lcom/yingyonghui/market/ActivityWeekly;

    invoke-virtual {v4, v3}, Lcom/yingyonghui/market/ActivityWeekly;->startActivity(Landroid/content/Intent;)V

    .line 238
    iget-object v3, p0, Lcom/yingyonghui/market/s;->a:Lcom/yingyonghui/market/ActivityWeekly;

    invoke-virtual {v3}, Lcom/yingyonghui/market/ActivityWeekly;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/yingyonghui/market/s;->a:Lcom/yingyonghui/market/ActivityWeekly;

    invoke-static {v4}, Lcom/yingyonghui/market/ActivityWeekly;->d(Lcom/yingyonghui/market/ActivityWeekly;)Lcom/yingyonghui/market/log/m;

    move-result-object v4

    const-string v5, ""

    iget-object v0, v0, Lcom/yingyonghui/market/model/b;->a:Lcom/yingyonghui/market/model/q;

    iget v0, v0, Lcom/yingyonghui/market/model/q;->e:I

    invoke-static {v3, v4, v5, v2, v0}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/lang/String;II)V

    .line 211
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/s;->a:Lcom/yingyonghui/market/ActivityWeekly;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityWeekly;->c(Lcom/yingyonghui/market/ActivityWeekly;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/h;

    iget-object v0, v0, Lcom/yingyonghui/market/model/h;->c:Ljava/lang/String;

    const-string v3, "weekly_news"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/yingyonghui/market/s;->a:Lcom/yingyonghui/market/ActivityWeekly;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityWeekly;->c(Lcom/yingyonghui/market/ActivityWeekly;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/d;

    .line 245
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 246
    iget-object v4, p0, Lcom/yingyonghui/market/s;->a:Lcom/yingyonghui/market/ActivityWeekly;

    const-class v5, Lcom/yingyonghui/market/ActivityDetailNews;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string v4, "url"

    iget-object v5, v0, Lcom/yingyonghui/market/model/d;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    iget-object v4, p0, Lcom/yingyonghui/market/s;->a:Lcom/yingyonghui/market/ActivityWeekly;

    invoke-virtual {v4, v3}, Lcom/yingyonghui/market/ActivityWeekly;->startActivity(Landroid/content/Intent;)V

    .line 251
    iget-object v3, p0, Lcom/yingyonghui/market/s;->a:Lcom/yingyonghui/market/ActivityWeekly;

    invoke-virtual {v3}, Lcom/yingyonghui/market/ActivityWeekly;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/yingyonghui/market/s;->a:Lcom/yingyonghui/market/ActivityWeekly;

    invoke-static {v4}, Lcom/yingyonghui/market/ActivityWeekly;->d(Lcom/yingyonghui/market/ActivityWeekly;)Lcom/yingyonghui/market/log/m;

    move-result-object v4

    const-string v5, ""

    iget-object v0, v0, Lcom/yingyonghui/market/model/d;->a:Ljava/lang/String;

    invoke-static {v3, v4, v5, v2, v0}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 258
    :cond_2
    return-void
.end method
