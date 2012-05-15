.class public Lcom/yingyonghui/market/ActivityDetailScreenshot;
.super Lcom/yingyonghui/market/HttpServiceSupportForActivity;
.source "ActivityDetailScreenshot.java"


# instance fields
.field private final c:I

.field private d:Lcom/yingyonghui/market/widget/SlowSpeedGallery;

.field private e:Landroid/view/View;

.field private f:I

.field private g:I

.field private h:I

.field private i:[Ljava/lang/String;

.field private j:Landroid/widget/LinearLayout;

.field private k:Lcom/yingyonghui/market/bw;

.field private l:[Landroid/graphics/drawable/Drawable;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->c:I

    .line 192
    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityDetailScreenshot;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->h:I

    return v0
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityDetailScreenshot;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput p1, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->f:I

    return p1
.end method

.method private a(Z)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 143
    if-eqz p1, :cond_3

    .line 144
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->d:Lcom/yingyonghui/market/widget/SlowSpeedGallery;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->d:Lcom/yingyonghui/market/widget/SlowSpeedGallery;

    invoke-virtual {v0, v2}, Lcom/yingyonghui/market/widget/SlowSpeedGallery;->setVisibility(I)V

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->j:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 164
    :cond_2
    :goto_0
    return-void

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->e:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 155
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 157
    :cond_4
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->d:Lcom/yingyonghui/market/widget/SlowSpeedGallery;

    if-eqz v0, :cond_5

    .line 158
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->d:Lcom/yingyonghui/market/widget/SlowSpeedGallery;

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/widget/SlowSpeedGallery;->setVisibility(I)V

    .line 160
    :cond_5
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->j:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/yingyonghui/market/ActivityDetailScreenshot;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->j:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/yingyonghui/market/ActivityDetailScreenshot;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->f:I

    return v0
.end method

.method static synthetic d(Lcom/yingyonghui/market/ActivityDetailScreenshot;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->m:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic e(Lcom/yingyonghui/market/ActivityDetailScreenshot;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->n:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic f(Lcom/yingyonghui/market/ActivityDetailScreenshot;)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->l:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/os/Message;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/yingyonghui/market/online/b;

    .line 169
    iget v7, v0, Lcom/yingyonghui/market/online/b;->c:I

    .line 171
    iget-object v0, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 172
    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_2

    .line 174
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 175
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 176
    const/high16 v2, 0x42b4

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 177
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 180
    :cond_0
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 181
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->l:[Landroid/graphics/drawable/Drawable;

    aput-object v2, v0, v7

    .line 182
    iget v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->f:I

    if-ne v7, v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->d:Lcom/yingyonghui/market/widget/SlowSpeedGallery;

    iget v2, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->f:I

    invoke-virtual {v0, v2}, Lcom/yingyonghui/market/widget/SlowSpeedGallery;->setSelection(I)V

    .line 184
    invoke-direct {p0, v1}, Lcom/yingyonghui/market/ActivityDetailScreenshot;->a(Z)V

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->d:Lcom/yingyonghui/market/widget/SlowSpeedGallery;

    invoke-virtual {v0}, Lcom/yingyonghui/market/widget/SlowSpeedGallery;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->k:Lcom/yingyonghui/market/bw;

    invoke-virtual {v0}, Lcom/yingyonghui/market/bw;->notifyDataSetChanged()V

    .line 190
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v4, -0x1

    const/4 v7, -0x2

    const/4 v1, 0x0

    .line 44
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0, v8}, Lcom/yingyonghui/market/ActivityDetailScreenshot;->requestWindowFeature(I)Z

    .line 46
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailScreenshot;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x400

    const/16 v3, 0x400

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setFlags(II)V

    .line 48
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailScreenshot;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailScreenshot;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 51
    const-string v2, "position"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->f:I

    .line 52
    const-string v2, "id"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->g:I

    .line 53
    const-string v2, "count"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->h:I

    .line 54
    const-string v2, "snapshotUrls"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->i:[Ljava/lang/String;

    .line 56
    iget v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->g:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->h:I

    if-gtz v0, :cond_1

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailScreenshot;->finish()V

    .line 60
    :cond_1
    iget v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->h:I

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->l:[Landroid/graphics/drawable/Drawable;

    .line 62
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailScreenshot;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02009d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailScreenshot;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02009c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->n:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f0b0061

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailScreenshot;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/widget/SlowSpeedGallery;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->d:Lcom/yingyonghui/market/widget/SlowSpeedGallery;

    const v0, 0x7f0b0066

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailScreenshot;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->e:Landroid/view/View;

    new-instance v0, Lcom/yingyonghui/market/bw;

    invoke-direct {v0, p0, p0}, Lcom/yingyonghui/market/bw;-><init>(Lcom/yingyonghui/market/ActivityDetailScreenshot;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->k:Lcom/yingyonghui/market/bw;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->d:Lcom/yingyonghui/market/widget/SlowSpeedGallery;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->k:Lcom/yingyonghui/market/bw;

    invoke-virtual {v0, v2}, Lcom/yingyonghui/market/widget/SlowSpeedGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->d:Lcom/yingyonghui/market/widget/SlowSpeedGallery;

    new-instance v2, Lcom/yingyonghui/market/fh;

    invoke-direct {v2, p0}, Lcom/yingyonghui/market/fh;-><init>(Lcom/yingyonghui/market/ActivityDetailScreenshot;)V

    invoke-virtual {v0, v2}, Lcom/yingyonghui/market/widget/SlowSpeedGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f0b0067

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailScreenshot;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->j:Landroid/widget/LinearLayout;

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->h:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->a:Lcom/yingyonghui/market/online/e;

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->i:[Ljava/lang/String;

    aget-object v3, v3, v0

    add-int/lit8 v4, v0, 0x0

    iget v5, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->g:I

    iget-object v6, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->b:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/yingyonghui/market/online/e;->b(Ljava/lang/String;IILandroid/os/Handler;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget v3, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->f:I

    if-ne v0, v3, :cond_2

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v9, v1, v9, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 63
    :cond_3
    invoke-direct {p0, v8}, Lcom/yingyonghui/market/ActivityDetailScreenshot;->a(Z)V

    .line 64
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 68
    invoke-super {p0}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onDestroy()V

    .line 69
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->l:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->l:[Landroid/graphics/drawable/Drawable;

    array-length v2, v0

    .line 71
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 72
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailScreenshot;->l:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    .line 73
    if-eqz v0, :cond_0

    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 74
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 76
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 82
    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method
