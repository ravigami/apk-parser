.class final Lcom/yingyonghui/market/ek;
.super Ljava/lang/Object;
.source "ActivityDetailAppInner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private synthetic a:Landroid/widget/TextView;

.field private synthetic b:Lcom/yingyonghui/market/ActivityDetailAppInner;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityDetailAppInner;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/yingyonghui/market/ek;->b:Lcom/yingyonghui/market/ActivityDetailAppInner;

    iput-object p2, p0, Lcom/yingyonghui/market/ek;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, Lcom/yingyonghui/market/ek;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yingyonghui/market/ek;->b:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityDetailAppInner;->f(Lcom/yingyonghui/market/ActivityDetailAppInner;)Lcom/yingyonghui/market/en;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yingyonghui/market/en;->a()I

    move-result v2

    rem-int v2, p3, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yingyonghui/market/ek;->b:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityDetailAppInner;->f(Lcom/yingyonghui/market/ActivityDetailAppInner;)Lcom/yingyonghui/market/en;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yingyonghui/market/en;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    return-void
.end method
