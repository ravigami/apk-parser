.class public Lcom/yingyonghui/market/ActivityGridCategory;
.super Lcom/yingyonghui/market/HttpServiceSupportForActivity;
.source "ActivityGridCategory.java"


# static fields
.field private static c:Z


# instance fields
.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Lcom/yingyonghui/market/view/CategoryGridView;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ScrollView;

.field private k:Lcom/yingyonghui/market/eg;

.field private l:Lcom/yingyonghui/market/log/m;

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yingyonghui/market/ActivityGridCategory;->m:Z

    .line 312
    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityGridCategory;)Landroid/widget/ScrollView;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityGridCategory;->j:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityGridCategory;->j:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/yingyonghui/market/ActivityGridCategory;->e:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityGridCategory;->j:Landroid/widget/ScrollView;

    new-instance v1, Lcom/yingyonghui/market/eu;

    invoke-direct {v1, p0}, Lcom/yingyonghui/market/eu;-><init>(Lcom/yingyonghui/market/ActivityGridCategory;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 250
    :cond_0
    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 175
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 177
    sget-boolean v0, Lcom/yingyonghui/market/ActivityGridCategory;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/yingyonghui/market/ActivityGridCategory;->e:I

    if-ne v0, v3, :cond_0

    .line 178
    new-instance v0, Lcom/yingyonghui/market/model/p;

    invoke-direct {v0}, Lcom/yingyonghui/market/model/p;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/yingyonghui/market/model/p;->a:I

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityGridCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090175

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yingyonghui/market/model/p;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityGridCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090176

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yingyonghui/market/model/p;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_0
    iget v0, p0, Lcom/yingyonghui/market/ActivityGridCategory;->e:I

    if-ne v0, v3, :cond_1

    .line 182
    new-instance v0, Lcom/yingyonghui/market/model/p;

    invoke-direct {v0}, Lcom/yingyonghui/market/model/p;-><init>()V

    const/4 v1, -0x3

    iput v1, v0, Lcom/yingyonghui/market/model/p;->a:I

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityGridCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090180

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yingyonghui/market/model/p;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityGridCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090181

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yingyonghui/market/model/p;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_1
    new-instance v0, Lcom/yingyonghui/market/eg;

    invoke-direct {v0, p0, p0, p1}, Lcom/yingyonghui/market/eg;-><init>(Lcom/yingyonghui/market/ActivityGridCategory;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityGridCategory;->k:Lcom/yingyonghui/market/eg;

    .line 186
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityGridCategory;->g:Lcom/yingyonghui/market/view/CategoryGridView;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityGridCategory;->k:Lcom/yingyonghui/market/eg;

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/view/CategoryGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityGridCategory;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityGridCategory;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityGridCategory;->g:Lcom/yingyonghui/market/view/CategoryGridView;

    invoke-virtual {v0, v4}, Lcom/yingyonghui/market/view/CategoryGridView;->setVisibility(I)V

    .line 195
    :goto_0
    return-void

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityGridCategory;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityGridCategory;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/yingyonghui/market/ActivityGridCategory;)I
    .locals 1
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lcom/yingyonghui/market/ActivityGridCategory;->e:I

    return v0
.end method

.method static synthetic c(Lcom/yingyonghui/market/ActivityGridCategory;)Lcom/yingyonghui/market/log/m;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityGridCategory;->l:Lcom/yingyonghui/market/log/m;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x3e3

    .line 281
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    invoke-static {p0}, Lcom/yingyonghui/market/util/ab;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 292
    :cond_0
    :goto_0
    return-object v0

    .line 285
    :cond_1
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    invoke-static {p1}, Lcom/yingyonghui/market/util/ab;->a(Ljava/lang/String;)Lcom/yingyonghui/market/model/m;

    move-result-object v0

    .line 286
    iget-object v0, v0, Lcom/yingyonghui/market/model/m;->a:Landroid/graphics/drawable/Drawable;

    .line 287
    if-nez v0, :cond_0

    .line 288
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    invoke-static {p0}, Lcom/yingyonghui/market/util/ab;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 289
    iget-boolean v1, p0, Lcom/yingyonghui/market/ActivityGridCategory;->m:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityGridCategory;->a:Lcom/yingyonghui/market/online/e;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityGridCategory;->b:Landroid/os/Handler;

    invoke-virtual {v1, p1, v3, v2}, Lcom/yingyonghui/market/online/e;->d(Ljava/lang/String;ILandroid/os/Handler;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityGridCategory;->a:Lcom/yingyonghui/market/online/e;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityGridCategory;->b:Landroid/os/Handler;

    invoke-virtual {v1, p1, v3, v2}, Lcom/yingyonghui/market/online/e;->e(Ljava/lang/String;ILandroid/os/Handler;)V

    goto :goto_0
.end method

.method protected final a(Landroid/os/Message;)V
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f0b008b

    const/16 v6, 0x3e4

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 139
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/yingyonghui/market/online/b;

    .line 140
    iget v1, v0, Lcom/yingyonghui/market/online/b;->c:I

    .line 141
    const/16 v2, 0x3e3

    if-ne v1, v2, :cond_1

    .line 142
    iget-object v1, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 143
    array-length v2, v1

    invoke-static {v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 144
    if-eqz v1, :cond_0

    .line 145
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 146
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    iget-object v0, v0, Lcom/yingyonghui/market/online/b;->e:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/yingyonghui/market/util/ab;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityGridCategory;->k:Lcom/yingyonghui/market/eg;

    invoke-virtual {v0}, Lcom/yingyonghui/market/eg;->notifyDataSetChanged()V

    .line 170
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityGridCategory;->a()V

    .line 171
    return-void

    .line 149
    :cond_1
    if-ne v1, v6, :cond_2

    .line 150
    iget-object v0, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lcom/yingyonghui/market/ActivityGridCategory;->e:I

    invoke-static {v0, v1}, Lcom/yingyonghui/market/online/e;->b(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 152
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/ActivityGridCategory;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 153
    :cond_2
    const/16 v2, 0x3e5

    if-ne v1, v2, :cond_0

    .line 154
    iget-object v0, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/yingyonghui/market/online/e;->g(Ljava/lang/String;)Lcom/yingyonghui/market/model/k;

    move-result-object v1

    .line 155
    if-eqz v1, :cond_3

    iget v0, v1, Lcom/yingyonghui/market/model/k;->a:I

    if-eqz v0, :cond_3

    .line 156
    invoke-virtual {p0, v7}, Lcom/yingyonghui/market/ActivityGridCategory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/widget/CategoryAppBanner;

    invoke-virtual {v0, v4}, Lcom/yingyonghui/market/widget/CategoryAppBanner;->setVisibility(I)V

    iget-object v2, v1, Lcom/yingyonghui/market/model/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/yingyonghui/market/widget/CategoryAppBanner;->a(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/yingyonghui/market/model/k;->d:Ljava/lang/String;

    iget v3, v1, Lcom/yingyonghui/market/model/k;->a:I

    invoke-virtual {v0, v2, v3}, Lcom/yingyonghui/market/widget/CategoryAppBanner;->a(Ljava/lang/String;I)V

    iget-object v2, v1, Lcom/yingyonghui/market/model/k;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/yingyonghui/market/widget/CategoryAppBanner;->b(Ljava/lang/String;)V

    new-instance v2, Lcom/yingyonghui/market/et;

    invoke-direct {v2, p0, v1}, Lcom/yingyonghui/market/et;-><init>(Lcom/yingyonghui/market/ActivityGridCategory;Lcom/yingyonghui/market/model/k;)V

    invoke-virtual {v0, v2}, Lcom/yingyonghui/market/widget/CategoryAppBanner;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v7}, Lcom/yingyonghui/market/ActivityGridCategory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/widget/CategoryAppBanner;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42b4

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityGridCategory;->g:Lcom/yingyonghui/market/view/CategoryGridView;

    invoke-virtual {v2, v1}, Lcom/yingyonghui/market/view/CategoryGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4}, Lcom/yingyonghui/market/widget/CategoryAppBanner;->setVisibility(I)V

    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityGridCategory;->a()V

    .line 159
    :cond_3
    sget-object v0, Lcom/yingyonghui/market/by;->j:Ljava/lang/String;

    iget v1, p0, Lcom/yingyonghui/market/ActivityGridCategory;->e:I

    invoke-static {v0, v1}, Lcom/yingyonghui/market/online/e;->a(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 163
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/yingyonghui/market/ActivityGridCategory;->m:Z

    .line 164
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/ActivityGridCategory;->a(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 167
    :cond_4
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityGridCategory;->a:Lcom/yingyonghui/market/online/e;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityGridCategory;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityGridCategory;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, v6, v2}, Lcom/yingyonghui/market/online/e;->c(Ljava/lang/String;ILandroid/os/Handler;)V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 276
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 277
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityGridCategory;->a()V

    .line 278
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x1e

    .line 62
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    if-nez p1, :cond_4

    .line 65
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityGridCategory;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 66
    if-eqz v1, :cond_1

    const-string v0, "category_type"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/yingyonghui/market/ActivityGridCategory;->d:Ljava/lang/String;

    .line 67
    if-eqz v1, :cond_2

    const-string v0, "category_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/yingyonghui/market/ActivityGridCategory;->e:I

    .line 68
    if-eqz v1, :cond_3

    const-string v0, "fromPage"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/yingyonghui/market/ActivityGridCategory;->f:Ljava/lang/String;

    .line 75
    :goto_3
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityGridCategory;->setContentView(I)V

    .line 76
    const-string v0, "ab_test_activity"

    const-string v1, "n"

    invoke-static {p0, v0, v1}, Lcom/yingyonghui/market/util/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/yingyonghui/market/ActivityGridCategory;->c:Z

    .line 79
    const v0, 0x7f0b008d

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityGridCategory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityGridCategory;->h:Landroid/view/View;

    .line 80
    const v0, 0x7f0b008c

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityGridCategory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/view/CategoryGridView;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityGridCategory;->g:Lcom/yingyonghui/market/view/CategoryGridView;

    .line 81
    const v0, 0x7f0b008e

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityGridCategory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityGridCategory;->i:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f0b0089

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityGridCategory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityGridCategory;->j:Landroid/widget/ScrollView;

    .line 84
    new-instance v0, Lcom/yingyonghui/market/log/m;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityGridCategory;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/yingyonghui/market/log/m;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityGridCategory;->l:Lcom/yingyonghui/market/log/m;

    .line 86
    const/4 v0, 0x0

    .line 87
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityGridCategory;->d:Ljava/lang/String;

    const-string v2, "category"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 88
    iget v1, p0, Lcom/yingyonghui/market/ActivityGridCategory;->e:I

    if-ne v1, v3, :cond_6

    .line 90
    sget-boolean v1, Lcom/yingyonghui/market/ActivityGridCategory;->c:Z

    if-eqz v1, :cond_5

    .line 92
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityGridCategory;->a:Lcom/yingyonghui/market/online/e;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityGridCategory;->b:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/yingyonghui/market/online/e;->b(Landroid/os/Handler;)V

    .line 104
    :goto_4
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 105
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/yingyonghui/market/ActivityGridCategory;->m:Z

    .line 106
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/ActivityGridCategory;->a(Ljava/util/ArrayList;)V

    .line 114
    :cond_0
    :goto_5
    return-void

    .line 66
    :cond_1
    const-string v0, ""

    goto/16 :goto_0

    .line 67
    :cond_2
    const/4 v0, -0x1

    goto/16 :goto_1

    .line 68
    :cond_3
    const-string v0, ""

    goto :goto_2

    .line 70
    :cond_4
    const-string v0, "category_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityGridCategory;->d:Ljava/lang/String;

    .line 71
    const-string v0, "category_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yingyonghui/market/ActivityGridCategory;->e:I

    .line 72
    const-string v0, "fromPage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityGridCategory;->f:Ljava/lang/String;

    goto/16 :goto_3

    .line 94
    :cond_5
    sget-object v0, Lcom/yingyonghui/market/by;->j:Ljava/lang/String;

    iget v1, p0, Lcom/yingyonghui/market/ActivityGridCategory;->e:I

    invoke-static {v0, v1}, Lcom/yingyonghui/market/online/e;->a(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_4

    .line 98
    :cond_6
    sget-object v0, Lcom/yingyonghui/market/by;->k:Ljava/lang/String;

    iget v1, p0, Lcom/yingyonghui/market/ActivityGridCategory;->e:I

    invoke-static {v0, v1}, Lcom/yingyonghui/market/online/e;->a(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_4

    .line 101
    :cond_7
    sget-object v0, Lcom/yingyonghui/market/by;->l:Ljava/lang/String;

    iget v1, p0, Lcom/yingyonghui/market/ActivityGridCategory;->e:I

    invoke-static {v0, v1}, Lcom/yingyonghui/market/online/e;->a(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_4

    .line 109
    :cond_8
    sget-boolean v0, Lcom/yingyonghui/market/ActivityGridCategory;->c:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/yingyonghui/market/ActivityGridCategory;->e:I

    if-eq v0, v3, :cond_0

    .line 111
    :cond_9
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityGridCategory;->a:Lcom/yingyonghui/market/online/e;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityGridCategory;->d:Ljava/lang/String;

    const/16 v2, 0x3e4

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityGridCategory;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yingyonghui/market/online/e;->c(Ljava/lang/String;ILandroid/os/Handler;)V

    goto :goto_5
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 236
    invoke-super {p0}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onResume()V

    .line 237
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityGridCategory;->a()V

    .line 238
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 123
    const-string v0, "category_type"

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityGridCategory;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v0, "category_id"

    iget v1, p0, Lcom/yingyonghui/market/ActivityGridCategory;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    const-string v0, "fromPage"

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityGridCategory;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 127
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method
