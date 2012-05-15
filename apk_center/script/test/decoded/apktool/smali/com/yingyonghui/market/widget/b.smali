.class public final Lcom/yingyonghui/market/widget/b;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/content/pm/PackageManager;

.field private e:Landroid/widget/LinearLayout;

.field private f:Ljava/util/Map;

.field private g:Ljava/util/Map;

.field private h:Ljava/util/List;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Z

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/ImageView;

.field private t:Lcom/yingyonghui/market/widget/f;

.field private u:Landroid/widget/LinearLayout;

.field private v:Landroid/widget/LinearLayout;

.field private w:Ljava/util/HashMap;

.field private x:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yingyonghui/market/widget/b;->a:Z

    .line 47
    const-string v0, "DefaultGrp"

    iput-object v0, p0, Lcom/yingyonghui/market/widget/b;->j:Ljava/lang/String;

    .line 95
    iput-object p1, p0, Lcom/yingyonghui/market/widget/b;->b:Landroid/content/Context;

    .line 96
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/widget/b;->d:Landroid/content/pm/PackageManager;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yingyonghui/market/widget/b;->h:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 101
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 102
    array-length v1, p2

    .line 103
    if-lez v1, :cond_0

    .line 104
    invoke-direct {p0, p2, v0}, Lcom/yingyonghui/market/widget/b;->a([Ljava/lang/String;Ljava/util/Set;)V

    .line 119
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PermissionInfo;

    .line 120
    iget-object v2, p0, Lcom/yingyonghui/market/widget/b;->h:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .parameter

    .prologue
    .line 249
    if-nez p1, :cond_1

    .line 251
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->i:Ljava/lang/String;

    .line 266
    :cond_0
    :goto_0
    return-object v0

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->w:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 254
    if-nez v0, :cond_0

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->d:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/yingyonghui/market/widget/b;->d:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/yingyonghui/market/widget/b;->w:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid group name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 367
    if-nez p1, :cond_1

    .line 394
    :cond_0
    return-void

    .line 370
    :cond_1
    if-eqz p2, :cond_0

    .line 373
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 374
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 375
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 378
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 379
    if-eqz v1, :cond_2

    .line 380
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v3

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PermissionInfo;

    .line 383
    iget-object v6, p0, Lcom/yingyonghui/market/widget/b;->d:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v6}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 384
    if-nez v2, :cond_5

    if-nez v6, :cond_4

    move-object v1, v3

    :cond_3
    :goto_2
    move-object v2, v1

    .line 385
    goto :goto_1

    .line 384
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    move-object v1, v3

    :goto_3
    if-eqz v6, :cond_3

    iget-object v2, p0, Lcom/yingyonghui/market/widget/b;->k:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v9

    const/4 v1, 0x1

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v1

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_a

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 387
    :cond_8
    if-eqz v2, :cond_2

    .line 388
    iget-boolean v1, p0, Lcom/yingyonghui/market/widget/b;->a:Z

    if-eqz v1, :cond_9

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Group:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " description:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_a
    move-object v1, v2

    goto :goto_3
.end method

.method private a(Z)V
    .locals 11
    .parameter

    .prologue
    .line 274
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->f:Ljava/util/Map;

    move-object v6, v0

    .line 276
    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->v:Landroid/widget/LinearLayout;

    move-object v4, v0

    .line 278
    :goto_1
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 280
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 281
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 282
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/widget/b;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 283
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/yingyonghui/market/widget/b;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f030002

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/yingyonghui/market/widget/b;->m:Landroid/graphics/drawable/Drawable;

    move-object v5, v1

    :goto_3
    const v1, 0x7f0b0018

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b0019

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/yingyonghui/market/widget/b;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v10, 0x7f080007

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const v10, 0x7f080008

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    const v3, 0x7f0b0017

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v8, :cond_4

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->g:Ljava/util/Map;

    move-object v6, v0

    goto :goto_0

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->u:Landroid/widget/LinearLayout;

    move-object v4, v0

    goto :goto_1

    .line 283
    :cond_3
    iget-object v1, p0, Lcom/yingyonghui/market/widget/b;->l:Landroid/graphics/drawable/Drawable;

    move-object v5, v1

    goto :goto_3

    :cond_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 286
    :cond_5
    return-void
.end method

.method private a([Ljava/lang/String;Ljava/util/Set;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 152
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 165
    :cond_0
    return-void

    .line 155
    :cond_1
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 157
    :try_start_0
    iget-object v3, p0, Lcom/yingyonghui/market/widget/b;->d:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v3

    .line 158
    if-eqz v3, :cond_2

    .line 159
    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :catch_0
    move-exception v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring unknown permission:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 322
    sget-object v0, Lcom/yingyonghui/market/widget/d;->a:[I

    iget-object v1, p0, Lcom/yingyonghui/market/widget/b;->t:Lcom/yingyonghui/market/widget/f;

    invoke-virtual {v1}, Lcom/yingyonghui/market/widget/f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 350
    :goto_0
    return-void

    .line 324
    :pswitch_0
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->x:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 328
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/yingyonghui/market/widget/b;->a(Z)V

    goto :goto_0

    .line 332
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/yingyonghui/market/widget/b;->a(Z)V

    goto :goto_0

    .line 336
    :pswitch_3
    invoke-direct {p0, v3}, Lcom/yingyonghui/market/widget/b;->a(Z)V

    .line 337
    iget-boolean v0, p0, Lcom/yingyonghui/market/widget/b;->n:Z

    if-eqz v0, :cond_0

    .line 338
    invoke-direct {p0, v2}, Lcom/yingyonghui/market/widget/b;->a(Z)V

    .line 339
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->s:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yingyonghui/market/widget/b;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->r:Landroid/widget/TextView;

    const v1, 0x7f090091

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 341
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 347
    :goto_1
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->s:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yingyonghui/market/widget/b;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 344
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->r:Landroid/widget/TextView;

    const v1, 0x7f090092

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 345
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->u:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 10

    .prologue
    const/4 v6, 0x1

    .line 172
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->b:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/yingyonghui/market/widget/b;->c:Landroid/view/LayoutInflater;

    .line 174
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yingyonghui/market/widget/b;->e:Landroid/widget/LinearLayout;

    .line 176
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f0b001c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/widget/b;->q:Landroid/view/View;

    .line 177
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->q:Landroid/view/View;

    const v1, 0x7f0b001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yingyonghui/market/widget/b;->s:Landroid/widget/ImageView;

    .line 178
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->q:Landroid/view/View;

    const v1, 0x7f0b001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yingyonghui/market/widget/b;->r:Landroid/widget/TextView;

    .line 179
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f0b001b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yingyonghui/market/widget/b;->v:Landroid/widget/LinearLayout;

    .line 181
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yingyonghui/market/widget/b;->u:Landroid/widget/LinearLayout;

    .line 183
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f0b001a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/widget/b;->x:Landroid/view/View;

    .line 186
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->q:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    .line 187
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->q:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->q:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 189
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->q:Landroid/view/View;

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 193
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->b:Landroid/content/Context;

    const v1, 0x7f09008f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/widget/b;->i:Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->b:Landroid/content/Context;

    const v1, 0x7f090090

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/widget/b;->k:Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/widget/b;->l:Landroid/graphics/drawable/Drawable;

    .line 198
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/widget/b;->m:Landroid/graphics/drawable/Drawable;

    .line 200
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/widget/b;->o:Landroid/graphics/drawable/Drawable;

    .line 202
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/widget/b;->p:Landroid/graphics/drawable/Drawable;

    .line 206
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->h:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/yingyonghui/market/widget/b;->w:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/yingyonghui/market/widget/b;->w:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/yingyonghui/market/widget/b;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/yingyonghui/market/widget/b;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/yingyonghui/market/widget/b;->f:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/yingyonghui/market/widget/b;->g:Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Lcom/yingyonghui/market/widget/a;

    iget-object v1, p0, Lcom/yingyonghui/market/widget/b;->d:Landroid/content/pm/PackageManager;

    invoke-direct {v7, v1}, Lcom/yingyonghui/market/widget/a;-><init>(Landroid/content/pm/PackageManager;)V

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PermissionInfo;

    iget-boolean v1, p0, Lcom/yingyonghui/market/widget/b;->a:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing permission:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    iget v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-eq v1, v6, :cond_2

    iget v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-nez v1, :cond_3

    :cond_2
    move v1, v6

    :goto_1
    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/yingyonghui/market/widget/b;->a:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not displayable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    iget v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-ne v1, v6, :cond_6

    move-object v2, v3

    :goto_2
    iget-object v1, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/yingyonghui/market/widget/b;->j:Ljava/lang/String;

    move-object v5, v1

    :goto_3
    iget-boolean v1, p0, Lcom/yingyonghui/market/widget/b;->a:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Permission:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v9, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " belongs to group:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_5
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    move-object v2, v4

    goto :goto_2

    :cond_7
    iget-object v1, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object v5, v1

    goto :goto_3

    :cond_8
    invoke-static {v1, v0, v7}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    iget-boolean v5, p0, Lcom/yingyonghui/market/widget/b;->a:Z

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "idx="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", list.size="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_9
    if-gez v2, :cond_0

    neg-int v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->f:Ljava/util/Map;

    invoke-direct {p0, v3, v0}, Lcom/yingyonghui/market/widget/b;->a(Ljava/util/Map;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->g:Ljava/util/Map;

    invoke-direct {p0, v4, v0}, Lcom/yingyonghui/market/widget/b;->a(Ljava/util/Map;Ljava/util/Map;)V

    :cond_b
    sget-object v0, Lcom/yingyonghui/market/widget/f;->a:Lcom/yingyonghui/market/widget/f;

    iput-object v0, p0, Lcom/yingyonghui/market/widget/b;->t:Lcom/yingyonghui/market/widget/f;

    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_e

    sget-object v0, Lcom/yingyonghui/market/widget/f;->d:Lcom/yingyonghui/market/widget/f;

    :goto_4
    iput-object v0, p0, Lcom/yingyonghui/market/widget/b;->t:Lcom/yingyonghui/market/widget/f;

    :cond_c
    :goto_5
    iget-boolean v0, p0, Lcom/yingyonghui/market/widget/b;->a:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/widget/b;->t:Lcom/yingyonghui/market/widget/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_d
    invoke-direct {p0}, Lcom/yingyonghui/market/widget/b;->b()V

    .line 207
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->e:Landroid/widget/LinearLayout;

    return-object v0

    .line 206
    :cond_e
    sget-object v0, Lcom/yingyonghui/market/widget/f;->b:Lcom/yingyonghui/market/widget/f;

    goto :goto_4

    :cond_f
    iget-object v0, p0, Lcom/yingyonghui/market/widget/b;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_c

    sget-object v0, Lcom/yingyonghui/market/widget/f;->c:Lcom/yingyonghui/market/widget/f;

    iput-object v0, p0, Lcom/yingyonghui/market/widget/b;->t:Lcom/yingyonghui/market/widget/f;

    goto :goto_5
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/yingyonghui/market/widget/b;->a:Z

    if-eqz v0, :cond_0

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mExpanded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yingyonghui/market/widget/b;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 490
    :cond_0
    iget-boolean v0, p0, Lcom/yingyonghui/market/widget/b;->n:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/yingyonghui/market/widget/b;->n:Z

    .line 491
    invoke-direct {p0}, Lcom/yingyonghui/market/widget/b;->b()V

    .line 492
    return-void

    .line 490
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
