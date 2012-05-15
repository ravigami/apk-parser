.class public Lcom/yingyonghui/market/ActivityWeekly;
.super Lcom/yingyonghui/market/HttpServiceSupportForActivity;
.source "ActivityWeekly.java"


# static fields
.field private static final h:[I


# instance fields
.field private c:Landroid/widget/ScrollView;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/ImageButton;

.field private i:[Lcom/yingyonghui/market/view/WeeklyItemView;

.field private j:Ljava/util/ArrayList;

.field private k:Ljava/util/ArrayList;

.field private l:Lcom/yingyonghui/market/fj;

.field private m:Landroid/widget/ListView;

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Lcom/yingyonghui/market/log/m;

.field private q:Ljava/lang/String;

.field private r:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/yingyonghui/market/ActivityWeekly;->h:[I

    return-void

    :array_0
    .array-data 0x4
        0x4et 0x1t 0xbt 0x7ft
        0x4ft 0x1t 0xbt 0x7ft
        0x50t 0x1t 0xbt 0x7ft
        0x51t 0x1t 0xbt 0x7ft
        0x52t 0x1t 0xbt 0x7ft
        0x53t 0x1t 0xbt 0x7ft
        0x54t 0x1t 0xbt 0x7ft
        0x55t 0x1t 0xbt 0x7ft
        0x56t 0x1t 0xbt 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;-><init>()V

    .line 78
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/yingyonghui/market/view/WeeklyItemView;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->i:[Lcom/yingyonghui/market/view/WeeklyItemView;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->j:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->k:Ljava/util/ArrayList;

    .line 206
    new-instance v0, Lcom/yingyonghui/market/s;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/s;-><init>(Lcom/yingyonghui/market/ActivityWeekly;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->r:Landroid/view/View$OnClickListener;

    .line 353
    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityWeekly;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->o:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Landroid/widget/ListView;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 461
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 462
    if-nez v3, :cond_0

    .line 477
    :goto_0
    return-void

    :cond_0
    move v0, v1

    move v2, v1

    .line 468
    :goto_1
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 469
    const/4 v4, 0x0

    invoke-interface {v3, v0, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 470
    invoke-virtual {v4, v1, v1}, Landroid/view/View;->measure(II)V

    .line 471
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v2, v4

    .line 468
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 474
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 475
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v1

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v1, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 476
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method static synthetic a()[I
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/yingyonghui/market/ActivityWeekly;->h:[I

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 158
    const v0, 0x7f0b014d

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityWeekly;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->c:Landroid/widget/ScrollView;

    .line 159
    const v0, 0x7f0b0158

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityWeekly;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->d:Landroid/view/View;

    .line 160
    const v0, 0x7f0b0159

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityWeekly;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->e:Landroid/widget/TextView;

    .line 162
    const v0, 0x7f0b015a

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityWeekly;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->f:Landroid/widget/RelativeLayout;

    .line 163
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->f:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b015c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->g:Landroid/widget/ImageButton;

    .line 166
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0x9

    if-ge v1, v0, :cond_0

    .line 167
    iget-object v2, p0, Lcom/yingyonghui/market/ActivityWeekly;->i:[Lcom/yingyonghui/market/view/WeeklyItemView;

    sget-object v0, Lcom/yingyonghui/market/ActivityWeekly;->h:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityWeekly;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/view/WeeklyItemView;

    aput-object v0, v2, v1

    .line 166
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->g:Landroid/widget/ImageButton;

    new-instance v1, Lcom/yingyonghui/market/u;

    invoke-direct {v1, p0}, Lcom/yingyonghui/market/u;-><init>(Lcom/yingyonghui/market/ActivityWeekly;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const v0, 0x7f0b0157

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityWeekly;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->m:Landroid/widget/ListView;

    .line 189
    return-void
.end method

.method static synthetic b(Lcom/yingyonghui/market/ActivityWeekly;)[Lcom/yingyonghui/market/view/WeeklyItemView;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->i:[Lcom/yingyonghui/market/view/WeeklyItemView;

    return-object v0
.end method

.method static synthetic c(Lcom/yingyonghui/market/ActivityWeekly;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 195
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityWeekly;->i:[Lcom/yingyonghui/market/view/WeeklyItemView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityWeekly;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/yingyonghui/market/view/WeeklyItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/yingyonghui/market/ActivityWeekly;)Lcom/yingyonghui/market/log/m;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->p:Lcom/yingyonghui/market/log/m;

    return-object v0
.end method

.method static synthetic e(Lcom/yingyonghui/market/ActivityWeekly;)Landroid/widget/ScrollView;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->c:Landroid/widget/ScrollView;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter

    .prologue
    .line 439
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    invoke-static {p1}, Lcom/yingyonghui/market/util/ab;->a(Ljava/lang/String;)Lcom/yingyonghui/market/model/m;

    move-result-object v0

    .line 440
    iget-object v0, v0, Lcom/yingyonghui/market/model/m;->a:Landroid/graphics/drawable/Drawable;

    .line 441
    if-nez v0, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityWeekly;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 444
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityWeekly;->a:Lcom/yingyonghui/market/online/e;

    const/16 v2, 0x391

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityWeekly;->b:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v3}, Lcom/yingyonghui/market/online/e;->e(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 447
    :cond_0
    return-object v0
.end method

.method protected final a(Landroid/os/Message;)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x9

    const/16 v6, 0x8

    const/4 v2, 0x0

    .line 264
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/yingyonghui/market/online/b;

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/yingyonghui/market/online/b;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    iget v1, v0, Lcom/yingyonghui/market/online/b;->c:I

    .line 270
    const/16 v3, 0x390

    if-ne v1, v3, :cond_7

    .line 273
    iget-object v0, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/yingyonghui/market/online/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->j:Ljava/util/ArrayList;

    .line 275
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v7, :cond_6

    .line 276
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_3

    .line 279
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/h;

    iget v0, v0, Lcom/yingyonghui/market/model/h;->d:I

    if-ge v0, v7, :cond_2

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/h;

    iget v0, v0, Lcom/yingyonghui/market/model/h;->d:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/h;

    iget-object v0, v0, Lcom/yingyonghui/market/model/h;->c:Ljava/lang/String;

    const-string v2, "weekly_app"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/b;

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/yingyonghui/market/model/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "--- "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/yingyonghui/market/model/b;->d:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "--- "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/yingyonghui/market/model/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "--- "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/yingyonghui/market/model/b;->e:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    iget-object v2, p0, Lcom/yingyonghui/market/ActivityWeekly;->i:[Lcom/yingyonghui/market/view/WeeklyItemView;

    iget v4, v0, Lcom/yingyonghui/market/model/b;->d:I

    aget-object v2, v2, v4

    iget-object v4, v0, Lcom/yingyonghui/market/model/b;->e:Ljava/lang/String;

    iget v5, v0, Lcom/yingyonghui/market/model/b;->d:I

    invoke-virtual {v2, v4, v5}, Lcom/yingyonghui/market/view/WeeklyItemView;->a(Ljava/lang/String;I)V

    .line 288
    iget-object v2, p0, Lcom/yingyonghui/market/ActivityWeekly;->i:[Lcom/yingyonghui/market/view/WeeklyItemView;

    iget v4, v0, Lcom/yingyonghui/market/model/b;->d:I

    aget-object v2, v2, v4

    iget-object v4, v0, Lcom/yingyonghui/market/model/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/yingyonghui/market/view/WeeklyItemView;->a(Ljava/lang/String;)V

    .line 289
    iget-object v2, p0, Lcom/yingyonghui/market/ActivityWeekly;->i:[Lcom/yingyonghui/market/view/WeeklyItemView;

    iget v4, v0, Lcom/yingyonghui/market/model/b;->d:I

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/yingyonghui/market/view/WeeklyItemView;->a()V

    .line 291
    iget-object v2, p0, Lcom/yingyonghui/market/ActivityWeekly;->i:[Lcom/yingyonghui/market/view/WeeklyItemView;

    iget v0, v0, Lcom/yingyonghui/market/model/b;->d:I

    aget-object v0, v2, v0

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/view/WeeklyItemView;->a(I)V

    .line 276
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/h;

    iget-object v0, v0, Lcom/yingyonghui/market/model/h;->c:Ljava/lang/String;

    const-string v2, "weekly_news"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/d;

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/yingyonghui/market/model/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "--- "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/yingyonghui/market/model/d;->d:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "--- "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/yingyonghui/market/model/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "--- "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/yingyonghui/market/model/d;->e:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    iget-object v2, p0, Lcom/yingyonghui/market/ActivityWeekly;->i:[Lcom/yingyonghui/market/view/WeeklyItemView;

    iget v4, v0, Lcom/yingyonghui/market/model/d;->d:I

    aget-object v2, v2, v4

    iget-object v4, v0, Lcom/yingyonghui/market/model/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/yingyonghui/market/view/WeeklyItemView;->a(Ljava/lang/String;)V

    .line 298
    iget-object v2, p0, Lcom/yingyonghui/market/ActivityWeekly;->i:[Lcom/yingyonghui/market/view/WeeklyItemView;

    iget v4, v0, Lcom/yingyonghui/market/model/d;->d:I

    aget-object v2, v2, v4

    iget-object v4, v0, Lcom/yingyonghui/market/model/d;->e:Ljava/lang/String;

    iget v5, v0, Lcom/yingyonghui/market/model/d;->d:I

    invoke-virtual {v2, v4, v5}, Lcom/yingyonghui/market/view/WeeklyItemView;->a(Ljava/lang/String;I)V

    .line 300
    iget-object v2, p0, Lcom/yingyonghui/market/ActivityWeekly;->i:[Lcom/yingyonghui/market/view/WeeklyItemView;

    iget v0, v0, Lcom/yingyonghui/market/model/d;->d:I

    aget-object v0, v2, v0

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/view/WeeklyItemView;->a(I)V

    goto :goto_1

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->k:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityWeekly;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 308
    :cond_3
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 309
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->l:Lcom/yingyonghui/market/fj;

    if-nez v0, :cond_4

    .line 310
    new-instance v0, Lcom/yingyonghui/market/fj;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityWeekly;->k:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1}, Lcom/yingyonghui/market/fj;-><init>(Lcom/yingyonghui/market/ActivityWeekly;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->l:Lcom/yingyonghui/market/fj;

    .line 311
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityWeekly;->l:Lcom/yingyonghui/market/fj;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 312
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->m:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityWeekly;->a(Landroid/widget/ListView;)V

    .line 315
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->c:Landroid/widget/ScrollView;

    new-instance v1, Lcom/yingyonghui/market/q;

    invoke-direct {v1, p0}, Lcom/yingyonghui/market/q;-><init>(Lcom/yingyonghui/market/ActivityWeekly;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 324
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityWeekly;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityWeekly;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->d:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 329
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityWeekly;->c()V

    .line 331
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityWeekly;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityWeekly;->p:Lcom/yingyonghui/market/log/m;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityWeekly;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityWeekly;->j:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/log/l;->d(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/util/List;)V

    .line 345
    :cond_5
    :goto_2
    return-void

    .line 333
    :cond_6
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->d:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 336
    :cond_7
    const/16 v3, 0x391

    if-ne v1, v3, :cond_5

    .line 337
    iget-object v1, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 338
    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 339
    if-eqz v1, :cond_5

    .line 340
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 341
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    iget-object v0, v0, Lcom/yingyonghui/market/online/b;->e:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/yingyonghui/market/util/ab;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 342
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->l:Lcom/yingyonghui/market/fj;

    invoke-virtual {v0}, Lcom/yingyonghui/market/fj;->notifyDataSetChanged()V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityWeekly;->requestWindowFeature(I)Z

    .line 107
    const v0, 0x7f030068

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityWeekly;->setContentView(I)V

    .line 109
    if-nez p1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityWeekly;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 111
    const-string v1, "weekly_item_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/yingyonghui/market/ActivityWeekly;->n:I

    .line 112
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/ActivityWeekly;->o:Ljava/lang/String;

    .line 113
    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->q:Ljava/lang/String;

    .line 120
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/yingyonghui/market/ActivityWeekly;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    new-instance v0, Lcom/yingyonghui/market/log/m;

    const-string v1, "Weekly"

    invoke-direct {v0, v1}, Lcom/yingyonghui/market/log/m;-><init>(Ljava/lang/String;)V

    const-string v1, "weeklyId"

    iget v2, p0, Lcom/yingyonghui/market/ActivityWeekly;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yingyonghui/market/log/m;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yingyonghui/market/log/m;

    move-result-object v0

    const-string v1, "from"

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityWeekly;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yingyonghui/market/log/m;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yingyonghui/market/log/m;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->p:Lcom/yingyonghui/market/log/m;

    .line 124
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityWeekly;->b()V

    .line 125
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->a:Lcom/yingyonghui/market/online/e;

    iget v1, p0, Lcom/yingyonghui/market/ActivityWeekly;->n:I

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityWeekly;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/yingyonghui/market/online/e;->e(ILandroid/os/Handler;)V

    .line 126
    return-void

    .line 115
    :cond_0
    const-string v0, "weekly_item_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->n:I

    .line 116
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->o:Ljava/lang/String;

    .line 117
    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityWeekly;->q:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onDestroy()V

    .line 153
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 145
    invoke-super {p0}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onPause()V

    .line 146
    invoke-static {p0}, Lcom/a/a/c;->a(Landroid/content/Context;)V

    .line 147
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 139
    invoke-super {p0}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onResume()V

    .line 140
    invoke-static {p0}, Lcom/a/a/c;->b(Landroid/content/Context;)V

    .line 141
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 132
    const-string v0, "weekly_item_id"

    iget v1, p0, Lcom/yingyonghui/market/ActivityWeekly;->n:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 133
    const-string v0, ""

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityWeekly;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v0, "from"

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityWeekly;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method
