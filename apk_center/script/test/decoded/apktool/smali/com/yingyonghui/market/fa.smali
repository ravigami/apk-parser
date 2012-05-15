.class final Lcom/yingyonghui/market/fa;
.super Landroid/widget/ArrayAdapter;
.source "ActivityNewEvents.java"


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private synthetic b:Lcom/yingyonghui/market/ActivityNewEvents;


# direct methods
.method public constructor <init>(Lcom/yingyonghui/market/ActivityNewEvents;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/yingyonghui/market/fa;->b:Lcom/yingyonghui/market/ActivityNewEvents;

    .line 298
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 299
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/fa;->a:Landroid/view/LayoutInflater;

    .line 300
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Lcom/yingyonghui/market/fa;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/k;

    .line 305
    if-nez p2, :cond_0

    .line 308
    iget-object v1, p0, Lcom/yingyonghui/market/fa;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f03001c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 309
    new-instance v2, Lcom/yingyonghui/market/dd;

    invoke-direct {v2}, Lcom/yingyonghui/market/dd;-><init>()V

    .line 310
    const v1, 0x7f0b0087

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Lcom/yingyonghui/market/dd;->a:Landroid/widget/LinearLayout;

    .line 311
    const v1, 0x7f0b0088

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yingyonghui/market/dd;->c:Landroid/widget/TextView;

    .line 312
    const v1, 0x7f0b0040

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/yingyonghui/market/dd;->b:Landroid/widget/ImageView;

    .line 314
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 319
    :goto_0
    rem-int/lit8 v2, p1, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 320
    iget-object v2, v1, Lcom/yingyonghui/market/dd;->a:Landroid/widget/LinearLayout;

    const v3, 0x7f02005c

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 325
    :goto_1
    iget-object v2, v1, Lcom/yingyonghui/market/dd;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/yingyonghui/market/model/k;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v2, v0, Lcom/yingyonghui/market/model/k;->d:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 327
    iget-object v0, v1, Lcom/yingyonghui/market/dd;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 332
    :goto_2
    return-object p2

    .line 316
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yingyonghui/market/dd;

    goto :goto_0

    .line 322
    :cond_1
    iget-object v2, v1, Lcom/yingyonghui/market/dd;->a:Landroid/widget/LinearLayout;

    const v3, 0x7f02005d

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 329
    :cond_2
    iget-object v1, v1, Lcom/yingyonghui/market/dd;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/yingyonghui/market/fa;->b:Lcom/yingyonghui/market/ActivityNewEvents;

    iget-object v0, v0, Lcom/yingyonghui/market/model/k;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/yingyonghui/market/ActivityNewEvents;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method
