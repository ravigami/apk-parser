.class final Lcom/yingyonghui/market/ev;
.super Landroid/os/Handler;
.source "ActivityDetailAppInner.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/model/q;

.field private synthetic b:Landroid/widget/RelativeLayout;

.field private synthetic c:Lcom/yingyonghui/market/ActivityDetailAppInner;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityDetailAppInner;Lcom/yingyonghui/market/model/q;Landroid/widget/RelativeLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, Lcom/yingyonghui/market/ev;->c:Lcom/yingyonghui/market/ActivityDetailAppInner;

    iput-object p2, p0, Lcom/yingyonghui/market/ev;->a:Lcom/yingyonghui/market/model/q;

    iput-object p3, p0, Lcom/yingyonghui/market/ev;->b:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 556
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/yingyonghui/market/online/b;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/yingyonghui/market/online/b;

    .line 559
    iget v1, v0, Lcom/yingyonghui/market/online/b;->c:I

    const/16 v2, 0x63

    if-ne v1, v2, :cond_0

    .line 560
    iget-object v1, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 561
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 562
    if-eqz v1, :cond_0

    .line 563
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 564
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    iget-object v1, v0, Lcom/yingyonghui/market/online/b;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/yingyonghui/market/util/ab;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 565
    iget v0, v0, Lcom/yingyonghui/market/online/b;->d:I

    iget-object v1, p0, Lcom/yingyonghui/market/ev;->a:Lcom/yingyonghui/market/model/q;

    iget v1, v1, Lcom/yingyonghui/market/model/q;->e:I

    if-ne v0, v1, :cond_0

    .line 566
    iget-object v0, p0, Lcom/yingyonghui/market/ev;->b:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b00e7

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 573
    :cond_0
    return-void
.end method
