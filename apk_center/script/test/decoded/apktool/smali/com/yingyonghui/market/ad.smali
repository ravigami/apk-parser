.class final Lcom/yingyonghui/market/ad;
.super Ljava/lang/Object;
.source "ActivityCommentsAdd.java"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# instance fields
.field private synthetic a:Landroid/widget/TextView;

.field private synthetic b:Lcom/yingyonghui/market/ActivityCommentsAdd;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityCommentsAdd;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/yingyonghui/market/ad;->b:Lcom/yingyonghui/market/ActivityCommentsAdd;

    iput-object p2, p0, Lcom/yingyonghui/market/ad;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x5

    .line 88
    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/yingyonghui/market/ad;->a:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :goto_0
    return-void

    .line 91
    :cond_0
    new-instance v1, Ljava/math/BigDecimal;

    float-to-double v2, p2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Ljava/math/BigDecimal;->intValue()I

    move-result v1

    .line 93
    if-le v1, v0, :cond_1

    .line 98
    :goto_1
    iget-object v1, p0, Lcom/yingyonghui/market/ad;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yingyonghui/market/ad;->b:Lcom/yingyonghui/market/ActivityCommentsAdd;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityCommentsAdd;->a(Lcom/yingyonghui/market/ActivityCommentsAdd;)[Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 95
    :cond_1
    if-gtz v1, :cond_2

    .line 96
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method
