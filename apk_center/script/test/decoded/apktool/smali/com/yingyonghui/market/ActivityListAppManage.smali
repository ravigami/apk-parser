.class public Lcom/yingyonghui/market/ActivityListAppManage;
.super Lcom/yingyonghui/market/AbsActivityAppListManager;
.source "ActivityListAppManage.java"


# static fields
.field private static k:I

.field private static l:I

.field private static final m:[Ljava/lang/String;


# instance fields
.field protected c:Z

.field private f:Landroid/view/View;

.field private g:Landroid/content/pm/PackageManager;

.field private h:Ljava/util/ArrayList;

.field private i:Lcom/yingyonghui/market/es;

.field private j:I

.field private n:Landroid/os/Handler;

.field private final o:Landroid/content/BroadcastReceiver;

.field private p:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    sput v2, Lcom/yingyonghui/market/ActivityListAppManage;->l:I

    .line 62
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

    sput-object v0, Lcom/yingyonghui/market/ActivityListAppManage;->m:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/yingyonghui/market/AbsActivityAppListManager;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yingyonghui/market/ActivityListAppManage;->c:Z

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/yingyonghui/market/ActivityListAppManage;->j:I

    .line 81
    new-instance v0, Lcom/yingyonghui/market/ac;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/ac;-><init>(Lcom/yingyonghui/market/ActivityListAppManage;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListAppManage;->n:Landroid/os/Handler;

    .line 329
    new-instance v0, Lcom/yingyonghui/market/z;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/z;-><init>(Lcom/yingyonghui/market/ActivityListAppManage;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListAppManage;->o:Landroid/content/BroadcastReceiver;

    .line 392
    new-instance v0, Lcom/yingyonghui/market/v;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/v;-><init>(Lcom/yingyonghui/market/ActivityListAppManage;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListAppManage;->p:Landroid/widget/AbsListView$OnScrollListener;

    .line 448
    return-void
.end method

.method static synthetic a(I)I
    .locals 0
    .parameter

    .prologue
    .line 47
    sput p0, Lcom/yingyonghui/market/ActivityListAppManage;->k:I

    return p0
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityListAppManage;Lcom/yingyonghui/market/es;)Lcom/yingyonghui/market/es;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/yingyonghui/market/ActivityListAppManage;->i:Lcom/yingyonghui/market/es;

    return-object p1
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityListAppManage;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppManage;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/yingyonghui/market/ActivityListAppManage;)Lcom/yingyonghui/market/es;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppManage;->i:Lcom/yingyonghui/market/es;

    return-object v0
.end method

.method static synthetic c(Lcom/yingyonghui/market/ActivityListAppManage;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 47
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v0, "flg"

    aput-object v0, v2, v9

    sget-object v1, Lcom/yingyonghui/market/provider/f;->a:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/yingyonghui/market/ActivityListAppManage;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "flg"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    :cond_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "flg"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v6, Lcom/yingyonghui/market/provider/f;->a:Landroid/net/Uri;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListAppManage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v4, v5, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/yingyonghui/market/ActivityListAppManage;)I
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lcom/yingyonghui/market/ActivityListAppManage;->j:I

    return v0
.end method

.method static synthetic e()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/yingyonghui/market/ActivityListAppManage;->k:I

    return v0
.end method

.method static synthetic e(Lcom/yingyonghui/market/ActivityListAppManage;)I
    .locals 2
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lcom/yingyonghui/market/ActivityListAppManage;->j:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/yingyonghui/market/ActivityListAppManage;->j:I

    return v0
.end method

.method static synthetic f(Lcom/yingyonghui/market/ActivityListAppManage;)I
    .locals 2
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lcom/yingyonghui/market/ActivityListAppManage;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yingyonghui/market/ActivityListAppManage;->j:I

    return v0
.end method


# virtual methods
.method public final a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppManage;->n:Landroid/os/Handler;

    return-object v0
.end method

.method protected final a(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 363
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/yingyonghui/market/online/b;

    .line 364
    iget v1, v0, Lcom/yingyonghui/market/online/b;->c:I

    .line 365
    const/16 v2, 0x63

    if-ne v1, v2, :cond_0

    .line 366
    iget-object v1, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 367
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 368
    if-eqz v1, :cond_0

    .line 369
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 370
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    iget-object v0, v0, Lcom/yingyonghui/market/online/b;->e:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/yingyonghui/market/util/ab;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 372
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppManage;->d:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppManage;->d:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 377
    :cond_0
    return-void
.end method

.method protected final b()Lcom/yingyonghui/market/log/m;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Lcom/yingyonghui/market/log/m;

    const-string v1, "AppManage"

    invoke-direct {v0, v1}, Lcom/yingyonghui/market/log/m;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected final c()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Lcom/yingyonghui/market/AbsActivityAppListManager;->c()V

    .line 146
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppManage;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListAppManage;->p:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 148
    const v0, 0x7f0b000f

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListAppManage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListAppManage;->f:Landroid/view/View;

    .line 150
    const v0, 0x7f0b00d2

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListAppManage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yingyonghui/market/ab;

    invoke-direct {v1, p0}, Lcom/yingyonghui/market/ab;-><init>(Lcom/yingyonghui/market/ActivityListAppManage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    const v0, 0x7f0b00d3

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListAppManage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yingyonghui/market/aa;

    invoke-direct {v1, p0}, Lcom/yingyonghui/market/aa;-><init>(Lcom/yingyonghui/market/ActivityListAppManage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    return-void
.end method

.method protected final d()V
    .locals 25

    .prologue
    .line 208
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/yingyonghui/market/ActivityListAppManage;->a(Z)V

    .line 210
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 212
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 213
    sget-object v4, Lcom/yingyonghui/market/provider/f;->a:Landroid/net/Uri;

    sget-object v5, Lcom/yingyonghui/market/ActivityListAppManage;->m:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/yingyonghui/market/ActivityListAppManage;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 214
    const/4 v4, 0x0

    sput v4, Lcom/yingyonghui/market/ActivityListAppManage;->l:I

    .line 215
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 217
    const-string v4, "apkid"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 218
    const-string v5, "apkname"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 219
    const-string v6, "lastmodifiedtime"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 220
    const-string v7, "pkgname"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 221
    const-string v8, "permission"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 222
    const-string v11, "promotion_agent"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 223
    const-string v12, "promotion_id"

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 224
    const-string v13, "pubkey_hash"

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 225
    const-string v14, "rating"

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 226
    const-string v15, "rating_count"

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 227
    const-string v16, "size"

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 228
    const-string v17, "version_code"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 229
    const-string v18, "version_name"

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 230
    const-string v19, "apk_url"

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 231
    const-string v20, "flg"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 235
    :cond_0
    new-instance v21, Lcom/yingyonghui/market/model/q;

    invoke-direct/range {v21 .. v21}, Lcom/yingyonghui/market/model/q;-><init>()V

    .line 236
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/yingyonghui/market/model/q;->e:I

    .line 237
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    .line 238
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/yingyonghui/market/model/q;->r:Ljava/lang/String;

    .line 239
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    .line 240
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/yingyonghui/market/model/q;->t:[Ljava/lang/String;

    .line 241
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/yingyonghui/market/model/q;->F:Ljava/lang/String;

    .line 242
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/yingyonghui/market/model/q;->E:I

    .line 243
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/yingyonghui/market/model/q;->D:Ljava/lang/String;

    .line 244
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/yingyonghui/market/model/q;->l:F

    .line 245
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/yingyonghui/market/model/q;->B:I

    .line 246
    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/yingyonghui/market/model/q;->o:I

    .line 247
    move-object/from16 v0, v21

    iget v0, v0, Lcom/yingyonghui/market/model/q;->o:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/yingyonghui/market/model/q;->p:Ljava/lang/String;

    .line 248
    move/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/yingyonghui/market/model/q;->s:I

    .line 249
    move/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/yingyonghui/market/model/q;->q:Ljava/lang/String;

    .line 250
    move/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/yingyonghui/market/model/q;->g:Ljava/lang/String;

    .line 251
    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/yingyonghui/market/model/q;->Q:Ljava/lang/String;

    .line 252
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/yingyonghui/market/model/q;->v:Z

    .line 253
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/yingyonghui/market/model/q;->x:Z

    .line 254
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/yingyonghui/market/model/q;->P:Z

    .line 256
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yingyonghui/market/ActivityListAppManage;->g:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v22

    .line 257
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/GlobalUtil;->b(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Lcom/yingyonghui/market/model/q;

    move-result-object v22

    .line 258
    if-eqz v22, :cond_1

    .line 259
    move-object/from16 v0, v22

    iget v0, v0, Lcom/yingyonghui/market/model/q;->I:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v21

    iput v0, v1, Lcom/yingyonghui/market/model/q;->I:I

    .line 260
    move-object/from16 v0, v22

    iget v0, v0, Lcom/yingyonghui/market/model/q;->J:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/yingyonghui/market/model/q;->J:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :cond_1
    :goto_0
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 267
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/yingyonghui/market/model/q;->Q:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "0"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 268
    sget v22, Lcom/yingyonghui/market/ActivityListAppManage;->l:I

    add-int/lit8 v22, v22, 0x1

    sput v22, Lcom/yingyonghui/market/ActivityListAppManage;->l:I

    .line 270
    :cond_2
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v21

    if-nez v21, :cond_0

    .line 274
    :cond_3
    sget v3, Lcom/yingyonghui/market/ActivityListAppManage;->l:I

    if-lez v3, :cond_5

    .line 275
    sget-object v3, Lcom/yingyonghui/market/ActivityMain;->c:Landroid/widget/TextView;

    sget v4, Lcom/yingyonghui/market/ActivityListAppManage;->l:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    sget-object v3, Lcom/yingyonghui/market/ActivityMain;->c:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    :goto_1
    sget v3, Lcom/yingyonghui/market/ActivityListAppManage;->l:I

    if-lez v3, :cond_6

    .line 283
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yingyonghui/market/ActivityListAppManage;->f:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 288
    :goto_2
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/yingyonghui/market/ActivityListAppManage;->h:Ljava/util/ArrayList;

    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/yingyonghui/market/ActivityListAppManage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 291
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 292
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 293
    invoke-static {v3}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 295
    new-instance v5, Lcom/yingyonghui/market/model/q;

    invoke-direct {v5}, Lcom/yingyonghui/market/model/q;-><init>()V

    .line 298
    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v6, v5, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    .line 299
    iput-object v3, v5, Lcom/yingyonghui/market/model/q;->S:Landroid/content/pm/ApplicationInfo;

    .line 300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yingyonghui/market/ActivityListAppManage;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 278
    :cond_5
    sget-object v3, Lcom/yingyonghui/market/ActivityMain;->c:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    sget-object v3, Lcom/yingyonghui/market/ActivityMain;->c:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 285
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yingyonghui/market/ActivityListAppManage;->f:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 304
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yingyonghui/market/ActivityListAppManage;->n:Landroid/os/Handler;

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 305
    return-void

    :catch_0
    move-exception v22

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/yingyonghui/market/AbsActivityAppListManager;->onCreate(Landroid/os/Bundle;)V

    .line 110
    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListAppManage;->setContentView(I)V

    .line 112
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListAppManage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListAppManage;->g:Landroid/content/pm/PackageManager;

    .line 114
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListAppManage;->c()V

    .line 115
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListAppManage;->d()V

    .line 117
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListAppManage;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yingyonghui/market/ActivityListAppManage;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.yingyonghui.market.DOWNLOAD_COMPLETED_2"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListAppManage;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yingyonghui/market/ActivityListAppManage;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/yingyonghui/market/util/q;->a()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListAppManage;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yingyonghui/market/ActivityListAppManage;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    :cond_0
    new-instance v0, Lcom/yingyonghui/market/dm;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListAppManage;->n:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/yingyonghui/market/dm;-><init>(Lcom/yingyonghui/market/ActivityListAppManage;Landroid/os/Handler;)V

    .line 120
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListAppManage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/yingyonghui/market/provider/f;->a:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 121
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lcom/yingyonghui/market/AbsActivityAppListManager;->onDestroy()V

    .line 140
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppManage;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListAppManage;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 141
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 381
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 382
    if-nez v0, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListAppManage;->i:Lcom/yingyonghui/market/es;

    check-cast v0, Lcom/yingyonghui/market/model/q;

    invoke-virtual {v1, v0, p2}, Lcom/yingyonghui/market/es;->a(Lcom/yingyonghui/market/model/q;Landroid/view/View;)V

    .line 387
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppManage;->i:Lcom/yingyonghui/market/es;

    invoke-virtual {v0}, Lcom/yingyonghui/market/es;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppManage;->d:Landroid/widget/ListView;

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0}, Lcom/yingyonghui/market/AbsActivityAppListManager;->onResume()V

    .line 130
    return-void
.end method
