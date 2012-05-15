.class final Lcom/yingyonghui/market/ey;
.super Ljava/lang/Object;
.source "ActivityDetailAppInner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Landroid/widget/LinearLayout;

.field private synthetic c:Ljava/util/ArrayList;

.field private synthetic d:Landroid/widget/LinearLayout;

.field private synthetic e:Lcom/yingyonghui/market/ActivityDetailAppInner;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityDetailAppInner;ILandroid/widget/LinearLayout;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 613
    iput-object p1, p0, Lcom/yingyonghui/market/ey;->e:Lcom/yingyonghui/market/ActivityDetailAppInner;

    iput p2, p0, Lcom/yingyonghui/market/ey;->a:I

    iput-object p3, p0, Lcom/yingyonghui/market/ey;->b:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/yingyonghui/market/ey;->c:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/yingyonghui/market/ey;->d:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x8

    const v5, 0x7f0b00ea

    const/4 v2, 0x0

    .line 617
    iget v0, p0, Lcom/yingyonghui/market/ey;->a:I

    if-gtz v0, :cond_0

    .line 642
    :goto_0
    return-void

    .line 620
    :cond_0
    const/4 v0, 0x4

    move v1, v0

    :goto_1
    iget v0, p0, Lcom/yingyonghui/market/ey;->a:I

    if-ge v1, v0, :cond_2

    .line 621
    rem-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_1

    .line 622
    iget-object v3, p0, Lcom/yingyonghui/market/ey;->b:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/yingyonghui/market/ey;->e:Lcom/yingyonghui/market/ActivityDetailAppInner;

    iget-object v0, p0, Lcom/yingyonghui/market/ey;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    invoke-static {v4, v0, v1}, Lcom/yingyonghui/market/ActivityDetailAppInner;->a(Lcom/yingyonghui/market/ActivityDetailAppInner;Lcom/yingyonghui/market/model/q;I)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 620
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 624
    :cond_1
    iget-object v3, p0, Lcom/yingyonghui/market/ey;->d:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/yingyonghui/market/ey;->e:Lcom/yingyonghui/market/ActivityDetailAppInner;

    iget-object v0, p0, Lcom/yingyonghui/market/ey;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    invoke-static {v4, v0, v1}, Lcom/yingyonghui/market/ActivityDetailAppInner;->a(Lcom/yingyonghui/market/ActivityDetailAppInner;Lcom/yingyonghui/market/model/q;I)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    move v1, v2

    .line 627
    :goto_3
    iget-object v0, p0, Lcom/yingyonghui/market/ey;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 628
    iget-object v0, p0, Lcom/yingyonghui/market/ey;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 629
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 627
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_3
    move v1, v2

    .line 631
    :goto_4
    iget-object v0, p0, Lcom/yingyonghui/market/ey;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 632
    iget-object v0, p0, Lcom/yingyonghui/market/ey;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 633
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 631
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 635
    :cond_4
    iget-object v0, p0, Lcom/yingyonghui/market/ey;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/yingyonghui/market/ey;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 636
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 637
    iget-object v0, p0, Lcom/yingyonghui/market/ey;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/yingyonghui/market/ey;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 638
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 639
    iget-object v0, p0, Lcom/yingyonghui/market/ey;->e:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailAppInner;->j(Lcom/yingyonghui/market/ActivityDetailAppInner;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 641
    iget-object v0, p0, Lcom/yingyonghui/market/ey;->e:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityDetailAppInner;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ey;->e:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailAppInner;->g(Lcom/yingyonghui/market/ActivityDetailAppInner;)Lcom/yingyonghui/market/log/m;

    move-result-object v1

    invoke-static {v1}, Lcom/yingyonghui/market/log/h;->m(Lcom/yingyonghui/market/log/m;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
