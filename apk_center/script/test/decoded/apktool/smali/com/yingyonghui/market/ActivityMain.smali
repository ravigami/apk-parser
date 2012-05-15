.class public Lcom/yingyonghui/market/ActivityMain;
.super Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;
.source "ActivityMain.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field public static c:Landroid/widget/TextView;

.field private static h:I

.field private static k:Landroid/widget/TabWidget;

.field private static o:Ljava/lang/String;

.field private static final p:[Ljava/lang/String;


# instance fields
.field private d:Landroid/view/LayoutInflater;

.field private e:Landroid/widget/TabHost;

.field private f:Landroid/widget/TabWidget;

.field private g:I

.field private i:Ljava/util/ArrayList;

.field private j:Landroid/content/pm/PackageManager;

.field private l:Lcom/yingyonghui/market/util/z;

.field private m:J

.field private n:J

.field private final q:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    sput v2, Lcom/yingyonghui/market/ActivityMain;->h:I

    .line 98
    const-string v0, ""

    sput-object v0, Lcom/yingyonghui/market/ActivityMain;->o:Ljava/lang/String;

    .line 101
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "apkid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apkname"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "lastmodifiedtime"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "pkgname"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "permission"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "promotion_agent"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "promotion_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pubkey_hash"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "rating"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "rating_count"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "size"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "version_code"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "version_name"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "apk_url"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "flg"

    aput-object v2, v0, v1

    sput-object v0, Lcom/yingyonghui/market/ActivityMain;->p:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 61
    invoke-direct {p0}, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;-><init>()V

    .line 94
    iput-wide v0, p0, Lcom/yingyonghui/market/ActivityMain;->m:J

    .line 95
    iput-wide v0, p0, Lcom/yingyonghui/market/ActivityMain;->n:J

    .line 787
    new-instance v0, Lcom/yingyonghui/market/ah;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/ah;-><init>(Lcom/yingyonghui/market/ActivityMain;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->q:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 593
    if-nez p1, :cond_0

    .line 594
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 595
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityMain;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 596
    iget-object v2, p0, Lcom/yingyonghui/market/ActivityMain;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 597
    iget-object v3, p0, Lcom/yingyonghui/market/ActivityMain;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 598
    iget-object v4, p0, Lcom/yingyonghui/market/ActivityMain;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 625
    :goto_0
    const v5, 0x7f0200aa

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 626
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 627
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 628
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 629
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 630
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 634
    const v5, 0x7f0b0119

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 635
    const v0, 0x7f0b0119

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f08000f

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 636
    const v0, 0x7f0b0119

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 637
    const v0, 0x7f0b0119

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 638
    const v0, 0x7f0b0119

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 641
    iput p1, p0, Lcom/yingyonghui/market/ActivityMain;->g:I

    .line 642
    return-void

    .line 599
    :cond_0
    if-ne p1, v3, :cond_1

    .line 600
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 601
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityMain;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 602
    iget-object v2, p0, Lcom/yingyonghui/market/ActivityMain;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 603
    iget-object v3, p0, Lcom/yingyonghui/market/ActivityMain;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 604
    iget-object v4, p0, Lcom/yingyonghui/market/ActivityMain;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    goto/16 :goto_0

    .line 605
    :cond_1
    if-ne p1, v4, :cond_2

    .line 606
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 607
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityMain;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 608
    iget-object v2, p0, Lcom/yingyonghui/market/ActivityMain;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 609
    iget-object v3, p0, Lcom/yingyonghui/market/ActivityMain;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 610
    iget-object v4, p0, Lcom/yingyonghui/market/ActivityMain;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    goto/16 :goto_0

    .line 611
    :cond_2
    if-ne p1, v5, :cond_3

    .line 612
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 613
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityMain;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 614
    iget-object v2, p0, Lcom/yingyonghui/market/ActivityMain;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 615
    iget-object v3, p0, Lcom/yingyonghui/market/ActivityMain;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 616
    iget-object v4, p0, Lcom/yingyonghui/market/ActivityMain;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    goto/16 :goto_0

    .line 618
    :cond_3
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 619
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityMain;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 620
    iget-object v2, p0, Lcom/yingyonghui/market/ActivityMain;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 621
    iget-object v3, p0, Lcom/yingyonghui/market/ActivityMain;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 622
    iget-object v4, p0, Lcom/yingyonghui/market/ActivityMain;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityMain;)V
    .locals 3
    .parameter

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityMain;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/pm/PackageManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityMain;->a:Lcom/yingyonghui/market/online/e;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityMain;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2}, Lcom/yingyonghui/market/online/e;->a(Ljava/util/ArrayList;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic b(Lcom/yingyonghui/market/ActivityMain;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->j:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic b()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/yingyonghui/market/ActivityMain;->p:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()I
    .locals 2

    .prologue
    .line 61
    sget v0, Lcom/yingyonghui/market/ActivityMain;->h:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/yingyonghui/market/ActivityMain;->h:I

    return v0
.end method

.method static synthetic c(Lcom/yingyonghui/market/ActivityMain;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/yingyonghui/market/ActivityMain;->h:I

    return v0
.end method

.method static synthetic e()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/yingyonghui/market/ActivityMain;->h:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/yingyonghui/market/ActivityMain;->h:I

    return v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityMain;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 770
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityMain;->f:Landroid/widget/TabWidget;

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v1

    .line 771
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    div-int/2addr v0, v1

    const/4 v3, -0x2

    invoke-direct {v2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 772
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 773
    iget-object v3, p0, Lcom/yingyonghui/market/ActivityMain;->f:Landroid/widget/TabWidget;

    invoke-virtual {v3, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 772
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 774
    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityMain;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 785
    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/Message;)V
    .locals 8
    .parameter

    .prologue
    .line 352
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/yingyonghui/market/online/b;

    .line 353
    iget v1, v0, Lcom/yingyonghui/market/online/b;->c:I

    sparse-switch v1, :sswitch_data_0

    .line 568
    :goto_0
    return-void

    .line 357
    :sswitch_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/yingyonghui/market/ActivityMain;->m:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/yingyonghui/market/ActivityMain;->n:J

    .line 359
    new-instance v1, Lorg/json/JSONObject;

    iget-object v0, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 361
    const-string v0, "selfUpdateMessage"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 362
    const-string v0, "selfUpdate"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 363
    const-string v0, "selfUpdateMust"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 364
    const-string v0, "selfUpdateUrl"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 365
    const-string v0, "app_trace_log_enable"

    const-string v6, "applogback"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "on"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {p0, v0, v6}, Lcom/yingyonghui/market/util/l;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 368
    const-string v0, "abtest_tag_002"

    const-string v6, "ab002"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/yingyonghui/market/util/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityMain;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/MarketApplication;

    .line 372
    if-eqz v3, :cond_0

    .line 373
    invoke-virtual {v0, v3}, Lcom/yingyonghui/market/MarketApplication;->a(Z)V

    .line 374
    invoke-virtual {v0, v4}, Lcom/yingyonghui/market/MarketApplication;->b(Z)V

    .line 375
    invoke-virtual {v0, v2}, Lcom/yingyonghui/market/MarketApplication;->a(Ljava/lang/String;)V

    .line 376
    invoke-virtual {v0, v5}, Lcom/yingyonghui/market/MarketApplication;->b(Ljava/lang/String;)V

    .line 378
    :cond_0
    if-eqz v4, :cond_2

    .line 379
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityMain;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 390
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/yingyonghui/market/ActivityMain;->n:J

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;J)V

    goto :goto_0

    .line 382
    :cond_2
    if-eqz v3, :cond_1

    .line 383
    const/16 v0, 0x64

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityMain;->showDialog(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 394
    :sswitch_1
    iget-object v0, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/yingyonghui/market/online/e;->g(Landroid/content/Context;Ljava/lang/String;)Lcom/yingyonghui/market/model/q;

    move-result-object v1

    .line 395
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityMain;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/MarketApplication;

    .line 396
    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/MarketApplication;->a(Lcom/yingyonghui/market/model/q;)V

    goto/16 :goto_0

    .line 401
    :sswitch_2
    new-instance v1, Lcom/yingyonghui/market/ai;

    invoke-direct {v1, p0, v0}, Lcom/yingyonghui/market/ai;-><init>(Lcom/yingyonghui/market/ActivityMain;Lcom/yingyonghui/market/online/b;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yingyonghui/market/ai;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 353
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x64 -> :sswitch_2
        0x65 -> :sswitch_1
    .end sparse-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x1

    .line 297
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 298
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 310
    :cond_0
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 300
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/yingyonghui/market/ActivityWarningExit;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/yingyonghui/market/ActivityMain;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 303
    :sswitch_1
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/yingyonghui/market/ActivityMain;->onTabChanged(Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityMain;->f:Landroid/widget/TabWidget;

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    .line 305
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityMain;->f:Landroid/widget/TabWidget;

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 298
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 281
    invoke-super {p0, p1, p2, p3}, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 282
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 283
    invoke-static {p0}, Lcom/yingyonghui/market/online/f;->a(Landroid/content/Context;)Lcom/yingyonghui/market/online/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yingyonghui/market/online/f;->a()V

    .line 284
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityMain;->g()V

    .line 285
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 287
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityMain;->f()V

    .line 270
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 271
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 124
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityMain;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 128
    const-string v1, "com.yingyonghui.market.action_no_update_response"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 129
    if-eqz v0, :cond_0

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yingyonghui/market/ActivityMain;->m:J

    .line 131
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->a:Lcom/yingyonghui/market/online/e;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityMain;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/online/e;->a(Landroid/os/Handler;)V

    .line 135
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityMain;->requestWindowFeature(I)Z

    .line 137
    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityMain;->setContentView(I)V

    .line 139
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->d:Landroid/view/LayoutInflater;

    .line 140
    new-instance v0, Lcom/yingyonghui/market/util/z;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/util/z;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->l:Lcom/yingyonghui/market/util/z;

    .line 143
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityMain;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->e:Landroid/widget/TabHost;

    .line 144
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->e:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->f:Landroid/widget/TabWidget;

    .line 145
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->f:Landroid/widget/TabWidget;

    sput-object v0, Lcom/yingyonghui/market/ActivityMain;->k:Landroid/widget/TabWidget;

    .line 146
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityMain;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->j:Landroid/content/pm/PackageManager;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->i:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f030053

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0b0119

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f090002

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b0118

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f020036

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->e:Landroid/widget/TabHost;

    const-string v2, "featured"

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/yingyonghui/market/ActivityTab1Featured;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityMain;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityMain;->e:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f030053

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0b0119

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f090003

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b0118

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f020035

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->e:Landroid/widget/TabHost;

    const-string v2, "top"

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/yingyonghui/market/ActivityTab2Top;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityMain;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityMain;->e:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f030053

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0b0119

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f090004

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b0118

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f02002f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->e:Landroid/widget/TabHost;

    const-string v2, "category"

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/yingyonghui/market/ActivityTab3Category;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityMain;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityMain;->e:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f030053

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0b0119

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0900c6

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b0118

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f020038

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->e:Landroid/widget/TabHost;

    const-string v2, "search"

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/yingyonghui/market/ActivityTab4Search;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityMain;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityMain;->e:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f030053

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0b0119

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f090005

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b0118

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f020031

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->e:Landroid/widget/TabHost;

    const-string v2, "manage"

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/yingyonghui/market/ActivityTab5Manage;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityMain;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityMain;->e:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    sget-object v0, Lcom/yingyonghui/market/ActivityMain;->c:Landroid/widget/TextView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->i:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f0b011a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/yingyonghui/market/ActivityMain;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityMain;->f()V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->e:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    invoke-direct {p0, v8}, Lcom/yingyonghui/market/ActivityMain;->a(I)V

    .line 149
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityMain;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/MarketApplication;

    .line 152
    const-string v1, "abtest_tag_002"

    const-string v2, "a"

    invoke-static {p0, v1, v2}, Lcom/yingyonghui/market/util/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/yingyonghui/market/ActivityMain;->o:Ljava/lang/String;

    .line 155
    invoke-static {p0}, Lcom/yingyonghui/market/util/g;->a(Landroid/content/Context;)Z

    move-result v1

    .line 156
    invoke-static {p0}, Lcom/yingyonghui/market/util/g;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "WiFi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 157
    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    .line 158
    const-string v1, "show_display_icons_dialog"

    const-string v2, "setting"

    invoke-virtual {p0, v2, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    const-string v1, "checkbox_display_icons"

    invoke-static {p0, v1, v8}, Lcom/yingyonghui/market/util/l;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 162
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 163
    const-class v2, Lcom/yingyonghui/market/ActivityWarningShowIcon;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0, v1}, Lcom/yingyonghui/market/ActivityMain;->startActivity(Landroid/content/Intent;)V

    .line 169
    :cond_2
    invoke-static {p0}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 170
    invoke-virtual {v0}, Lcom/yingyonghui/market/MarketApplication;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 209
    :cond_3
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityMain;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yingyonghui/market/ActivityMain;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 212
    sget-object v0, Lcom/feedback/a;->a:Lcom/feedback/a;

    invoke-static {p0, v0}, Lcom/feedback/e;->a(Landroid/content/Context;Lcom/feedback/a;)V

    .line 214
    new-instance v0, Lcom/yingyonghui/market/ak;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/ak;-><init>(Lcom/yingyonghui/market/ActivityMain;)V

    new-array v1, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/ak;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 226
    return-void

    .line 174
    :cond_4
    const-string v0, "check_market_not_allow_install"

    invoke-static {p0, v0}, Lcom/yingyonghui/market/util/l;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    new-instance v0, Lcom/yingyonghui/market/fm;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/fm;-><init>(Landroid/content/Context;)V

    .line 177
    const v1, 0x7f09007f

    invoke-virtual {p0, v1}, Lcom/yingyonghui/market/ActivityMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/fm;->setTitle(Ljava/lang/CharSequence;)V

    .line 178
    const v1, 0x7f0900f5

    invoke-virtual {p0, v1}, Lcom/yingyonghui/market/ActivityMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/fm;->a(Ljava/lang/CharSequence;)V

    .line 179
    const v1, 0x7f0900f6

    new-instance v2, Lcom/yingyonghui/market/ap;

    invoke-direct {v2, p0}, Lcom/yingyonghui/market/ap;-><init>(Lcom/yingyonghui/market/ActivityMain;)V

    invoke-virtual {v0, v1, v2}, Lcom/yingyonghui/market/fm;->a(ILcom/yingyonghui/market/cf;)Lcom/yingyonghui/market/fm;

    .line 203
    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v4}, Lcom/yingyonghui/market/fm;->a(ILcom/yingyonghui/market/l;)Lcom/yingyonghui/market/fm;

    .line 204
    invoke-virtual {v0}, Lcom/yingyonghui/market/fm;->show()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 315
    packed-switch p1, :pswitch_data_0

    .line 332
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityMain;->l:Lcom/yingyonghui/market/util/z;

    if-eqz v1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->l:Lcom/yingyonghui/market/util/z;

    invoke-virtual {v0, p1}, Lcom/yingyonghui/market/util/z;->a(I)Landroid/app/Dialog;

    move-result-object v0

    .line 335
    :cond_0
    if-nez v0, :cond_1

    .line 336
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 338
    :cond_1
    :goto_0
    return-object v0

    .line 317
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090056

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090057

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090054

    new-instance v3, Lcom/yingyonghui/market/aj;

    invoke-direct {v3, p0}, Lcom/yingyonghui/market/aj;-><init>(Lcom/yingyonghui/market/ActivityMain;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090055

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 758
    invoke-static {p1}, Lcom/yingyonghui/market/util/p;->a(Landroid/view/Menu;)Z

    .line 759
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 251
    invoke-static {p0}, Lcom/yingyonghui/market/online/f;->a(Landroid/content/Context;)Lcom/yingyonghui/market/online/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/online/f;->a(I)V

    .line 252
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityMain;->g()V

    .line 253
    invoke-super {p0}, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->onDestroy()V

    .line 254
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 276
    invoke-virtual {p0, p1}, Lcom/yingyonghui/market/ActivityMain;->setIntent(Landroid/content/Intent;)V

    .line 277
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 764
    invoke-static {p0, p1}, Lcom/yingyonghui/market/util/p;->a(Landroid/app/Activity;Landroid/view/MenuItem;)Z

    .line 765
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 245
    invoke-super {p0}, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->onPause()V

    .line 246
    invoke-static {p0}, Lcom/a/a/c;->a(Landroid/content/Context;)V

    .line 247
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 344
    invoke-super {p0, p1, p2}, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 345
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->l:Lcom/yingyonghui/market/util/z;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->l:Lcom/yingyonghui/market/util/z;

    invoke-virtual {v0, p1, p2}, Lcom/yingyonghui/market/util/z;->a(ILandroid/app/Dialog;)V

    .line 348
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x4

    .line 230
    invoke-super {p0}, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->onResume()V

    .line 231
    invoke-static {p0}, Lcom/a/a/c;->b(Landroid/content/Context;)V

    .line 233
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityMain;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tabId"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 234
    if-ne v0, v2, :cond_0

    .line 235
    invoke-static {p0}, Lcom/yingyonghui/market/online/f;->a(Landroid/content/Context;)Lcom/yingyonghui/market/online/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yingyonghui/market/online/f;->a()V

    .line 236
    const-string v0, "manage"

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityMain;->onTabChanged(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->f:Landroid/widget/TabWidget;

    invoke-virtual {v0, v2}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    .line 238
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->f:Landroid/widget/TabWidget;

    invoke-virtual {v0, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 239
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityMain;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tabId"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 241
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 291
    const-string v0, "checked_self_update"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 292
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 293
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 258
    invoke-super {p0}, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->onStart()V

    .line 259
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityMain;->j:Landroid/content/pm/PackageManager;

    invoke-static {p0, v0}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    .line 260
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 648
    const-string v0, "featured"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    const/4 v0, 0x0

    .line 660
    :goto_0
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/ActivityMain;->a(I)V

    .line 661
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Lcom/yingyonghui/market/log/h;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 662
    return-void

    .line 650
    :cond_0
    const-string v0, "top"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    const/4 v0, 0x1

    goto :goto_0

    .line 652
    :cond_1
    const-string v0, "category"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 653
    const/4 v0, 0x2

    goto :goto_0

    .line 654
    :cond_2
    const-string v0, "search"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 655
    const/4 v0, 0x3

    goto :goto_0

    .line 657
    :cond_3
    const/4 v0, 0x4

    goto :goto_0
.end method
