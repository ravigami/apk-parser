.class public abstract Lcom/yingyonghui/market/AbsActivityAppListManager;
.super Lcom/yingyonghui/market/HttpServiceSupportForActivity;
.source "AbsActivityAppListManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private c:I

.field protected d:Landroid/widget/ListView;

.field protected e:Ljava/util/concurrent/ConcurrentHashMap;

.field private f:Landroid/view/View;

.field private g:Lcom/yingyonghui/market/log/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;-><init>()V

    .line 39
    const/16 v0, 0x63

    iput v0, p0, Lcom/yingyonghui/market/AbsActivityAppListManager;->c:I

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/yingyonghui/market/AbsActivityAppListManager;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    invoke-virtual {p0}, Lcom/yingyonghui/market/AbsActivityAppListManager;->b()Lcom/yingyonghui/market/log/m;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/AbsActivityAppListManager;->g:Lcom/yingyonghui/market/log/m;

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    invoke-static {p0, p2}, Lcom/yingyonghui/market/util/GlobalUtil;->k(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-object v0

    .line 86
    :cond_1
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    invoke-static {p0}, Lcom/yingyonghui/market/util/ab;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_2
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    invoke-static {p1}, Lcom/yingyonghui/market/util/ab;->a(Ljava/lang/String;)Lcom/yingyonghui/market/model/m;

    move-result-object v0

    .line 89
    iget-object v0, v0, Lcom/yingyonghui/market/model/m;->a:Landroid/graphics/drawable/Drawable;

    .line 90
    if-nez v0, :cond_0

    .line 91
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    invoke-static {p0}, Lcom/yingyonghui/market/util/ab;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/yingyonghui/market/AbsActivityAppListManager;->a:Lcom/yingyonghui/market/online/e;

    const/16 v2, 0x63

    iget-object v3, p0, Lcom/yingyonghui/market/AbsActivityAppListManager;->b:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v3}, Lcom/yingyonghui/market/online/e;->e(Ljava/lang/String;ILandroid/os/Handler;)V

    goto :goto_0
.end method

.method protected final a(Landroid/widget/ArrayAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 135
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/AbsActivityAppListManager;->b(I)Ljava/util/Comparator;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    .line 139
    :cond_0
    return-void
.end method

.method final a(Z)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 103
    if-eqz p1, :cond_2

    .line 104
    iget-object v0, p0, Lcom/yingyonghui/market/AbsActivityAppListManager;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/yingyonghui/market/AbsActivityAppListManager;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/AbsActivityAppListManager;->d:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/yingyonghui/market/AbsActivityAppListManager;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 119
    :cond_1
    :goto_0
    return-void

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/yingyonghui/market/AbsActivityAppListManager;->f:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 113
    iget-object v0, p0, Lcom/yingyonghui/market/AbsActivityAppListManager;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/yingyonghui/market/AbsActivityAppListManager;->d:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/yingyonghui/market/AbsActivityAppListManager;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected b()Lcom/yingyonghui/market/log/m;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/yingyonghui/market/log/m;

    const-string v1, "Manage"

    invoke-direct {v0, v1}, Lcom/yingyonghui/market/log/m;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected final b(I)Ljava/util/Comparator;
    .locals 1
    .parameter

    .prologue
    .line 143
    packed-switch p1, :pswitch_data_0

    .line 243
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 145
    :pswitch_0
    new-instance v0, Lcom/yingyonghui/market/co;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/co;-><init>(Lcom/yingyonghui/market/AbsActivityAppListManager;)V

    goto :goto_0

    .line 175
    :pswitch_1
    new-instance v0, Lcom/yingyonghui/market/cp;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/cp;-><init>(Lcom/yingyonghui/market/AbsActivityAppListManager;)V

    goto :goto_0

    .line 200
    :pswitch_2
    new-instance v0, Lcom/yingyonghui/market/cm;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/cm;-><init>(Lcom/yingyonghui/market/AbsActivityAppListManager;)V

    goto :goto_0

    .line 224
    :pswitch_3
    new-instance v0, Lcom/yingyonghui/market/cn;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/cn;-><init>(Lcom/yingyonghui/market/AbsActivityAppListManager;)V

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected c()V
    .locals 5

    .prologue
    .line 65
    const v0, 0x7f0b00ca

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/AbsActivityAppListManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/AbsActivityAppListManager;->f:Landroid/view/View;

    .line 66
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/AbsActivityAppListManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yingyonghui/market/AbsActivityAppListManager;->d:Landroid/widget/ListView;

    .line 67
    invoke-static {}, Lcom/yingyonghui/market/util/q;->a()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/yingyonghui/market/AbsActivityAppListManager;->d:Landroid/widget/ListView;

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

    .line 70
    iget-object v1, p0, Lcom/yingyonghui/market/AbsActivityAppListManager;->d:Landroid/widget/ListView;

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

    .line 75
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yingyonghui/market/AbsActivityAppListManager;->d:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/yingyonghui/market/AbsActivityAppListManager;->d:Landroid/widget/ListView;

    const v1, 0x7f0b006a

    invoke-virtual {p0, v1}, Lcom/yingyonghui/market/AbsActivityAppListManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 78
    return-void

    .line 71
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected final f()Lcom/yingyonghui/market/log/m;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yingyonghui/market/AbsActivityAppListManager;->g:Lcom/yingyonghui/market/log/m;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    .line 125
    if-nez v0, :cond_0

    .line 126
    const v0, 0x7f090130

    invoke-static {p0, v0}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;I)V

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    iget v1, v0, Lcom/yingyonghui/market/model/q;->e:I

    iget-object v2, v0, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    iget-object v0, v0, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {p0, v1, v2, v0}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
