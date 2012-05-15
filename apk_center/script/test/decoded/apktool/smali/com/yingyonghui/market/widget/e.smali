.class final Lcom/yingyonghui/market/widget/e;
.super Landroid/os/Handler;
.source "CategoryAppBanner.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/widget/CategoryAppBanner;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/widget/CategoryAppBanner;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/yingyonghui/market/widget/e;->a:Lcom/yingyonghui/market/widget/CategoryAppBanner;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 91
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/yingyonghui/market/online/b;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/yingyonghui/market/online/b;

    .line 93
    iget v1, v0, Lcom/yingyonghui/market/online/b;->c:I

    const/16 v2, 0x63

    if-ne v1, v2, :cond_0

    .line 94
    iget-object v1, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 95
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_0

    .line 97
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 98
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    iget-object v1, v0, Lcom/yingyonghui/market/online/b;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/yingyonghui/market/util/ab;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget v0, v0, Lcom/yingyonghui/market/online/b;->d:I

    iget-object v1, p0, Lcom/yingyonghui/market/widget/e;->a:Lcom/yingyonghui/market/widget/CategoryAppBanner;

    invoke-static {v1}, Lcom/yingyonghui/market/widget/CategoryAppBanner;->a(Lcom/yingyonghui/market/widget/CategoryAppBanner;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/yingyonghui/market/widget/e;->a:Lcom/yingyonghui/market/widget/CategoryAppBanner;

    invoke-static {v0}, Lcom/yingyonghui/market/widget/CategoryAppBanner;->b(Lcom/yingyonghui/market/widget/CategoryAppBanner;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    :cond_0
    return-void
.end method
