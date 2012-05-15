.class public Lcom/yingyonghui/market/ActivityNewEvents;
.super Lcom/yingyonghui/market/HttpServiceSupportForListActivity;
.source "ActivityNewEvents.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private c:Landroid/widget/ListView;

.field private d:Landroid/view/View;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Landroid/view/View;

.field private h:Lcom/yingyonghui/market/fa;

.field private i:Lcom/yingyonghui/market/log/m;

.field private j:I

.field private k:I

.field private l:Z

.field private m:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lcom/yingyonghui/market/HttpServiceSupportForListActivity;-><init>()V

    .line 234
    iput v1, p0, Lcom/yingyonghui/market/ActivityNewEvents;->j:I

    .line 235
    const/4 v0, -0x1

    iput v0, p0, Lcom/yingyonghui/market/ActivityNewEvents;->k:I

    .line 236
    iput-boolean v1, p0, Lcom/yingyonghui/market/ActivityNewEvents;->l:Z

    .line 247
    new-instance v0, Lcom/yingyonghui/market/ep;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/ep;-><init>(Lcom/yingyonghui/market/ActivityNewEvents;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityNewEvents;->m:Landroid/widget/AbsListView$OnScrollListener;

    .line 294
    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityNewEvents;)Lcom/yingyonghui/market/fa;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityNewEvents;->h:Lcom/yingyonghui/market/fa;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityNewEvents;->l:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/yingyonghui/market/ActivityNewEvents;->k:I

    iget v1, p0, Lcom/yingyonghui/market/ActivityNewEvents;->j:I

    if-ne v0, v1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityNewEvents;->a:Lcom/yingyonghui/market/online/e;

    iget v1, p0, Lcom/yingyonghui/market/ActivityNewEvents;->j:I

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityNewEvents;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/yingyonghui/market/online/e;->a(ILandroid/os/Handler;)V

    .line 244
    iget v0, p0, Lcom/yingyonghui/market/ActivityNewEvents;->j:I

    iput v0, p0, Lcom/yingyonghui/market/ActivityNewEvents;->k:I

    goto :goto_0
.end method

.method static synthetic b(Lcom/yingyonghui/market/ActivityNewEvents;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityNewEvents;->a()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter

    .prologue
    .line 173
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    invoke-static {p0}, Lcom/yingyonghui/market/util/ab;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 184
    :cond_0
    :goto_0
    return-object v0

    .line 177
    :cond_1
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    invoke-static {p1}, Lcom/yingyonghui/market/util/ab;->a(Ljava/lang/String;)Lcom/yingyonghui/market/model/m;

    move-result-object v0

    .line 178
    iget-object v0, v0, Lcom/yingyonghui/market/model/m;->a:Landroid/graphics/drawable/Drawable;

    .line 179
    if-nez v0, :cond_0

    .line 180
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    invoke-static {p0}, Lcom/yingyonghui/market/util/ab;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityNewEvents;->a:Lcom/yingyonghui/market/online/e;

    const/16 v2, 0x3e3

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityNewEvents;->b:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v3}, Lcom/yingyonghui/market/online/e;->e(Ljava/lang/String;ILandroid/os/Handler;)V

    goto :goto_0
.end method

.method protected final a(Landroid/os/Message;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 193
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/yingyonghui/market/online/b;

    .line 194
    iget v1, v0, Lcom/yingyonghui/market/online/b;->c:I

    .line 195
    const/16 v3, 0x3e3

    if-ne v1, v3, :cond_1

    .line 196
    iget-object v1, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 197
    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 198
    if-eqz v1, :cond_0

    .line 199
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 200
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    iget v0, v0, Lcom/yingyonghui/market/online/b;->d:I

    invoke-static {v0, v2}, Lcom/yingyonghui/market/util/ab;->a(ILandroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityNewEvents;->h:Lcom/yingyonghui/market/fa;

    invoke-virtual {v0}, Lcom/yingyonghui/market/fa;->notifyDataSetChanged()V

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    const/16 v3, 0x3e4

    if-ne v1, v3, :cond_0

    .line 204
    iget-object v0, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/yingyonghui/market/online/e;->f(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 206
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityNewEvents;->h:Lcom/yingyonghui/market/fa;

    if-nez v0, :cond_5

    .line 207
    new-instance v0, Lcom/yingyonghui/market/fa;

    invoke-direct {v0, p0, p0, v1}, Lcom/yingyonghui/market/fa;-><init>(Lcom/yingyonghui/market/ActivityNewEvents;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityNewEvents;->h:Lcom/yingyonghui/market/fa;

    .line 208
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityNewEvents;->c:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityNewEvents;->h:Lcom/yingyonghui/market/fa;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 218
    :goto_1
    if-eqz v1, :cond_2

    .line 219
    iget v0, p0, Lcom/yingyonghui/market/ActivityNewEvents;->j:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Lcom/yingyonghui/market/ActivityNewEvents;->j:I

    .line 222
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_4

    .line 224
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yingyonghui/market/ActivityNewEvents;->l:Z

    .line 225
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityNewEvents;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityNewEvents;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 228
    :cond_4
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityNewEvents;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityNewEvents;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 210
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v0, v2

    .line 211
    :goto_2
    if-ge v0, v3, :cond_6

    .line 212
    iget-object v4, p0, Lcom/yingyonghui/market/ActivityNewEvents;->h:Lcom/yingyonghui/market/fa;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yingyonghui/market/fa;->add(Ljava/lang/Object;)V

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 215
    :cond_6
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityNewEvents;->h:Lcom/yingyonghui/market/fa;

    invoke-virtual {v0}, Lcom/yingyonghui/market/fa;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 120
    :cond_0
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForListActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 113
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 114
    const-class v1, Lcom/yingyonghui/market/ActivityTab4Search;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityNewEvents;->startActivity(Landroid/content/Intent;)V

    .line 116
    const/4 v0, 0x1

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 58
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityNewEvents;->requestWindowFeature(I)Z

    .line 62
    if-nez p1, :cond_3

    .line 63
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityNewEvents;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_1

    const-string v0, "category_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/yingyonghui/market/ActivityNewEvents;->e:I

    .line 65
    if-eqz v1, :cond_2

    const-string v0, "label"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/yingyonghui/market/ActivityNewEvents;->f:Ljava/lang/String;

    .line 71
    :goto_2
    const v0, 0x7f030037

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityNewEvents;->setContentView(I)V

    .line 73
    new-instance v0, Lcom/yingyonghui/market/log/m;

    const-string v1, "NewEventList"

    invoke-direct {v0, v1}, Lcom/yingyonghui/market/log/m;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityNewEvents;->i:Lcom/yingyonghui/market/log/m;

    .line 75
    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityNewEvents;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityNewEvents;->g:Landroid/view/View;

    const v0, 0x7f0b0059

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityNewEvents;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yingyonghui/market/eo;

    invoke-direct {v1, p0}, Lcom/yingyonghui/market/eo;-><init>(Lcom/yingyonghui/market/ActivityNewEvents;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b005b

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityNewEvents;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityNewEvents;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityNewEvents;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityNewEvents;->c:Landroid/widget/ListView;

    invoke-static {}, Lcom/yingyonghui/market/util/q;->a()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityNewEvents;->c:Landroid/widget/ListView;

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

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityNewEvents;->c:Landroid/widget/ListView;

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

    :cond_0
    :goto_3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030012

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityNewEvents;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityNewEvents;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityNewEvents;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityNewEvents;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityNewEvents;->m:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityNewEvents;->c:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityNewEvents;->a()V

    .line 77
    return-void

    .line 64
    :cond_1
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 65
    :cond_2
    const-string v0, ""

    goto/16 :goto_1

    .line 67
    :cond_3
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yingyonghui/market/ActivityNewEvents;->e:I

    .line 68
    const-string v0, "label"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityNewEvents;->f:Ljava/lang/String;

    goto/16 :goto_2

    .line 75
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 93
    invoke-static {p1}, Lcom/yingyonghui/market/util/p;->a(Landroid/view/Menu;)Z

    .line 94
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 274
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/k;

    .line 275
    if-eqz v0, :cond_0

    .line 276
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 277
    const-class v2, Lcom/yingyonghui/market/ActivityNewEventDetail;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v2, "_id"

    iget v3, v0, Lcom/yingyonghui/market/model/k;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    const-string v2, "fromPage"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 280
    const-string v2, "title"

    iget-object v3, v0, Lcom/yingyonghui/market/model/k;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string v2, "url"

    iget-object v3, v0, Lcom/yingyonghui/market/model/k;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    invoke-virtual {p0, v1}, Lcom/yingyonghui/market/ActivityNewEvents;->startActivity(Landroid/content/Intent;)V

    .line 284
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityNewEvents;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityNewEvents;->i:Lcom/yingyonghui/market/log/m;

    const-string v3, ""

    iget v0, v0, Lcom/yingyonghui/market/model/k;->a:I

    invoke-static {v1, v2, v3, p3, v0}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/lang/String;II)V

    .line 286
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 99
    invoke-static {p0, p1}, Lcom/yingyonghui/market/util/p;->a(Landroid/app/Activity;Landroid/view/MenuItem;)Z

    .line 100
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Lcom/yingyonghui/market/HttpServiceSupportForListActivity;->onPause()V

    .line 88
    invoke-static {p0}, Lcom/a/a/c;->a(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Lcom/yingyonghui/market/HttpServiceSupportForListActivity;->onResume()V

    .line 82
    invoke-static {p0}, Lcom/a/a/c;->b(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 125
    const-string v0, "_id"

    iget v1, p0, Lcom/yingyonghui/market/ActivityNewEvents;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    const-string v0, "label"

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityNewEvents;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 128
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method
