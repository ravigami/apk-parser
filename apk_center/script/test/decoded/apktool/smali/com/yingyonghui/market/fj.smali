.class final Lcom/yingyonghui/market/fj;
.super Landroid/widget/ArrayAdapter;
.source "ActivityWeekly.java"


# instance fields
.field final synthetic a:Lcom/yingyonghui/market/ActivityWeekly;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/yingyonghui/market/ActivityWeekly;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/yingyonghui/market/fj;->a:Lcom/yingyonghui/market/ActivityWeekly;

    .line 358
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 360
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/fj;->b:Landroid/view/LayoutInflater;

    .line 361
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 371
    invoke-virtual {p0, p1}, Lcom/yingyonghui/market/fj;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/h;

    .line 373
    if-nez p2, :cond_1

    .line 375
    iget-object v1, p0, Lcom/yingyonghui/market/fj;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f03006a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 376
    new-instance v2, Lcom/yingyonghui/market/em;

    invoke-direct {v2}, Lcom/yingyonghui/market/em;-><init>()V

    .line 377
    const v1, 0x7f0b015d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v2, Lcom/yingyonghui/market/em;->a:Landroid/widget/RelativeLayout;

    .line 378
    const v1, 0x7f0b015e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/yingyonghui/market/em;->b:Landroid/widget/ImageView;

    .line 379
    const v1, 0x7f0b015f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yingyonghui/market/em;->c:Landroid/widget/TextView;

    .line 380
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 385
    :goto_0
    iget-object v2, v0, Lcom/yingyonghui/market/model/h;->c:Ljava/lang/String;

    const-string v3, "weekly_app"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 386
    invoke-virtual {p0, p1}, Lcom/yingyonghui/market/fj;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/b;

    .line 388
    iget-object v2, v1, Lcom/yingyonghui/market/em;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/yingyonghui/market/fj;->a:Lcom/yingyonghui/market/ActivityWeekly;

    iget-object v4, v0, Lcom/yingyonghui/market/model/b;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/yingyonghui/market/ActivityWeekly;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    iget-object v2, v1, Lcom/yingyonghui/market/em;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/yingyonghui/market/model/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v1, v1, Lcom/yingyonghui/market/em;->a:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/yingyonghui/market/bf;

    invoke-direct {v2, p0, v0}, Lcom/yingyonghui/market/bf;-><init>(Lcom/yingyonghui/market/fj;Lcom/yingyonghui/market/model/b;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    :cond_0
    :goto_1
    return-object p2

    .line 382
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yingyonghui/market/em;

    goto :goto_0

    .line 414
    :cond_2
    iget-object v0, v0, Lcom/yingyonghui/market/model/h;->c:Ljava/lang/String;

    const-string v2, "weekly_news"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p0, p1}, Lcom/yingyonghui/market/fj;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/d;

    .line 417
    iget-object v2, v1, Lcom/yingyonghui/market/em;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/yingyonghui/market/fj;->a:Lcom/yingyonghui/market/ActivityWeekly;

    iget-object v4, v0, Lcom/yingyonghui/market/model/d;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/yingyonghui/market/ActivityWeekly;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 419
    iget-object v1, v1, Lcom/yingyonghui/market/em;->a:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/yingyonghui/market/bg;

    invoke-direct {v2, p0, v0}, Lcom/yingyonghui/market/bg;-><init>(Lcom/yingyonghui/market/fj;Lcom/yingyonghui/market/model/d;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public final isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method
