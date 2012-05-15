.class public final Lcom/yingyonghui/market/ActivityListApp;
.super Lcom/yingyonghui/market/HttpServiceSupportForActivity;
.source "ActivityListApp.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:Z

.field private K:Lcom/yingyonghui/market/widget/SlowSpeedGallery;

.field private L:Lcom/yingyonghui/market/do;

.field private M:Ljava/util/ArrayList;

.field private N:Lcom/yingyonghui/market/x;

.field private final O:I

.field private P:Z

.field private Q:Z

.field private R:Ljava/lang/Thread;

.field private final S:Ljava/util/ArrayList;

.field private final T:Ljava/util/ArrayList;

.field private final U:I

.field private V:Z

.field private W:Z

.field private final X:Landroid/content/BroadcastReceiver;

.field private Y:Landroid/os/Handler;

.field private Z:Landroid/widget/AbsListView$OnScrollListener;

.field private final d:I

.field private e:I

.field private f:Z

.field private g:I

.field private h:Ljava/util/concurrent/ConcurrentHashMap;

.field private i:Ljava/util/HashSet;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/ListView;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private final o:I

.field private p:[I

.field private q:[Lcom/yingyonghui/market/widget/CategoryListHeader;

.field private r:Lcom/yingyonghui/market/br;

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:Lcom/yingyonghui/market/log/m;

.field private v:Z

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/yingyonghui/market/ActivityListApp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yingyonghui/market/ActivityListApp;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;-><init>()V

    .line 63
    const/16 v0, 0xa

    iput v0, p0, Lcom/yingyonghui/market/ActivityListApp;->d:I

    .line 68
    iput v1, p0, Lcom/yingyonghui/market/ActivityListApp;->g:I

    .line 69
    iput-object v3, p0, Lcom/yingyonghui/market/ActivityListApp;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    iput-object v3, p0, Lcom/yingyonghui/market/ActivityListApp;->i:Ljava/util/HashSet;

    .line 79
    iput v2, p0, Lcom/yingyonghui/market/ActivityListApp;->o:I

    .line 80
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->p:[I

    .line 82
    new-array v0, v2, [Lcom/yingyonghui/market/widget/CategoryListHeader;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->q:[Lcom/yingyonghui/market/widget/CategoryListHeader;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->D:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->E:Ljava/lang/String;

    .line 99
    const/4 v0, 0x3

    iput v0, p0, Lcom/yingyonghui/market/ActivityListApp;->F:I

    .line 100
    const/4 v0, 0x2

    iput v0, p0, Lcom/yingyonghui/market/ActivityListApp;->G:I

    .line 107
    iput v1, p0, Lcom/yingyonghui/market/ActivityListApp;->I:I

    .line 114
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/yingyonghui/market/ActivityListApp;->O:I

    .line 116
    iput-boolean v1, p0, Lcom/yingyonghui/market/ActivityListApp;->P:Z

    .line 118
    iput-object v3, p0, Lcom/yingyonghui/market/ActivityListApp;->R:Ljava/lang/Thread;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->S:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->T:Ljava/util/ArrayList;

    .line 121
    const/4 v0, 0x7

    iput v0, p0, Lcom/yingyonghui/market/ActivityListApp;->U:I

    .line 123
    iput-boolean v1, p0, Lcom/yingyonghui/market/ActivityListApp;->V:Z

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yingyonghui/market/ActivityListApp;->W:Z

    .line 372
    new-instance v0, Lcom/yingyonghui/market/cz;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/cz;-><init>(Lcom/yingyonghui/market/ActivityListApp;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->X:Landroid/content/BroadcastReceiver;

    .line 898
    new-instance v0, Lcom/yingyonghui/market/da;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/da;-><init>(Lcom/yingyonghui/market/ActivityListApp;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->Y:Landroid/os/Handler;

    .line 936
    new-instance v0, Lcom/yingyonghui/market/dc;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/dc;-><init>(Lcom/yingyonghui/market/ActivityListApp;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->Z:Landroid/widget/AbsListView$OnScrollListener;

    .line 1079
    return-void

    .line 80
    nop

    :array_0
    .array-data 0x4
        0x43t 0x1t 0xbt 0x7ft
        0x44t 0x1t 0xbt 0x7ft
        0x45t 0x1t 0xbt 0x7ft
        0x46t 0x1t 0xbt 0x7ft
    .end array-data
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityListApp;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput p1, p0, Lcom/yingyonghui/market/ActivityListApp;->F:I

    return p1
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityListApp;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityListApp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/yingyonghui/market/ActivityListApp;->D:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityListApp;[BLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x64

    .line 49
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    invoke-static {p2, v1}, Lcom/yingyonghui/market/util/ab;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->Y:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->Y:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->Y:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 638
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->r:Lcom/yingyonghui/market/br;

    if-nez v0, :cond_5

    .line 639
    new-instance v0, Lcom/yingyonghui/market/br;

    iget v2, p0, Lcom/yingyonghui/market/ActivityListApp;->B:I

    invoke-direct {v0, p0, p1, v2}, Lcom/yingyonghui/market/br;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->r:Lcom/yingyonghui/market/br;

    .line 640
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->k:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityListApp;->r:Lcom/yingyonghui/market/br;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 652
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->r:Lcom/yingyonghui/market/br;

    invoke-virtual {v0}, Lcom/yingyonghui/market/br;->getCount()I

    move-result v0

    iput v0, p0, Lcom/yingyonghui/market/ActivityListApp;->e:I

    .line 654
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_2

    .line 656
    :cond_1
    iput-boolean v5, p0, Lcom/yingyonghui/market/ActivityListApp;->f:Z

    .line 657
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->k:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityListApp;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 659
    :cond_2
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->k:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 660
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 663
    :cond_3
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityListApp;->s:Z

    if-eqz v0, :cond_8

    .line 664
    iput-boolean v5, p0, Lcom/yingyonghui/market/ActivityListApp;->J:Z

    .line 665
    iget v0, p0, Lcom/yingyonghui/market/ActivityListApp;->I:I

    if-ne v0, v5, :cond_7

    .line 666
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->j:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 667
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->k:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 681
    :cond_4
    :goto_1
    return-void

    .line 641
    :cond_5
    if-eqz p1, :cond_0

    .line 642
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 644
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->r:Lcom/yingyonghui/market/br;

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/br;->setNotifyOnChange(Z)V

    move v0, v1

    .line 645
    :goto_2
    if-ge v0, v2, :cond_6

    .line 646
    iget-object v3, p0, Lcom/yingyonghui/market/ActivityListApp;->r:Lcom/yingyonghui/market/br;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yingyonghui/market/br;->add(Ljava/lang/Object;)V

    .line 645
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 648
    :cond_6
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->r:Lcom/yingyonghui/market/br;

    invoke-virtual {v0, v5}, Lcom/yingyonghui/market/br;->setNotifyOnChange(Z)V

    .line 649
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->r:Lcom/yingyonghui/market/br;

    invoke-virtual {v0}, Lcom/yingyonghui/market/br;->notifyDataSetChanged()V

    goto :goto_0

    .line 668
    :cond_7
    iget v0, p0, Lcom/yingyonghui/market/ActivityListApp;->I:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 670
    :try_start_0
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->k:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityListApp;->K:Lcom/yingyonghui/market/widget/SlowSpeedGallery;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    :goto_3
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->j:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 675
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->k:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1

    .line 671
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 678
    :cond_8
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->j:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->k:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityListApp;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/yingyonghui/market/ActivityListApp;->P:Z

    return p1
.end method

.method static synthetic b(Lcom/yingyonghui/market/ActivityListApp;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput p1, p0, Lcom/yingyonghui/market/ActivityListApp;->G:I

    return p1
.end method

.method static synthetic b(Lcom/yingyonghui/market/ActivityListApp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/yingyonghui/market/ActivityListApp;->E:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/yingyonghui/market/ActivityListApp;)Z
    .locals 1
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yingyonghui/market/ActivityListApp;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/yingyonghui/market/ActivityListApp;)I
    .locals 1
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/yingyonghui/market/ActivityListApp;->e:I

    return v0
.end method

.method static synthetic c(Lcom/yingyonghui/market/ActivityListApp;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    invoke-static {p0}, Lcom/yingyonghui/market/util/ab;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    invoke-static {p1}, Lcom/yingyonghui/market/util/ab;->a(Ljava/lang/String;)Lcom/yingyonghui/market/model/m;

    move-result-object v1

    iget-object v0, v1, Lcom/yingyonghui/market/model/m;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    invoke-static {p0}, Lcom/yingyonghui/market/util/ab;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v2, v1, Lcom/yingyonghui/market/model/m;->b:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityListApp;->i:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityListApp;->a:Lcom/yingyonghui/market/online/e;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/yingyonghui/market/ActivityListApp;->b:Landroid/os/Handler;

    invoke-virtual {v2, p1, v3, v4}, Lcom/yingyonghui/market/online/e;->a(Ljava/lang/String;ZLandroid/os/Handler;)V

    :goto_1
    iput-boolean v5, v1, Lcom/yingyonghui/market/model/m;->b:Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/yingyonghui/market/ActivityListApp;->a:Lcom/yingyonghui/market/online/e;

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityListApp;->b:Landroid/os/Handler;

    invoke-virtual {v2, p1, v5, v3}, Lcom/yingyonghui/market/online/e;->a(Ljava/lang/String;ZLandroid/os/Handler;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/yingyonghui/market/ActivityListApp;I)Lcom/yingyonghui/market/log/m;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->u:Lcom/yingyonghui/market/log/m;

    invoke-virtual {v0}, Lcom/yingyonghui/market/log/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yingyonghui/market/log/m;->a(Ljava/lang/String;)Lcom/yingyonghui/market/log/m;

    move-result-object v0

    const-string v1, "module"

    const-string v2, "CatBanner"

    invoke-virtual {v0, v1, v2}, Lcom/yingyonghui/market/log/m;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yingyonghui/market/log/m;

    move-result-object v0

    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yingyonghui/market/log/m;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yingyonghui/market/log/m;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 320
    const/4 v4, 0x0

    .line 321
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->x:Ljava/lang/String;

    const-string v1, "app.list.featured"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    sget-object v0, Lcom/yingyonghui/market/by;->d:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/yingyonghui/market/online/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 335
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 337
    iput v2, p0, Lcom/yingyonghui/market/ActivityListApp;->g:I

    .line 340
    :cond_1
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 341
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    .line 342
    iget-object v3, p0, Lcom/yingyonghui/market/ActivityListApp;->h:Ljava/util/concurrent/ConcurrentHashMap;

    iget v5, v0, Lcom/yingyonghui/market/model/q;->e:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v3, p0, Lcom/yingyonghui/market/ActivityListApp;->i:Ljava/util/HashSet;

    iget-object v0, v0, Lcom/yingyonghui/market/model/q;->f:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 323
    :cond_2
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->x:Ljava/lang/String;

    const-string v1, "app.list.category"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 324
    iget v0, p0, Lcom/yingyonghui/market/ActivityListApp;->y:I

    if-ne v0, v6, :cond_0

    .line 325
    sget-object v0, Lcom/yingyonghui/market/by;->f:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/yingyonghui/market/online/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_0

    .line 327
    :cond_3
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->x:Ljava/lang/String;

    const-string v1, "app.list.fast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->z:Ljava/lang/String;

    const-string v1, "game"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 328
    sget-object v0, Lcom/yingyonghui/market/by;->g:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/yingyonghui/market/online/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_0

    .line 329
    :cond_4
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->x:Ljava/lang/String;

    const-string v1, "app.list.fast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->z:Ljava/lang/String;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 330
    sget-object v0, Lcom/yingyonghui/market/by;->h:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/yingyonghui/market/online/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    goto/16 :goto_0

    .line 331
    :cond_5
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->x:Ljava/lang/String;

    const-string v1, "app.list.rank"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    sget-object v0, Lcom/yingyonghui/market/by;->i:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/yingyonghui/market/online/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    goto/16 :goto_0

    .line 345
    :cond_6
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iput v0, p0, Lcom/yingyonghui/market/ActivityListApp;->g:I

    .line 347
    invoke-direct {p0, v4}, Lcom/yingyonghui/market/ActivityListApp;->a(Ljava/util/ArrayList;)V

    .line 349
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->u:Lcom/yingyonghui/market/log/m;

    iget v3, p0, Lcom/yingyonghui/market/ActivityListApp;->g:I

    iget-object v5, p0, Lcom/yingyonghui/market/ActivityListApp;->x:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;IILjava/util/List;Ljava/lang/String;)V

    .line 353
    :goto_2
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityListApp;->w:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->x:Ljava/lang/String;

    const-string v1, "app.list.category"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/yingyonghui/market/ActivityListApp;->y:I

    if-eq v0, v6, :cond_7

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityListApp;->a:Lcom/yingyonghui/market/online/e;

    const-string v4, "app.list.catfeatured"

    iget v5, p0, Lcom/yingyonghui/market/ActivityListApp;->y:I

    const/4 v7, 0x4

    iget-object v8, p0, Lcom/yingyonghui/market/ActivityListApp;->z:Ljava/lang/String;

    const/16 v9, 0x6e

    iget-object v10, p0, Lcom/yingyonghui/market/ActivityListApp;->b:Landroid/os/Handler;

    move v6, v2

    invoke-virtual/range {v3 .. v10}, Lcom/yingyonghui/market/online/e;->a(Ljava/lang/String;IIILjava/lang/String;ILandroid/os/Handler;)V

    .line 354
    :cond_7
    return-void

    .line 351
    :cond_8
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityListApp;->d()V

    goto :goto_2
.end method

.method static synthetic d(Lcom/yingyonghui/market/ActivityListApp;)I
    .locals 1
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/yingyonghui/market/ActivityListApp;->H:I

    return v0
.end method

.method private d()V
    .locals 13

    .prologue
    const/16 v11, 0x66

    const/4 v2, 0x1

    const/16 v6, 0x6d

    const/16 v8, 0xa

    .line 409
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityListApp;->f:Z

    if-eqz v0, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityListApp;->v:Z

    if-nez v0, :cond_0

    .line 413
    iput-boolean v2, p0, Lcom/yingyonghui/market/ActivityListApp;->v:Z

    .line 415
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityListApp;->W:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 416
    const/16 v4, 0x1e

    .line 417
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yingyonghui/market/ActivityListApp;->W:Z

    .line 422
    :goto_1
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->x:Ljava/lang/String;

    const-string v1, "app.list.featured"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 423
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->a:Lcom/yingyonghui/market/online/e;

    iget v1, p0, Lcom/yingyonghui/market/ActivityListApp;->e:I

    iget v2, p0, Lcom/yingyonghui/market/ActivityListApp;->g:I

    sub-int/2addr v1, v2

    const/16 v2, 0x6b

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityListApp;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/yingyonghui/market/online/e;->a(IIILandroid/os/Handler;)V

    goto :goto_0

    :cond_2
    move v4, v8

    .line 419
    goto :goto_1

    .line 424
    :cond_3
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->x:Ljava/lang/String;

    const-string v1, "Latest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 425
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->a:Lcom/yingyonghui/market/online/e;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->x:Ljava/lang/String;

    iget v2, p0, Lcom/yingyonghui/market/ActivityListApp;->y:I

    iget v3, p0, Lcom/yingyonghui/market/ActivityListApp;->e:I

    iget v5, p0, Lcom/yingyonghui/market/ActivityListApp;->g:I

    sub-int/2addr v3, v5

    iget-object v5, p0, Lcom/yingyonghui/market/ActivityListApp;->z:Ljava/lang/String;

    iget-object v7, p0, Lcom/yingyonghui/market/ActivityListApp;->b:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v7}, Lcom/yingyonghui/market/online/e;->a(Ljava/lang/String;IIILjava/lang/String;ILandroid/os/Handler;)V

    goto :goto_0

    .line 428
    :cond_4
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->x:Ljava/lang/String;

    const-string v1, "app.list.category"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 429
    iget v0, p0, Lcom/yingyonghui/market/ActivityListApp;->y:I

    if-ne v0, v2, :cond_5

    .line 430
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->a:Lcom/yingyonghui/market/online/e;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->x:Ljava/lang/String;

    iget v2, p0, Lcom/yingyonghui/market/ActivityListApp;->y:I

    iget v3, p0, Lcom/yingyonghui/market/ActivityListApp;->e:I

    iget-object v5, p0, Lcom/yingyonghui/market/ActivityListApp;->z:Ljava/lang/String;

    iget-object v7, p0, Lcom/yingyonghui/market/ActivityListApp;->b:Landroid/os/Handler;

    move v4, v8

    invoke-virtual/range {v0 .. v7}, Lcom/yingyonghui/market/online/e;->a(Ljava/lang/String;IIILjava/lang/String;ILandroid/os/Handler;)V

    .line 433
    :cond_5
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityListApp;->V:Z

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->a:Lcom/yingyonghui/market/online/e;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->x:Ljava/lang/String;

    iget v2, p0, Lcom/yingyonghui/market/ActivityListApp;->y:I

    iget v3, p0, Lcom/yingyonghui/market/ActivityListApp;->e:I

    iget-object v5, p0, Lcom/yingyonghui/market/ActivityListApp;->z:Ljava/lang/String;

    iget-object v7, p0, Lcom/yingyonghui/market/ActivityListApp;->b:Landroid/os/Handler;

    move v4, v8

    invoke-virtual/range {v0 .. v7}, Lcom/yingyonghui/market/online/e;->a(Ljava/lang/String;IIILjava/lang/String;ILandroid/os/Handler;)V

    goto/16 :goto_0

    .line 438
    :cond_6
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->x:Ljava/lang/String;

    const-string v1, "app.list.fast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 439
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->a:Lcom/yingyonghui/market/online/e;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityListApp;->x:Ljava/lang/String;

    iget v0, p0, Lcom/yingyonghui/market/ActivityListApp;->e:I

    iget v3, p0, Lcom/yingyonghui/market/ActivityListApp;->g:I

    sub-int v3, v0, v3

    iget-object v5, p0, Lcom/yingyonghui/market/ActivityListApp;->z:Ljava/lang/String;

    iget-object v7, p0, Lcom/yingyonghui/market/ActivityListApp;->b:Landroid/os/Handler;

    move v6, v11

    invoke-virtual/range {v1 .. v7}, Lcom/yingyonghui/market/online/e;->a(Ljava/lang/String;IILjava/lang/String;ILandroid/os/Handler;)V

    goto/16 :goto_0

    .line 440
    :cond_7
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->x:Ljava/lang/String;

    const-string v1, "app.list.rank"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 441
    iget-object v5, p0, Lcom/yingyonghui/market/ActivityListApp;->a:Lcom/yingyonghui/market/online/e;

    iget-object v6, p0, Lcom/yingyonghui/market/ActivityListApp;->x:Ljava/lang/String;

    iget-object v7, p0, Lcom/yingyonghui/market/ActivityListApp;->z:Ljava/lang/String;

    iget-object v8, p0, Lcom/yingyonghui/market/ActivityListApp;->A:Ljava/lang/String;

    iget v0, p0, Lcom/yingyonghui/market/ActivityListApp;->e:I

    iget v1, p0, Lcom/yingyonghui/market/ActivityListApp;->g:I

    sub-int v9, v0, v1

    iget-object v12, p0, Lcom/yingyonghui/market/ActivityListApp;->b:Landroid/os/Handler;

    move v10, v4

    invoke-virtual/range {v5 .. v12}, Lcom/yingyonghui/market/online/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V

    goto/16 :goto_0

    .line 442
    :cond_8
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->x:Ljava/lang/String;

    const-string v1, "relative_app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 443
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->a:Lcom/yingyonghui/market/online/e;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->C:Ljava/lang/String;

    iget v2, p0, Lcom/yingyonghui/market/ActivityListApp;->e:I

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityListApp;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yingyonghui/market/online/e;->a(Ljava/lang/String;ILandroid/os/Handler;)V

    goto/16 :goto_0

    .line 444
    :cond_9
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->x:Ljava/lang/String;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->a:Lcom/yingyonghui/market/online/e;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->D:Ljava/lang/String;

    iget v2, p0, Lcom/yingyonghui/market/ActivityListApp;->H:I

    const/16 v3, 0x64

    iget-object v4, p0, Lcom/yingyonghui/market/ActivityListApp;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/yingyonghui/market/online/e;->a(Ljava/lang/String;IILandroid/os/Handler;)V

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/yingyonghui/market/ActivityListApp;)Lcom/yingyonghui/market/br;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->r:Lcom/yingyonghui/market/br;

    return-object v0
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 616
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->M:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 617
    new-instance v0, Lcom/yingyonghui/market/do;

    invoke-direct {v0, p0, p0}, Lcom/yingyonghui/market/do;-><init>(Lcom/yingyonghui/market/ActivityListApp;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->L:Lcom/yingyonghui/market/do;

    .line 618
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->K:Lcom/yingyonghui/market/widget/SlowSpeedGallery;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->L:Lcom/yingyonghui/market/do;

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/widget/SlowSpeedGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 619
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->K:Lcom/yingyonghui/market/widget/SlowSpeedGallery;

    new-instance v1, Lcom/yingyonghui/market/cy;

    invoke-direct {v1, p0}, Lcom/yingyonghui/market/cy;-><init>(Lcom/yingyonghui/market/ActivityListApp;)V

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/widget/SlowSpeedGallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 620
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->K:Lcom/yingyonghui/market/widget/SlowSpeedGallery;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    rem-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/widget/SlowSpeedGallery;->setSelection(I)V

    .line 621
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->K:Lcom/yingyonghui/market/widget/SlowSpeedGallery;

    invoke-virtual {v0, v5}, Lcom/yingyonghui/market/widget/SlowSpeedGallery;->setVisibility(I)V

    .line 622
    new-instance v0, Lcom/yingyonghui/market/x;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/x;-><init>(Lcom/yingyonghui/market/ActivityListApp;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->N:Lcom/yingyonghui/market/x;

    .line 623
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->N:Lcom/yingyonghui/market/x;

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v5, v1, v2}, Lcom/yingyonghui/market/x;->sendEmptyMessageDelayed(IJ)Z

    .line 624
    const/4 v0, 0x1

    iput v0, p0, Lcom/yingyonghui/market/ActivityListApp;->I:I

    .line 626
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->u:Lcom/yingyonghui/market/log/m;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityListApp;->M:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/util/List;)V

    .line 631
    :goto_0
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityListApp;->J:Z

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->j:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 633
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->k:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 635
    :cond_0
    return-void

    .line 628
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/yingyonghui/market/ActivityListApp;->I:I

    goto :goto_0
.end method

.method static synthetic f(Lcom/yingyonghui/market/ActivityListApp;)Lcom/yingyonghui/market/br;
    .locals 1
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->r:Lcom/yingyonghui/market/br;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 830
    sget-object v0, Lcom/yingyonghui/market/by;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/yingyonghui/market/online/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->M:Ljava/util/ArrayList;

    .line 831
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->M:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 832
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    .line 833
    iget-object v2, p0, Lcom/yingyonghui/market/ActivityListApp;->i:Ljava/util/HashSet;

    iget-object v0, v0, Lcom/yingyonghui/market/model/q;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 835
    :cond_0
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityListApp;->e()V

    .line 839
    :goto_1
    return-void

    .line 837
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->a:Lcom/yingyonghui/market/online/e;

    const/16 v1, 0x69

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityListApp;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/yingyonghui/market/online/e;->c(ILandroid/os/Handler;)V

    goto :goto_1
.end method

.method static synthetic g(Lcom/yingyonghui/market/ActivityListApp;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/yingyonghui/market/ActivityListApp;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->k:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic i(Lcom/yingyonghui/market/ActivityListApp;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->n:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Lcom/yingyonghui/market/ActivityListApp;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityListApp;->d()V

    return-void
.end method

.method static synthetic k(Lcom/yingyonghui/market/ActivityListApp;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->D:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/yingyonghui/market/ActivityListApp;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->S:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic m(Lcom/yingyonghui/market/ActivityListApp;)Z
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityListApp;->Q:Z

    return v0
.end method

.method static synthetic n(Lcom/yingyonghui/market/ActivityListApp;)Z
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityListApp;->P:Z

    return v0
.end method

.method static synthetic o(Lcom/yingyonghui/market/ActivityListApp;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x63

    .line 49
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->T:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->T:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityListApp;->i:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityListApp;->a:Lcom/yingyonghui/market/online/e;

    iget-object v4, p0, Lcom/yingyonghui/market/ActivityListApp;->b:Landroid/os/Handler;

    invoke-virtual {v3, v0, v5, v4}, Lcom/yingyonghui/market/online/e;->d(Ljava/lang/String;ILandroid/os/Handler;)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/yingyonghui/market/ActivityListApp;->a:Lcom/yingyonghui/market/online/e;

    iget-object v4, p0, Lcom/yingyonghui/market/ActivityListApp;->b:Landroid/os/Handler;

    invoke-virtual {v3, v0, v5, v4}, Lcom/yingyonghui/market/online/e;->e(Ljava/lang/String;ILandroid/os/Handler;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->T:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    return-void
.end method

.method static synthetic p(Lcom/yingyonghui/market/ActivityListApp;)Z
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityListApp;->s:Z

    return v0
.end method

.method static synthetic q(Lcom/yingyonghui/market/ActivityListApp;)Lcom/yingyonghui/market/widget/SlowSpeedGallery;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->K:Lcom/yingyonghui/market/widget/SlowSpeedGallery;

    return-object v0
.end method

.method static synthetic r(Lcom/yingyonghui/market/ActivityListApp;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->M:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x63

    .line 859
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 860
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    invoke-static {p0}, Lcom/yingyonghui/market/util/ab;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 868
    :cond_0
    :goto_0
    return-object v0

    .line 862
    :cond_1
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    invoke-static {p1}, Lcom/yingyonghui/market/util/ab;->a(Ljava/lang/String;)Lcom/yingyonghui/market/model/m;

    move-result-object v0

    .line 863
    iget-object v0, v0, Lcom/yingyonghui/market/model/m;->a:Landroid/graphics/drawable/Drawable;

    .line 864
    if-nez v0, :cond_0

    .line 865
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    invoke-static {p0}, Lcom/yingyonghui/market/util/ab;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 866
    iget-boolean v1, p0, Lcom/yingyonghui/market/ActivityListApp;->P:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->i:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->a:Lcom/yingyonghui/market/online/e;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityListApp;->b:Landroid/os/Handler;

    invoke-virtual {v1, p1, v3, v2}, Lcom/yingyonghui/market/online/e;->d(Ljava/lang/String;ILandroid/os/Handler;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->a:Lcom/yingyonghui/market/online/e;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityListApp;->b:Landroid/os/Handler;

    invoke-virtual {v1, p1, v3, v2}, Lcom/yingyonghui/market/online/e;->e(Ljava/lang/String;ILandroid/os/Handler;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->T:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->T:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x7

    if-le v1, v2, :cond_4

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->T:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->T:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a()Lcom/yingyonghui/market/log/m;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->u:Lcom/yingyonghui/market/log/m;

    return-object v0
.end method

.method protected final a(Landroid/os/Message;)V
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 470
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/yingyonghui/market/online/b;

    .line 471
    iget v2, v0, Lcom/yingyonghui/market/online/b;->c:I

    packed-switch v2, :pswitch_data_0

    .line 609
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 481
    :pswitch_1
    iget v2, v0, Lcom/yingyonghui/market/online/b;->c:I

    const/16 v4, 0x64

    if-ne v2, v4, :cond_2

    .line 482
    iget-object v0, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/yingyonghui/market/online/e;->d(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    .line 483
    if-eqz v2, :cond_a

    array-length v0, v2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_a

    .line 484
    aget-object v0, v2, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/yingyonghui/market/ActivityListApp;->H:I

    .line 485
    aget-object v0, v2, v8

    check-cast v0, Ljava/util/ArrayList;

    :goto_1
    move-object v4, v0

    .line 492
    :goto_2
    if-eqz v4, :cond_3

    .line 493
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 494
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    .line 495
    iget-object v2, p0, Lcom/yingyonghui/market/ActivityListApp;->h:Ljava/util/concurrent/ConcurrentHashMap;

    iget v0, v0, Lcom/yingyonghui/market/model/q;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 497
    iget v0, p0, Lcom/yingyonghui/market/ActivityListApp;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yingyonghui/market/ActivityListApp;->g:I

    .line 498
    iget v0, p0, Lcom/yingyonghui/market/ActivityListApp;->g:I

    if-gez v0, :cond_1

    .line 499
    iput v3, p0, Lcom/yingyonghui/market/ActivityListApp;->g:I

    goto :goto_3

    .line 488
    :cond_2
    iget-object v0, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/yingyonghui/market/online/e;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_2

    .line 505
    :cond_3
    invoke-direct {p0, v4}, Lcom/yingyonghui/market/ActivityListApp;->a(Ljava/util/ArrayList;)V

    .line 507
    iput-boolean v3, p0, Lcom/yingyonghui/market/ActivityListApp;->v:Z

    .line 511
    if-nez v4, :cond_4

    .line 512
    :goto_4
    iget v0, p0, Lcom/yingyonghui/market/ActivityListApp;->e:I

    sub-int v2, v0, v3

    .line 513
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->u:Lcom/yingyonghui/market/log/m;

    iget-object v5, p0, Lcom/yingyonghui/market/ActivityListApp;->x:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;IILjava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 511
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_4

    .line 516
    :pswitch_2
    iget-object v0, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/yingyonghui/market/online/e;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->M:Ljava/util/ArrayList;

    .line 517
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityListApp;->e()V

    goto/16 :goto_0

    .line 520
    :pswitch_3
    iget-object v1, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v0, v0, Lcom/yingyonghui/market/online/b;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityListApp;->R:Ljava/lang/Thread;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityListApp;->R:Ljava/lang/Thread;

    if-nez v2, :cond_5

    iput-boolean v3, p0, Lcom/yingyonghui/market/ActivityListApp;->Q:Z

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/yingyonghui/market/fk;

    invoke-direct {v3, p0}, Lcom/yingyonghui/market/fk;-><init>(Lcom/yingyonghui/market/ActivityListApp;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v3, "image-decoder"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/yingyonghui/market/ActivityListApp;->R:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_5
    iget-object v2, p0, Lcom/yingyonghui/market/ActivityListApp;->S:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/yingyonghui/market/ActivityListApp;->S:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    new-instance v3, Lcom/yingyonghui/market/ay;

    invoke-direct {v3, v1, v0}, Lcom/yingyonghui/market/ay;-><init>([BLjava/lang/String;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->S:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityListApp;->P:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->S:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_5
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->Y:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->Y:Landroid/os/Handler;

    const/16 v3, 0x78

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 523
    :pswitch_4
    iget-object v1, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 524
    array-length v2, v1

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 525
    if-eqz v1, :cond_0

    .line 526
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 527
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    iget-object v0, v0, Lcom/yingyonghui/market/online/b;->e:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/yingyonghui/market/util/ab;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 528
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->L:Lcom/yingyonghui/market/do;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->L:Lcom/yingyonghui/market/do;

    invoke-virtual {v0}, Lcom/yingyonghui/market/do;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 537
    :pswitch_5
    iget-object v0, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/yingyonghui/market/online/e;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 539
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v7, :cond_9

    .line 541
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030065

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->l:Landroid/view/View;

    move v2, v3

    .line 542
    :goto_6
    if-ge v2, v7, :cond_7

    .line 543
    iget-object v5, p0, Lcom/yingyonghui/market/ActivityListApp;->q:[Lcom/yingyonghui/market/widget/CategoryListHeader;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->l:Landroid/view/View;

    iget-object v6, p0, Lcom/yingyonghui/market/ActivityListApp;->p:[I

    aget v6, v6, v2

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/widget/CategoryListHeader;

    aput-object v0, v5, v2

    .line 544
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->q:[Lcom/yingyonghui/market/widget/CategoryListHeader;

    aget-object v0, v0, v2

    const v5, 0x7f02000e

    invoke-virtual {v0, v5}, Lcom/yingyonghui/market/widget/CategoryListHeader;->setBackgroundResource(I)V

    .line 542
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    .line 548
    :cond_7
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->q:[Lcom/yingyonghui/market/widget/CategoryListHeader;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/yingyonghui/market/widget/CategoryListHeader;->a()V

    .line 550
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->k:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityListApp;->l:Landroid/view/View;

    invoke-virtual {v0, v2, v1, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 553
    :goto_7
    if-ge v3, v7, :cond_8

    .line 556
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->q:[Lcom/yingyonghui/market/widget/CategoryListHeader;

    aget-object v1, v0, v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    iget-object v2, v0, Lcom/yingyonghui/market/model/q;->f:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    iget v0, v0, Lcom/yingyonghui/market/model/q;->e:I

    invoke-virtual {v1, v2, v0}, Lcom/yingyonghui/market/widget/CategoryListHeader;->a(Ljava/lang/String;I)V

    .line 557
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->q:[Lcom/yingyonghui/market/widget/CategoryListHeader;

    aget-object v1, v0, v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    iget-object v0, v0, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/yingyonghui/market/widget/CategoryListHeader;->a(Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->q:[Lcom/yingyonghui/market/widget/CategoryListHeader;

    aget-object v1, v0, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090010

    invoke-virtual {p0, v2}, Lcom/yingyonghui/market/ActivityListApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    iget-object v0, v0, Lcom/yingyonghui/market/model/q;->p:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yingyonghui/market/widget/CategoryListHeader;->b(Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->q:[Lcom/yingyonghui/market/widget/CategoryListHeader;

    aget-object v0, v0, v3

    new-instance v1, Lcom/yingyonghui/market/db;

    invoke-direct {v1, p0, v4, v3}, Lcom/yingyonghui/market/db;-><init>(Lcom/yingyonghui/market/ActivityListApp;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/widget/CategoryListHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 553
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 592
    :cond_8
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->u:Lcom/yingyonghui/market/log/m;

    invoke-static {v0, v1, v4}, Lcom/yingyonghui/market/log/l;->b(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/util/List;)V

    .line 594
    :cond_9
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->x:Ljava/lang/String;

    const-string v1, "app.list.category"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->a:Lcom/yingyonghui/market/online/e;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->x:Ljava/lang/String;

    iget v2, p0, Lcom/yingyonghui/market/ActivityListApp;->y:I

    iget v3, p0, Lcom/yingyonghui/market/ActivityListApp;->e:I

    const/16 v4, 0xa

    iget-object v5, p0, Lcom/yingyonghui/market/ActivityListApp;->z:Ljava/lang/String;

    const/16 v6, 0x6d

    iget-object v7, p0, Lcom/yingyonghui/market/ActivityListApp;->b:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v7}, Lcom/yingyonghui/market/online/e;->a(Ljava/lang/String;IIILjava/lang/String;ILandroid/os/Handler;)V

    .line 604
    iput-boolean v8, p0, Lcom/yingyonghui/market/ActivityListApp;->V:Z

    goto/16 :goto_0

    :cond_a
    move-object v0, v1

    goto/16 :goto_1

    .line 471
    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method public final b()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->Y:Landroid/os/Handler;

    return-object v0
.end method

.method protected final b(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 777
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yingyonghui/market/ActivityListApp;->v:Z

    .line 778
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->b(Landroid/os/Message;)V

    .line 779
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 128
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListApp;->setContentView(I)V

    .line 131
    if-eqz p1, :cond_9

    .line 132
    const-string v0, "showTopApp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yingyonghui/market/ActivityListApp;->s:Z

    .line 133
    const-string v0, "fromPage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->t:Ljava/lang/String;

    .line 134
    const-string v0, "header"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yingyonghui/market/ActivityListApp;->w:Z

    .line 135
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->x:Ljava/lang/String;

    .line 136
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yingyonghui/market/ActivityListApp;->y:I

    .line 137
    const-string v0, "ranking_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->z:Ljava/lang/String;

    .line 138
    const-string v0, "list_order"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yingyonghui/market/ActivityListApp;->B:I

    .line 139
    const-string v0, "period"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->A:Ljava/lang/String;

    .line 140
    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->C:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->x:Ljava/lang/String;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "keyword"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->D:Ljava/lang/String;

    .line 144
    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->E:Ljava/lang/String;

    .line 145
    const-string v0, "searchType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yingyonghui/market/ActivityListApp;->F:I

    .line 146
    const-string v0, "source"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yingyonghui/market/ActivityListApp;->G:I

    .line 161
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 162
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->i:Ljava/util/HashSet;

    .line 165
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->t:Ljava/lang/String;

    const-string v1, "Featured"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/yingyonghui/market/log/m;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->t:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/yingyonghui/market/log/m;-><init>(Ljava/lang/String;)V

    :goto_1
    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->u:Lcom/yingyonghui/market/log/m;

    .line 167
    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->j:Landroid/view/View;

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->k:Landroid/widget/ListView;

    invoke-static {}, Lcom/yingyonghui/market/util/q;->a()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->k:Landroid/widget/ListView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setScrollbarFadingEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->k:Landroid/widget/ListView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    iget v0, p0, Lcom/yingyonghui/market/ActivityListApp;->y:I

    if-eq v0, v8, :cond_2

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030012

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->m:Landroid/view/View;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_2
    const v0, 0x7f0b006a

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->n:Landroid/view/View;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->x:Ljava/lang/String;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->n:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityListApp;->s:Z

    if-eqz v0, :cond_4

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030019

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/widget/SlowSpeedGallery;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->K:Lcom/yingyonghui/market/widget/SlowSpeedGallery;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->K:Lcom/yingyonghui/market/widget/SlowSpeedGallery;

    new-instance v1, Lcom/yingyonghui/market/ez;

    invoke-direct {v1}, Lcom/yingyonghui/market/ez;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/widget/SlowSpeedGallery;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->K:Lcom/yingyonghui/market/widget/SlowSpeedGallery;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityListApp;->f()V

    :cond_4
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityListApp;->w:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/yingyonghui/market/ActivityListApp;->y:I

    if-ne v0, v8, :cond_5

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030040

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->l:Landroid/view/View;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->l:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->l:Landroid/view/View;

    invoke-virtual {v0, v1, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_5
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->k:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->Z:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 169
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->x:Ljava/lang/String;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 170
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->j:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->k:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 176
    :goto_3
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->X:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yingyonghui/market/ActivityListApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.yingyonghui.market.DOWNLOAD_COMPLETED_2"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->X:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yingyonghui/market/ActivityListApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->x:Ljava/lang/String;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "broadcast_search_request"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->X:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yingyonghui/market/ActivityListApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    :cond_6
    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->x:Ljava/lang/String;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 180
    iput-boolean v5, p0, Lcom/yingyonghui/market/ActivityListApp;->f:Z

    .line 182
    iput v5, p0, Lcom/yingyonghui/market/ActivityListApp;->e:I

    .line 183
    iput v5, p0, Lcom/yingyonghui/market/ActivityListApp;->H:I

    .line 184
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->r:Lcom/yingyonghui/market/br;

    if-eqz v0, :cond_7

    .line 185
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->r:Lcom/yingyonghui/market/br;

    invoke-virtual {v0}, Lcom/yingyonghui/market/br;->clear()V

    .line 187
    :cond_7
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->j:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 188
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityListApp;->d()V

    .line 190
    :cond_8
    return-void

    .line 149
    :cond_9
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListApp;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 150
    const-string v1, "showTopApp"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yingyonghui/market/ActivityListApp;->s:Z

    .line 151
    const-string v1, "fromPage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->t:Ljava/lang/String;

    .line 152
    const-string v1, "header"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yingyonghui/market/ActivityListApp;->w:Z

    .line 153
    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->x:Ljava/lang/String;

    .line 154
    const-string v1, "_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/yingyonghui/market/ActivityListApp;->y:I

    .line 155
    const-string v1, "ranking_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->z:Ljava/lang/String;

    .line 156
    const-string v1, "list_order"

    const/16 v2, 0x384

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/yingyonghui/market/ActivityListApp;->B:I

    .line 157
    const-string v1, "period"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->A:Ljava/lang/String;

    .line 158
    const-string v1, "package_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->C:Ljava/lang/String;

    goto/16 :goto_0

    .line 165
    :cond_a
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->t:Ljava/lang/String;

    const-string v1, "Category"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/yingyonghui/market/log/m;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->t:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/yingyonghui/market/log/m;-><init>(Ljava/lang/String;)V

    const-string v1, "categoryId"

    iget v2, p0, Lcom/yingyonghui/market/ActivityListApp;->y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yingyonghui/market/log/m;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yingyonghui/market/log/m;

    move-result-object v0

    const-string v1, "rankingType"

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityListApp;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yingyonghui/market/log/m;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yingyonghui/market/log/m;

    move-result-object v0

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->t:Ljava/lang/String;

    const-string v1, "Rank"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/yingyonghui/market/log/m;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->t:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/yingyonghui/market/log/m;-><init>(Ljava/lang/String;)V

    const-string v1, "periodType"

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityListApp;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yingyonghui/market/log/m;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yingyonghui/market/log/m;

    move-result-object v0

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->t:Ljava/lang/String;

    const-string v1, "FastGame"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->t:Ljava/lang/String;

    const-string v1, "FastApp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    new-instance v0, Lcom/yingyonghui/market/log/m;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->t:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/yingyonghui/market/log/m;-><init>(Ljava/lang/String;)V

    const-string v1, "periodType"

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityListApp;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yingyonghui/market/log/m;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yingyonghui/market/log/m;

    move-result-object v0

    goto/16 :goto_1

    :cond_e
    new-instance v0, Lcom/yingyonghui/market/log/m;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->t:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/yingyonghui/market/log/m;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 167
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 173
    :cond_f
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityListApp;->c()V

    goto/16 :goto_3
.end method

.method public final onDestroy()V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onDestroy()V

    .line 242
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->X:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 243
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 802
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    .line 803
    if-nez v0, :cond_0

    .line 823
    :goto_0
    return-void

    .line 807
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 808
    const-class v2, Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    const-string v2, "_id"

    iget v3, v0, Lcom/yingyonghui/market/model/q;->e:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 810
    const-string v2, "title"

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 811
    const-string v2, "installed"

    iget v3, v0, Lcom/yingyonghui/market/model/q;->n:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 812
    const-string v2, "pkgName"

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 813
    const-string v2, "size"

    iget v3, v0, Lcom/yingyonghui/market/model/q;->o:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 814
    const-string v2, "versionCode"

    iget v3, v0, Lcom/yingyonghui/market/model/q;->s:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 815
    const-string v2, "promotionId"

    iget v3, v0, Lcom/yingyonghui/market/model/q;->E:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 816
    const-string v2, "promotionAgent"

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->F:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 817
    const-string v2, "promotionText"

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->H:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 818
    const-string v2, "promotionDownUrl"

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->G:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 819
    const-string v2, "from"

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityListApp;->u:Lcom/yingyonghui/market/log/m;

    const-string v4, "index"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/yingyonghui/market/log/m;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yingyonghui/market/log/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yingyonghui/market/log/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 821
    invoke-virtual {p0, v1}, Lcom/yingyonghui/market/ActivityListApp;->startActivity(Landroid/content/Intent;)V

    .line 822
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityListApp;->u:Lcom/yingyonghui/market/log/m;

    const-string v3, ""

    iget v0, v0, Lcom/yingyonghui/market/model/q;->e:I

    invoke-static {v1, v2, v3, p3, v0}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method protected final onPause()V
    .locals 2

    .prologue
    .line 233
    invoke-super {p0}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onPause()V

    .line 234
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityListApp;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->N:Lcom/yingyonghui/market/x;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->N:Lcom/yingyonghui/market/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/x;->removeMessages(I)V

    .line 237
    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 4

    .prologue
    .line 222
    invoke-super {p0}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onResume()V

    .line 223
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->r:Lcom/yingyonghui/market/br;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->r:Lcom/yingyonghui/market/br;

    invoke-virtual {v0}, Lcom/yingyonghui/market/br;->notifyDataSetChanged()V

    .line 226
    :cond_0
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityListApp;->s:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->N:Lcom/yingyonghui/market/x;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->N:Lcom/yingyonghui/market/x;

    const/4 v1, 0x0

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Lcom/yingyonghui/market/x;->sendEmptyMessageDelayed(IJ)Z

    .line 229
    :cond_1
    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 200
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 202
    const-string v0, "showTopApp"

    iget-boolean v1, p0, Lcom/yingyonghui/market/ActivityListApp;->s:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 203
    const-string v0, "fromPage"

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->t:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v0, "header"

    iget-boolean v1, p0, Lcom/yingyonghui/market/ActivityListApp;->w:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 205
    const-string v0, "type"

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->x:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v0, "_id"

    iget v1, p0, Lcom/yingyonghui/market/ActivityListApp;->y:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    const-string v0, "ranking_type"

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->z:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v0, "list_order"

    iget v1, p0, Lcom/yingyonghui/market/ActivityListApp;->B:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 209
    const-string v0, "period"

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->A:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v0, "package_name"

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->C:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->x:Ljava/lang/String;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const-string v0, "keyword"

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->D:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v0, "title"

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->E:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v0, "searchType"

    iget v1, p0, Lcom/yingyonghui/market/ActivityListApp;->F:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    const-string v0, "source"

    iget v1, p0, Lcom/yingyonghui/market/ActivityListApp;->G:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 218
    :cond_0
    return-void
.end method

.method public final onSearchRequested()Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method protected final onStop()V
    .locals 2

    .prologue
    .line 194
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp;->S:Ljava/util/ArrayList;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/yingyonghui/market/ActivityListApp;->Q:Z

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->S:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->S:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->R:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->R:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp;->R:Ljava/lang/Thread;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onStop()V

    .line 196
    return-void

    .line 194
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
