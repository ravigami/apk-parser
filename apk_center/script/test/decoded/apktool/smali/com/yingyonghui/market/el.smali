.class final Lcom/yingyonghui/market/el;
.super Landroid/widget/ArrayAdapter;
.source "ActivityGridWeekly.java"


# instance fields
.field final synthetic a:Lcom/yingyonghui/market/ActivityGridWeekly;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/yingyonghui/market/ActivityGridWeekly;Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/yingyonghui/market/el;->a:Lcom/yingyonghui/market/ActivityGridWeekly;

    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 253
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 254
    new-instance v0, Lcom/yingyonghui/market/model/l;

    invoke-direct {v0}, Lcom/yingyonghui/market/model/l;-><init>()V

    .line 255
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yingyonghui/market/model/l;->d:Z

    .line 256
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/yingyonghui/market/el;->insert(Ljava/lang/Object;I)V

    .line 259
    :cond_0
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/el;->b:Landroid/view/LayoutInflater;

    .line 260
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 270
    invoke-virtual {p0, p1}, Lcom/yingyonghui/market/el;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/l;

    .line 272
    if-nez p2, :cond_1

    .line 275
    iget-object v1, p0, Lcom/yingyonghui/market/el;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f03006e

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 276
    new-instance v2, Lcom/yingyonghui/market/p;

    invoke-direct {v2}, Lcom/yingyonghui/market/p;-><init>()V

    .line 278
    const v1, 0x7f0b0169

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v2, Lcom/yingyonghui/market/p;->a:Landroid/widget/RelativeLayout;

    .line 279
    const v1, 0x7f0b016a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/yingyonghui/market/p;->c:Landroid/widget/ImageView;

    .line 280
    const v1, 0x7f0b016b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yingyonghui/market/p;->b:Landroid/widget/TextView;

    .line 282
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 289
    :goto_0
    iget-object v2, v1, Lcom/yingyonghui/market/p;->a:Landroid/widget/RelativeLayout;

    const v3, 0x7f0200d0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 297
    iget-boolean v2, v0, Lcom/yingyonghui/market/model/l;->d:Z

    if-eqz v2, :cond_2

    .line 298
    iget-object v2, v1, Lcom/yingyonghui/market/p;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 299
    iget-object v2, v1, Lcom/yingyonghui/market/p;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    iget-object v2, v1, Lcom/yingyonghui/market/p;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    :goto_1
    iget-boolean v2, v0, Lcom/yingyonghui/market/model/l;->d:Z

    if-nez v2, :cond_0

    .line 312
    iget v0, v0, Lcom/yingyonghui/market/model/l;->a:I

    .line 314
    iget-object v1, v1, Lcom/yingyonghui/market/p;->a:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/yingyonghui/market/fl;

    invoke-direct {v2, p0, v0, p1}, Lcom/yingyonghui/market/fl;-><init>(Lcom/yingyonghui/market/el;II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    :cond_0
    return-object p2

    .line 285
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yingyonghui/market/p;

    goto :goto_0

    .line 302
    :cond_2
    iget-object v2, v1, Lcom/yingyonghui/market/p;->a:Landroid/widget/RelativeLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 303
    iget-object v2, v1, Lcom/yingyonghui/market/p;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 304
    iget-object v2, v1, Lcom/yingyonghui/market/p;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    iget-object v2, v1, Lcom/yingyonghui/market/p;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/yingyonghui/market/model/l;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v2, v1, Lcom/yingyonghui/market/p;->c:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/yingyonghui/market/el;->a:Lcom/yingyonghui/market/ActivityGridWeekly;

    iget-object v4, v0, Lcom/yingyonghui/market/model/l;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/yingyonghui/market/ActivityGridWeekly;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public final isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method
