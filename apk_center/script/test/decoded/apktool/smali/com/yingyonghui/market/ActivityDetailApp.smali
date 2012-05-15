.class public Lcom/yingyonghui/market/ActivityDetailApp;
.super Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;
.source "ActivityDetailApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field private static U:Ljava/lang/String;

.field private static final aa:[Ljava/lang/String;


# instance fields
.field private A:Landroid/widget/Button;

.field private B:Landroid/widget/Button;

.field private C:Landroid/widget/Button;

.field private D:Landroid/widget/Button;

.field private E:Landroid/widget/Button;

.field private F:Landroid/widget/Button;

.field private G:Landroid/widget/Button;

.field private H:Landroid/widget/Button;

.field private I:Landroid/view/View;

.field private J:Landroid/widget/TabWidget;

.field private K:F

.field private L:Z

.field private M:I

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Lcom/yingyonghui/market/log/m;

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private final T:I

.field private final V:I

.field private final W:I

.field private X:Landroid/os/Handler;

.field private final Y:Landroid/content/BroadcastReceiver;

.field private transient Z:Lcom/yingyonghui/market/ff;

.field private ab:Landroid/os/Handler;

.field private ac:J

.field public c:Lcom/yingyonghui/market/model/q;

.field private d:Landroid/widget/TabHost;

.field private e:Lcom/yingyonghui/market/model/o;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Lcom/yingyonghui/market/provider/k;

.field private l:Ljava/util/ArrayList;

.field private m:I

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Landroid/widget/ProgressBar;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/Button;

.field private w:Landroid/widget/Button;

.field private x:Landroid/widget/Button;

.field private y:Landroid/widget/Button;

.field private z:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 135
    const/4 v0, 0x0

    sput-object v0, Lcom/yingyonghui/market/ActivityDetailApp;->U:Ljava/lang/String;

    .line 367
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 368
    sput-object v0, Lcom/yingyonghui/market/ActivityDetailApp;->aa:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    .line 369
    sget-object v0, Lcom/yingyonghui/market/ActivityDetailApp;->aa:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "current_bytes"

    aput-object v2, v0, v1

    .line 370
    sget-object v0, Lcom/yingyonghui/market/ActivityDetailApp;->aa:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "total_bytes"

    aput-object v2, v0, v1

    .line 371
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;-><init>()V

    .line 69
    iput-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->c:Lcom/yingyonghui/market/model/q;

    .line 70
    iput-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->m:I

    .line 118
    const/high16 v0, 0x4190

    iput v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->K:F

    .line 129
    iput-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->Q:Lcom/yingyonghui/market/log/m;

    .line 133
    const/16 v0, 0x14

    iput v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->T:I

    .line 137
    const/16 v0, 0x64

    iput v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->V:I

    .line 139
    const/16 v0, 0x66

    iput v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->W:I

    .line 141
    new-instance v0, Lcom/yingyonghui/market/dw;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/dw;-><init>(Lcom/yingyonghui/market/ActivityDetailApp;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->X:Landroid/os/Handler;

    .line 305
    new-instance v0, Lcom/yingyonghui/market/dv;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/dv;-><init>(Lcom/yingyonghui/market/ActivityDetailApp;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->Y:Landroid/content/BroadcastReceiver;

    .line 957
    new-instance v0, Lcom/yingyonghui/market/ds;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/ds;-><init>(Lcom/yingyonghui/market/ActivityDetailApp;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->ab:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityDetailApp;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->ac:J

    return-wide p1
.end method

.method private static a(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1149
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1150
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1151
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1152
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1153
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1154
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1155
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1156
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v1

    .line 1160
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityDetailApp;)Lcom/yingyonghui/market/provider/k;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->k:Lcom/yingyonghui/market/provider/k;

    return-object v0
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityDetailApp;Lcom/yingyonghui/market/provider/k;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Lcom/yingyonghui/market/provider/k;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityDetailApp;Ljava/lang/Object;)V
    .locals 17
    .parameter
    .parameter

    .prologue
    .line 65
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yingyonghui/market/ActivityDetailApp;->S:Ljava/lang/String;

    const-string v2, "download_error"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    move/from16 v16, v1

    :goto_0
    check-cast p1, Lcom/yingyonghui/market/fm;

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yingyonghui/market/ActivityDetailApp;->S:Ljava/lang/String;

    const-string v2, "feedback"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/yingyonghui/market/fm;->d()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/yingyonghui/market/fm;->c()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    move-object v7, v1

    :goto_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v14, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static/range {p0 .. p0}, Lcom/yingyonghui/market/provider/g;->a(Landroid/content/Context;)Lcom/yingyonghui/market/provider/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yingyonghui/market/provider/g;->a()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/yingyonghui/market/ActivityDetailApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yingyonghui/market/ActivityDetailApp;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/yingyonghui/market/provider/k;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/yingyonghui/market/provider/k;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yingyonghui/market/provider/k;->e()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/yingyonghui/market/provider/k;->f()J

    move-result-wide v10

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/yingyonghui/market/ActivityDetailApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/yingyonghui/downloads/g;->a:Landroid/net/Uri;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "lastmod"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "current_bytes"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "total_bytes"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notificationextras=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yingyonghui/market/ActivityDetailApp;->i:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const-wide/16 v12, 0x0

    const/4 v1, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x42c8

    mul-float/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    const v2, 0x7f09002d

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;I)V

    if-nez v7, :cond_3

    const-string v7, ""

    :cond_3
    if-nez v14, :cond_8

    const-string v6, ""

    :goto_3
    if-nez v1, :cond_7

    const-string v14, "0"

    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yingyonghui/market/ActivityDetailApp;->a:Lcom/yingyonghui/market/online/e;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yingyonghui/market/ActivityDetailApp;->f:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/yingyonghui/market/ActivityDetailApp;->ac:J

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yingyonghui/market/ActivityDetailApp;->b:Landroid/os/Handler;

    move/from16 v3, v16

    invoke-virtual/range {v1 .. v15}, Lcom/yingyonghui/market/online/e;->a(IIJLjava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Landroid/os/Handler;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/yingyonghui/market/ActivityDetailApp;->U:Ljava/lang/String;

    return-void

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yingyonghui/market/ActivityDetailApp;->S:Ljava/lang/String;

    const-string v2, "install_error"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    move/from16 v16, v1

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x2

    move/from16 v16, v1

    goto/16 :goto_0

    :cond_6
    const-string v1, ""

    goto/16 :goto_1

    :cond_7
    move-object v14, v1

    goto :goto_4

    :cond_8
    move-object v6, v14

    goto :goto_3

    :cond_9
    move-object v14, v1

    move-object v7, v2

    goto/16 :goto_2
.end method

.method private a(Lcom/yingyonghui/market/provider/k;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 375
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    if-nez p1, :cond_3

    .line 381
    sget-object v0, Lcom/yingyonghui/market/provider/m;->a:Lcom/yingyonghui/market/provider/m;

    .line 386
    :goto_1
    const/4 v7, -0x1

    .line 387
    const/4 v6, 0x0

    .line 388
    sget-object v1, Lcom/yingyonghui/market/dp;->a:[I

    invoke-virtual {v0}, Lcom/yingyonghui/market/provider/m;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v6

    move v1, v7

    .line 424
    :cond_2
    :goto_2
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->Z:Lcom/yingyonghui/market/ff;

    if-nez v0, :cond_6

    if-ltz v1, :cond_6

    .line 426
    new-instance v0, Lcom/yingyonghui/market/ff;

    invoke-direct {v0, p0, p0, v1}, Lcom/yingyonghui/market/ff;-><init>(Lcom/yingyonghui/market/ActivityDetailApp;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->Z:Lcom/yingyonghui/market/ff;

    .line 427
    sget-object v0, Lcom/yingyonghui/downloads/g;->a:Landroid/net/Uri;

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 428
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityDetailApp;->Z:Lcom/yingyonghui/market/ff;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 383
    :cond_3
    invoke-virtual {p1}, Lcom/yingyonghui/market/provider/k;->d()Lcom/yingyonghui/market/provider/m;

    move-result-object v0

    goto :goto_1

    .line 391
    :pswitch_0
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yingyonghui/market/provider/k;->g()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/yingyonghui/market/ActivityDetailApp;->aa:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 394
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 395
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 396
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 397
    const/4 v0, 0x2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 399
    const-wide/16 v0, 0x0

    cmp-long v0, v5, v0

    if-gtz v0, :cond_4

    .line 400
    const/4 v0, 0x0

    .line 404
    :goto_3
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 405
    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v1, v8

    .line 406
    const/4 v8, 0x1

    invoke-static {p0, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    .line 407
    const/4 v3, 0x2

    invoke-static {p0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 409
    const-wide/16 v3, -0x1

    cmp-long v3, v5, v3

    if-nez v3, :cond_5

    .line 410
    const-string v1, "0%"

    .line 415
    :goto_4
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    move-object v0, v1

    move v1, v7

    .line 418
    :goto_5
    if-eqz v2, :cond_2

    .line 419
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 402
    :cond_4
    const-wide/16 v0, 0x64

    mul-long/2addr v0, v3

    div-long/2addr v0, v5

    long-to-int v0, v0

    goto :goto_3

    .line 412
    :cond_5
    const v3, 0x7f09010f

    invoke-virtual {p0, v3, v1}, Lcom/yingyonghui/market/ActivityDetailApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    goto :goto_4

    .line 429
    :cond_6
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->Z:Lcom/yingyonghui/market/ff;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->Z:Lcom/yingyonghui/market/ff;

    invoke-static {v0}, Lcom/yingyonghui/market/ff;->a(Lcom/yingyonghui/market/ff;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 430
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->Z:Lcom/yingyonghui/market/ff;

    invoke-static {v0}, Lcom/yingyonghui/market/ff;->b(Lcom/yingyonghui/market/ff;)V

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->Z:Lcom/yingyonghui/market/ff;

    .line 433
    new-instance v0, Lcom/yingyonghui/market/ff;

    invoke-direct {v0, p0, p0, v1}, Lcom/yingyonghui/market/ff;-><init>(Lcom/yingyonghui/market/ActivityDetailApp;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->Z:Lcom/yingyonghui/market/ff;

    .line 434
    sget-object v0, Lcom/yingyonghui/downloads/g;->a:Landroid/net/Uri;

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 435
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityDetailApp;->Z:Lcom/yingyonghui/market/ff;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_0

    :cond_7
    move-object v0, v6

    move v1, v7

    goto :goto_5

    .line 388
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(ZZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 662
    if-eqz p1, :cond_1

    .line 663
    if-eqz p2, :cond_0

    .line 664
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->D:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 665
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->y:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 674
    :goto_0
    return-void

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->D:Landroid/widget/Button;

    invoke-static {v0, v2}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 668
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->y:Landroid/widget/Button;

    invoke-static {v0, v2}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    goto :goto_0

    .line 671
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->D:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 672
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->y:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    goto :goto_0
.end method

.method private static a(Landroid/view/View;Z)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 857
    if-eqz p0, :cond_0

    .line 858
    if-eqz p1, :cond_1

    .line 859
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 860
    const/4 v0, 0x1

    .line 866
    :cond_0
    :goto_0
    return v0

    .line 862
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/yingyonghui/market/ActivityDetailApp;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->s:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private b(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 605
    if-nez p1, :cond_0

    .line 606
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 607
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 613
    :goto_0
    const v2, 0x7f0200a9

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 614
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 616
    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 617
    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 618
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 619
    invoke-virtual {v0}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 620
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 622
    check-cast v0, Landroid/widget/TextView;

    .line 623
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object v0, v1

    .line 625
    check-cast v0, Landroid/widget/TextView;

    .line 626
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 627
    return-void

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 610
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic c(Lcom/yingyonghui/market/ActivityDetailApp;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->t:Landroid/widget/TextView;

    return-object v0
.end method

.method private d()V
    .locals 14

    .prologue
    const/16 v12, 0x64

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 677
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->F:Landroid/widget/Button;

    invoke-static {v0, v4}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 678
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->x:Landroid/widget/Button;

    invoke-static {v0, v4}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 679
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->z:Landroid/widget/Button;

    invoke-static {v0, v4}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 680
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->v:Landroid/widget/Button;

    invoke-static {v0, v4}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 681
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->A:Landroid/widget/Button;

    invoke-static {v0, v4}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 682
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->B:Landroid/widget/Button;

    invoke-static {v0, v4}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 683
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->C:Landroid/widget/Button;

    invoke-static {v0, v4}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 684
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->y:Landroid/widget/Button;

    invoke-static {v0, v4}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 685
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->w:Landroid/widget/Button;

    invoke-static {v0, v4}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 686
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->p:Landroid/view/View;

    invoke-static {v0, v4}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 687
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->D:Landroid/widget/Button;

    invoke-static {v0, v4}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 688
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->E:Landroid/widget/Button;

    invoke-static {v0, v4}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 689
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->G:Landroid/widget/Button;

    invoke-static {v0, v4}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 690
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->H:Landroid/widget/Button;

    invoke-static {v0, v4}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 692
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->L:Z

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->B:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 694
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->D:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 695
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->C:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 852
    :goto_0
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->q:Landroid/view/View;

    invoke-static {v0, v3}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 853
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->r:Landroid/view/View;

    invoke-static {v0, v3}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 854
    :goto_1
    return-void

    .line 697
    :cond_0
    iget v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->m:I

    if-nez v0, :cond_3

    .line 698
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->I:Landroid/view/View;

    invoke-static {v0, v3}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 705
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yingyonghui/market/provider/k;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/yingyonghui/market/provider/k;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->k:Lcom/yingyonghui/market/provider/k;

    .line 709
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->k:Lcom/yingyonghui/market/provider/k;

    if-nez v0, :cond_4

    .line 710
    sget-object v1, Lcom/yingyonghui/market/provider/m;->a:Lcom/yingyonghui/market/provider/m;

    .line 711
    const/4 v0, 0x0

    .line 724
    :goto_2
    :try_start_0
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v5, p0, Lcom/yingyonghui/market/ActivityDetailApp;->i:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 726
    iget-object v2, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_5

    move v5, v3

    .line 729
    :goto_3
    :try_start_1
    invoke-static {}, Lcom/yingyonghui/market/util/q;->a()I

    move-result v2

    const/16 v6, 0xa

    if-lt v2, v6, :cond_17

    .line 730
    const-class v2, Landroid/content/pm/PackageInfo;

    .line 731
    const-string v6, "lastUpdateTime"

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 733
    const-string v8, "firstInstallTime"

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 735
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v8

    .line 737
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v10

    .line 741
    cmp-long v2, v8, v10

    if-lez v2, :cond_6

    move v2, v3

    .line 743
    :goto_4
    :try_start_2
    iget v6, p0, Lcom/yingyonghui/market/ActivityDetailApp;->j:I

    iget v8, v7, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-le v6, v8, :cond_7

    move v6, v3

    .line 744
    :goto_5
    :try_start_3
    iget v7, v7, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-lez v7, :cond_1

    move v4, v3

    :cond_1
    move v13, v5

    move v5, v6

    move v6, v4

    move v4, v13

    .line 749
    :goto_6
    sget-object v7, Lcom/yingyonghui/market/provider/m;->b:Lcom/yingyonghui/market/provider/m;

    if-eq v1, v7, :cond_2

    sget-object v7, Lcom/yingyonghui/market/provider/m;->h:Lcom/yingyonghui/market/provider/m;

    if-ne v1, v7, :cond_8

    .line 751
    :cond_2
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->z:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 752
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->u:Landroid/widget/TextView;

    const v1, 0x7f0900a1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 753
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->p:Landroid/view/View;

    invoke-static {v0, v3}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 756
    const-string v0, "download_error"

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->S:Ljava/lang/String;

    .line 757
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->E:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 758
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->G:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 760
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->k:Lcom/yingyonghui/market/provider/k;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->s:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityDetailApp;->t:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1, v2}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Lcom/yingyonghui/market/provider/k;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    goto/16 :goto_0

    .line 700
    :cond_3
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->I:Landroid/view/View;

    invoke-static {v0, v4}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 701
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->p:Landroid/view/View;

    invoke-static {v0, v4}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    goto/16 :goto_1

    .line 713
    :cond_4
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->k:Lcom/yingyonghui/market/provider/k;

    invoke-virtual {v0}, Lcom/yingyonghui/market/provider/k;->d()Lcom/yingyonghui/market/provider/m;

    move-result-object v1

    .line 714
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->k:Lcom/yingyonghui/market/provider/k;

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yingyonghui/market/provider/k;->a(Landroid/content/ContentResolver;)Ljava/io/File;

    move-result-object v0

    goto/16 :goto_2

    :cond_5
    move v5, v4

    .line 726
    goto/16 :goto_3

    :cond_6
    move v2, v4

    .line 741
    goto :goto_4

    :cond_7
    move v6, v4

    .line 743
    goto :goto_5

    :catch_0
    move-exception v2

    move v2, v4

    move v5, v4

    move v6, v4

    :goto_7
    move v13, v5

    move v5, v6

    move v6, v4

    move v4, v13

    goto :goto_6

    .line 762
    :cond_8
    sget-object v7, Lcom/yingyonghui/market/provider/m;->f:Lcom/yingyonghui/market/provider/m;

    if-eq v1, v7, :cond_9

    sget-object v7, Lcom/yingyonghui/market/provider/m;->m:Lcom/yingyonghui/market/provider/m;

    if-ne v1, v7, :cond_c

    .line 764
    :cond_9
    if-eqz v5, :cond_b

    .line 765
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->x:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 774
    :cond_a
    :goto_8
    invoke-direct {p0, v4, v2}, Lcom/yingyonghui/market/ActivityDetailApp;->a(ZZ)V

    .line 777
    const-string v0, "feedback"

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->S:Ljava/lang/String;

    .line 778
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->E:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 779
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->H:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    goto/16 :goto_0

    .line 767
    :cond_b
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->v:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 768
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/GlobalUtil;->c(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 770
    if-eqz v0, :cond_a

    .line 771
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->v:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_8

    .line 780
    :cond_c
    sget-object v7, Lcom/yingyonghui/market/provider/m;->j:Lcom/yingyonghui/market/provider/m;

    if-ne v1, v7, :cond_e

    .line 781
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 782
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->w:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 784
    invoke-direct {p0, v4, v2}, Lcom/yingyonghui/market/ActivityDetailApp;->a(ZZ)V

    .line 787
    const-string v0, "feedback"

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->S:Ljava/lang/String;

    .line 788
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->E:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 789
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->H:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    goto/16 :goto_0

    .line 791
    :cond_d
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->k:Lcom/yingyonghui/market/provider/k;

    sget-object v1, Lcom/yingyonghui/market/provider/m;->l:Lcom/yingyonghui/market/provider/m;

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/provider/k;->a(Lcom/yingyonghui/market/provider/m;)V

    .line 792
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->k:Lcom/yingyonghui/market/provider/k;

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/provider/k;->b(Landroid/content/ContentResolver;)V

    .line 794
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->ab:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 798
    :cond_e
    sget-object v7, Lcom/yingyonghui/market/provider/m;->d:Lcom/yingyonghui/market/provider/m;

    if-ne v1, v7, :cond_11

    .line 799
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 800
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->w:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 801
    if-eqz v6, :cond_f

    .line 802
    invoke-direct {p0, v4, v2}, Lcom/yingyonghui/market/ActivityDetailApp;->a(ZZ)V

    .line 804
    const-string v0, "feedback"

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->S:Ljava/lang/String;

    .line 805
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->E:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 806
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->H:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    goto/16 :goto_0

    .line 809
    :cond_f
    const-string v0, "install_error"

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->S:Ljava/lang/String;

    .line 810
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->E:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 811
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->G:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    goto/16 :goto_0

    .line 814
    :cond_10
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->k:Lcom/yingyonghui/market/provider/k;

    sget-object v1, Lcom/yingyonghui/market/provider/m;->g:Lcom/yingyonghui/market/provider/m;

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/provider/k;->a(Lcom/yingyonghui/market/provider/m;)V

    .line 815
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->k:Lcom/yingyonghui/market/provider/k;

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/provider/k;->b(Landroid/content/ContentResolver;)V

    .line 817
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->ab:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 821
    :cond_11
    sget-object v0, Lcom/yingyonghui/market/provider/m;->e:Lcom/yingyonghui/market/provider/m;

    if-eq v1, v0, :cond_12

    sget-object v0, Lcom/yingyonghui/market/provider/m;->k:Lcom/yingyonghui/market/provider/m;

    if-ne v1, v0, :cond_13

    .line 823
    :cond_12
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->u:Landroid/widget/TextView;

    const v1, 0x7f090014

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 825
    :cond_13
    if-eqz v5, :cond_14

    .line 826
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->x:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 827
    invoke-direct {p0, v4, v2}, Lcom/yingyonghui/market/ActivityDetailApp;->a(ZZ)V

    .line 830
    const-string v0, "feedback"

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->S:Ljava/lang/String;

    .line 831
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->E:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 832
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->H:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    goto/16 :goto_0

    .line 833
    :cond_14
    if-eqz v6, :cond_16

    .line 834
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->v:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 835
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/GlobalUtil;->c(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 837
    if-eqz v0, :cond_15

    .line 838
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->v:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 840
    :cond_15
    invoke-direct {p0, v4, v2}, Lcom/yingyonghui/market/ActivityDetailApp;->a(ZZ)V

    .line 843
    const-string v0, "feedback"

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->S:Ljava/lang/String;

    .line 844
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->E:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    .line 845
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->H:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    goto/16 :goto_0

    .line 847
    :cond_16
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->F:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Landroid/view/View;Z)Z

    goto/16 :goto_0

    :catch_1
    move-exception v2

    move v2, v4

    move v6, v4

    goto/16 :goto_7

    :catch_2
    move-exception v6

    move v6, v4

    goto/16 :goto_7

    :catch_3
    move-exception v7

    goto/16 :goto_7

    :cond_17
    move v2, v4

    goto/16 :goto_4
.end method

.method static synthetic d(Lcom/yingyonghui/market/ActivityDetailApp;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 65
    new-instance v1, Lcom/yingyonghui/market/fm;

    invoke-direct {v1, p0}, Lcom/yingyonghui/market/fm;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->S:Ljava/lang/String;

    const-string v2, "download_error"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f09013d

    invoke-virtual {p0, v2}, Lcom/yingyonghui/market/ActivityDetailApp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityDetailApp;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/yingyonghui/market/fm;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->S:Ljava/lang/String;

    const-string v2, "feedback"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f090140

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yingyonghui/market/fm;->a(Ljava/lang/CharSequence;)V

    :goto_1
    const v0, 0x7f090142

    new-instance v2, Lcom/yingyonghui/market/dr;

    invoke-direct {v2, p0, v1}, Lcom/yingyonghui/market/dr;-><init>(Lcom/yingyonghui/market/ActivityDetailApp;Lcom/yingyonghui/market/fm;)V

    invoke-virtual {v1, v0, v2}, Lcom/yingyonghui/market/fm;->a(ILcom/yingyonghui/market/cf;)Lcom/yingyonghui/market/fm;

    const v0, 0x7f09007a

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/yingyonghui/market/fm;->a(ILcom/yingyonghui/market/l;)Lcom/yingyonghui/market/fm;

    invoke-virtual {v1}, Lcom/yingyonghui/market/fm;->show()V

    invoke-virtual {v1}, Lcom/yingyonghui/market/fm;->b()Landroid/widget/TextView;

    move-result-object v0

    const/high16 v2, 0x41a0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1}, Lcom/yingyonghui/market/fm;->a()Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->S:Ljava/lang/String;

    const-string v2, "feedback"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/yingyonghui/market/fm;->c()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    invoke-virtual {v1}, Lcom/yingyonghui/market/fm;->c()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p0}, Lcom/yingyonghui/market/provider/g;->a(Landroid/content/Context;)Lcom/yingyonghui/market/provider/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yingyonghui/market/provider/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->S:Ljava/lang/String;

    const-string v2, "install_error"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f09013e

    invoke-virtual {p0, v2}, Lcom/yingyonghui/market/ActivityDetailApp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityDetailApp;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f09013f

    invoke-virtual {p0, v2}, Lcom/yingyonghui/market/ActivityDetailApp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityDetailApp;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    const v0, 0x7f090141

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yingyonghui/market/fm;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/yingyonghui/market/fm;->d()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/yingyonghui/market/fm;->c()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/yingyonghui/market/fm;->d()Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Lcom/yingyonghui/market/dq;

    invoke-direct {v2, p0, v1}, Lcom/yingyonghui/market/dq;-><init>(Lcom/yingyonghui/market/ActivityDetailApp;Lcom/yingyonghui/market/fm;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_2
.end method

.method static synthetic e(Lcom/yingyonghui/market/ActivityDetailApp;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->i:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 997
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    if-eqz v0, :cond_0

    .line 998
    new-instance v0, Landroid/content/Intent;

    const-string v1, "send_asset_detail"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 999
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1000
    const-string v2, "_id"

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    iget v3, v3, Lcom/yingyonghui/market/model/o;->e:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1001
    const-string v2, "title"

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    iget-object v3, v3, Lcom/yingyonghui/market/model/o;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    const-string v2, "author"

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    iget-object v3, v3, Lcom/yingyonghui/market/model/o;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const-string v2, "rating"

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    iget v3, v3, Lcom/yingyonghui/market/model/o;->l:F

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1004
    const-string v2, "ratingNumbers"

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    iget v3, v3, Lcom/yingyonghui/market/model/o;->B:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1005
    const-string v2, "pkgName"

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    iget-object v3, v3, Lcom/yingyonghui/market/model/o;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    const-string v2, "size"

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    iget v3, v3, Lcom/yingyonghui/market/model/o;->o:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1007
    const-string v2, "version"

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    iget-object v3, v3, Lcom/yingyonghui/market/model/o;->q:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    const-string v2, "lastUpdate"

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    iget-object v3, v3, Lcom/yingyonghui/market/model/o;->r:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    const-string v2, "versionCode"

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    iget v3, v3, Lcom/yingyonghui/market/model/o;->s:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1010
    const-string v2, "downloadCountMax"

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    iget v3, v3, Lcom/yingyonghui/market/model/o;->z:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1011
    const-string v2, "downloadCountMin"

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    iget v3, v3, Lcom/yingyonghui/market/model/o;->A:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1012
    const-string v2, "description"

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    iget-object v3, v3, Lcom/yingyonghui/market/model/o;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    const-string v2, "myComment"

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    iget-object v3, v3, Lcom/yingyonghui/market/model/o;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    const-string v2, "myCommentDate"

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    iget-wide v3, v3, Lcom/yingyonghui/market/model/o;->c:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1016
    const-string v2, "myRating"

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    iget v3, v3, Lcom/yingyonghui/market/model/o;->d:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1018
    const-string v2, "installed"

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    iget v3, v3, Lcom/yingyonghui/market/model/o;->n:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1019
    const-string v2, "promotionId"

    iget v3, p0, Lcom/yingyonghui/market/ActivityDetailApp;->M:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1020
    const-string v2, "promotionAgent"

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityDetailApp;->N:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    const-string v2, "promotionText"

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityDetailApp;->O:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    const-string v2, "page"

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityDetailApp;->Q:Lcom/yingyonghui/market/log/m;

    invoke-virtual {v3}, Lcom/yingyonghui/market/log/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    const-string v2, "snapshotUrls"

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    iget-object v3, v3, Lcom/yingyonghui/market/model/o;->C:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1024
    const-string v2, "iconUrl"

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    iget-object v3, v3, Lcom/yingyonghui/market/model/o;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1027
    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 1029
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/yingyonghui/market/ActivityDetailApp;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->d()V

    return-void
.end method

.method static synthetic g(Lcom/yingyonghui/market/ActivityDetailApp;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->X:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/yingyonghui/market/ActivityDetailApp;)I
    .locals 1
    .parameter

    .prologue
    .line 65
    iget v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->f:I

    return v0
.end method

.method static synthetic i(Lcom/yingyonghui/market/ActivityDetailApp;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/yingyonghui/market/ActivityDetailApp;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->S:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/yingyonghui/market/ActivityDetailApp;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->z:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 949
    :try_start_0
    sget-object v0, Lcom/yingyonghui/market/ActivityDetailApp;->U:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 950
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/yingyonghui/market/ActivityDetailApp;->U:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yingyonghui/market/log/l;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    :cond_0
    :goto_0
    return-void

    .line 952
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f09004a

    const/4 v2, 0x1

    .line 630
    invoke-static {}, Lcom/yingyonghui/market/util/q;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 631
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->J:Landroid/widget/TabWidget;

    invoke-virtual {v0, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 632
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 633
    if-eqz v0, :cond_0

    .line 634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/yingyonghui/market/ActivityDetailApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/yingyonghui/market/ActivityDetailApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected final a(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 894
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/yingyonghui/market/online/b;

    .line 895
    iget v2, v0, Lcom/yingyonghui/market/online/b;->c:I

    .line 896
    const/16 v3, 0x64

    if-ne v2, v3, :cond_2

    .line 897
    iget-object v0, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/yingyonghui/market/online/e;->e(Landroid/content/Context;Ljava/lang/String;)Lcom/yingyonghui/market/model/o;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    .line 898
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    if-eqz v0, :cond_1

    .line 899
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    iget-object v2, v2, Lcom/yingyonghui/market/model/o;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    iget v3, v3, Lcom/yingyonghui/market/model/o;->s:I

    iget-object v4, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    iget v4, v4, Lcom/yingyonghui/market/model/o;->e:I

    invoke-static {p0, v2, v3, v4}, Lcom/yingyonghui/market/util/v;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    iput v2, v0, Lcom/yingyonghui/market/model/o;->n:I

    .line 903
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->c:Lcom/yingyonghui/market/model/q;

    .line 904
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->e()V

    .line 906
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 907
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->o:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 909
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 910
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 911
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityDetailApp;->Q:Lcom/yingyonghui/market/log/m;

    invoke-static {v1, v2, v0}, Lcom/yingyonghui/market/log/l;->c(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/util/List;)V

    .line 942
    :cond_0
    :goto_0
    return-void

    .line 913
    :cond_1
    const v0, 0x7f0900f4

    invoke-static {p0, v0}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;I)V

    .line 915
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->finish()V

    goto :goto_0

    .line 918
    :cond_2
    const/16 v3, 0x66

    if-ne v2, v3, :cond_0

    .line 920
    iget-object v0, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 922
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 923
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 924
    const/16 v3, 0x30

    if-lt v2, v3, :cond_3

    const/16 v3, 0x39

    if-gt v2, v3, :cond_3

    .line 925
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 926
    if-nez v0, :cond_3

    .line 927
    const/4 v0, 0x1

    .line 932
    :goto_1
    if-nez v0, :cond_0

    .line 937
    sget-object v0, Lcom/yingyonghui/market/ActivityDetailApp;->U:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 938
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/yingyonghui/market/ActivityDetailApp;->U:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yingyonghui/market/log/l;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final b()Lcom/yingyonghui/market/log/m;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->Q:Lcom/yingyonghui/market/log/m;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->m:I

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 263
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 265
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 275
    :cond_0
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 267
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 268
    const-class v1, Lcom/yingyonghui/market/ActivityTab4Search;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 270
    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->startActivity(Landroid/content/Intent;)V

    .line 271
    const/4 v0, 0x1

    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->Z:Lcom/yingyonghui/market/ff;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->Z:Lcom/yingyonghui/market/ff;

    invoke-static {v0}, Lcom/yingyonghui/market/ff;->b(Lcom/yingyonghui/market/ff;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->Z:Lcom/yingyonghui/market/ff;

    .line 449
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 450
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 1126
    invoke-super {p0, p1, p2, p3}, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1128
    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_2

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->c:Lcom/yingyonghui/market/model/q;

    if-eqz v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 1131
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->c:Lcom/yingyonghui/market/model/q;

    iget-object v0, v0, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->c:Lcom/yingyonghui/market/model/q;

    iget v1, v1, Lcom/yingyonghui/market/model/q;->s:I

    iget v2, p0, Lcom/yingyonghui/market/ActivityDetailApp;->f:I

    invoke-static {p0, v0, v1, v2}, Lcom/yingyonghui/market/util/v;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->h:I

    .line 1134
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->d()V

    .line 1146
    :cond_1
    :goto_0
    return-void

    .line 1136
    :cond_2
    const/16 v0, 0x190

    if-ne p1, v0, :cond_1

    .line 1137
    if-ne p2, v1, :cond_1

    .line 1138
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    .line 1139
    const-string v1, "comment"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 1140
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1141
    const-class v2, Lcom/yingyonghui/market/ActivityListComments;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1142
    const-string v2, "_id"

    iget v3, p0, Lcom/yingyonghui/market/ActivityDetailApp;->f:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1143
    const-string v2, "comment"

    invoke-virtual {v0, v2, v1}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter

    .prologue
    const/16 v1, 0xdc

    const/16 v13, 0x64

    const/4 v4, -0x1

    const/4 v12, 0x0

    .line 1032
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1117
    :goto_0
    :pswitch_0
    return-void

    .line 1035
    :pswitch_1
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->c:Lcom/yingyonghui/market/model/q;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yingyonghui/market/util/GlobalUtil;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    iget v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->h:I

    invoke-static {v0}, Lcom/yingyonghui/market/util/GlobalUtil;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0}, Lcom/yingyonghui/market/util/t;->a(Landroid/content/Context;)Lcom/yingyonghui/market/util/t;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->c:Lcom/yingyonghui/market/model/q;

    iget-object v1, v1, Lcom/yingyonghui/market/model/q;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityDetailApp;->c:Lcom/yingyonghui/market/model/q;

    iget v2, v2, Lcom/yingyonghui/market/model/q;->e:I

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityDetailApp;->c:Lcom/yingyonghui/market/model/q;

    iget-object v3, v3, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    iget-object v4, p0, Lcom/yingyonghui/market/ActivityDetailApp;->c:Lcom/yingyonghui/market/model/q;

    iget-object v4, v4, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/yingyonghui/market/ActivityDetailApp;->c:Lcom/yingyonghui/market/model/q;

    iget v5, v5, Lcom/yingyonghui/market/model/q;->o:I

    iget v6, p0, Lcom/yingyonghui/market/ActivityDetailApp;->M:I

    iget-object v7, p0, Lcom/yingyonghui/market/ActivityDetailApp;->N:Ljava/lang/String;

    iget-object v8, p0, Lcom/yingyonghui/market/ActivityDetailApp;->P:Ljava/lang/String;

    iget-object v11, p0, Lcom/yingyonghui/market/ActivityDetailApp;->c:Lcom/yingyonghui/market/model/q;

    iget-object v11, v11, Lcom/yingyonghui/market/model/q;->f:Ljava/lang/String;

    invoke-virtual/range {v0 .. v11}, Lcom/yingyonghui/market/util/t;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->ab:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->ab:Landroid/os/Handler;

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1042
    :cond_0
    iget v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->h:I

    invoke-static {v0}, Lcom/yingyonghui/market/util/GlobalUtil;->a(I)Ljava/lang/String;

    move-result-object v5

    .line 1043
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->Q:Lcom/yingyonghui/market/log/m;

    const-string v2, ""

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityDetailApp;->c:Lcom/yingyonghui/market/model/q;

    iget v4, v3, Lcom/yingyonghui/market/model/q;->e:I

    move v3, v12

    invoke-static/range {v0 .. v5}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 1047
    :pswitch_2
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->c:Lcom/yingyonghui/market/model/q;

    iget-object v0, v0, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/yingyonghui/market/util/GlobalUtil;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 1049
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->ab:Landroid/os/Handler;

    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, v13, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1051
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->Q:Lcom/yingyonghui/market/log/m;

    invoke-static {v1}, Lcom/yingyonghui/market/log/h;->b(Lcom/yingyonghui/market/log/m;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1055
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1056
    const-string v1, "_id"

    iget v2, p0, Lcom/yingyonghui/market/ActivityDetailApp;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1057
    const-string v1, "position"

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "position"

    invoke-virtual {v2, v3, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1058
    const-string v1, "select"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1059
    invoke-virtual {p0, v4, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->setResult(ILandroid/content/Intent;)V

    .line 1060
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->finish()V

    goto/16 :goto_0

    .line 1064
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1065
    const-string v1, "_id"

    iget v2, p0, Lcom/yingyonghui/market/ActivityDetailApp;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1066
    const-string v1, "position"

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "position"

    invoke-virtual {v2, v3, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1067
    const-string v1, "select"

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1068
    invoke-virtual {p0, v4, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->setResult(ILandroid/content/Intent;)V

    .line 1069
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->finish()V

    goto/16 :goto_0

    .line 1073
    :pswitch_5
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->c:Lcom/yingyonghui/market/model/q;

    iget-object v0, v0, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/yingyonghui/market/util/GlobalUtil;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 1075
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->Q:Lcom/yingyonghui/market/log/m;

    invoke-static {v1}, Lcom/yingyonghui/market/log/h;->c(Lcom/yingyonghui/market/log/m;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1081
    :pswitch_6
    :try_start_0
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1083
    if-eqz v0, :cond_1

    .line 1085
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1096
    :goto_1
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->Q:Lcom/yingyonghui/market/log/m;

    invoke-static {v1}, Lcom/yingyonghui/market/log/h;->d(Lcom/yingyonghui/market/log/m;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1087
    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yingyonghui/market/ActivityDetailApp;->a(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/Intent;

    move-result-object v0

    .line 1088
    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    .line 1091
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->v:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1092
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->v:Landroid/widget/Button;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1100
    :pswitch_7
    invoke-static {p0}, Lcom/yingyonghui/market/util/t;->a(Landroid/content/Context;)Lcom/yingyonghui/market/util/t;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/util/t;->a(Ljava/lang/String;)V

    .line 1101
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->d()V

    .line 1106
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->Q:Lcom/yingyonghui/market/log/m;

    invoke-static {v1}, Lcom/yingyonghui/market/log/h;->e(Lcom/yingyonghui/market/log/m;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1110
    :pswitch_8
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->X:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1111
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->Q:Lcom/yingyonghui/market/log/m;

    invoke-static {v1}, Lcom/yingyonghui/market/log/h;->h(Lcom/yingyonghui/market/log/m;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1115
    :pswitch_9
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->X:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1116
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->Q:Lcom/yingyonghui/market/log/m;

    invoke-static {v1}, Lcom/yingyonghui/market/log/h;->f(Lcom/yingyonghui/market/log/m;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1032
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b002d
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v9, 0x0

    .line 162
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {p0, v3}, Lcom/yingyonghui/market/ActivityDetailApp;->requestWindowFeature(I)Z

    .line 164
    const v0, 0x103000a

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->setTheme(I)V

    .line 166
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 187
    const-string v1, "_id"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->f:I

    .line 188
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->g:Ljava/lang/String;

    .line 189
    const-string v1, "pkgName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->i:Ljava/lang/String;

    .line 190
    const-string v1, "installed"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->h:I

    .line 191
    const-string v1, "preinstall"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->L:Z

    .line 192
    const-string v1, "promotionId"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->M:I

    .line 193
    const-string v1, "promotionAgent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->N:Ljava/lang/String;

    .line 194
    const-string v1, "promotionText"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->O:Ljava/lang/String;

    .line 195
    const-string v1, "promotionDownUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->P:Ljava/lang/String;

    .line 196
    const-string v1, "versionCode"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->j:I

    .line 197
    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->R:Ljava/lang/String;

    .line 200
    new-instance v1, Lcom/yingyonghui/market/model/q;

    invoke-direct {v1}, Lcom/yingyonghui/market/model/q;-><init>()V

    iput-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->c:Lcom/yingyonghui/market/model/q;

    .line 201
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->c:Lcom/yingyonghui/market/model/q;

    iget v2, p0, Lcom/yingyonghui/market/ActivityDetailApp;->f:I

    iput v2, v1, Lcom/yingyonghui/market/model/q;->e:I

    .line 202
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->c:Lcom/yingyonghui/market/model/q;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityDetailApp;->g:Ljava/lang/String;

    iput-object v2, v1, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    .line 203
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->c:Lcom/yingyonghui/market/model/q;

    iget v2, p0, Lcom/yingyonghui/market/ActivityDetailApp;->h:I

    iput v2, v1, Lcom/yingyonghui/market/model/q;->n:I

    .line 204
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->c:Lcom/yingyonghui/market/model/q;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityDetailApp;->i:Ljava/lang/String;

    iput-object v2, v1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    .line 205
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->c:Lcom/yingyonghui/market/model/q;

    const-string v2, "size"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/yingyonghui/market/model/q;->o:I

    .line 206
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->c:Lcom/yingyonghui/market/model/q;

    iget v2, p0, Lcom/yingyonghui/market/ActivityDetailApp;->j:I

    iput v2, v1, Lcom/yingyonghui/market/model/q;->s:I

    .line 208
    const-string v1, "assetDetail"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/o;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    .line 209
    new-instance v0, Lcom/yingyonghui/market/log/m;

    const-string v1, "Detail"

    invoke-direct {v0, v1}, Lcom/yingyonghui/market/log/m;-><init>(Ljava/lang/String;)V

    const-string v1, "assetId"

    iget v2, p0, Lcom/yingyonghui/market/ActivityDetailApp;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yingyonghui/market/log/m;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yingyonghui/market/log/m;

    move-result-object v0

    const-string v1, "from"

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityDetailApp;->R:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yingyonghui/market/log/m;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yingyonghui/market/log/m;

    move-result-object v0

    iget v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->M:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->N:Ljava/lang/String;

    const-string v2, "youyuad"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "promotionAgent"

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityDetailApp;->N:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yingyonghui/market/log/m;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yingyonghui/market/log/m;

    move-result-object v0

    const-string v1, "promotionId"

    iget v2, p0, Lcom/yingyonghui/market/ActivityDetailApp;->M:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yingyonghui/market/log/m;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yingyonghui/market/log/m;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->Q:Lcom/yingyonghui/market/log/m;

    .line 211
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->setContentView(I)V

    .line 213
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->d:Landroid/widget/TabHost;

    .line 214
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->d:Landroid/widget/TabHost;

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabWidget;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->J:Landroid/widget/TabWidget;

    .line 215
    const v0, 0x7f0b0025

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->n:Landroid/view/View;

    const v0, 0x7f0b002a

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->o:Landroid/view/View;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->n:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->o:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b0059

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/yingyonghui/market/du;

    invoke-direct {v1, p0}, Lcom/yingyonghui/market/du;-><init>(Lcom/yingyonghui/market/ActivityDetailApp;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    new-instance v1, Lcom/yingyonghui/market/dt;

    invoke-direct {v1, p0}, Lcom/yingyonghui/market/dt;-><init>(Lcom/yingyonghui/market/ActivityDetailApp;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->p:Landroid/view/View;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->p:Landroid/view/View;

    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->s:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->p:Landroid/view/View;

    const v1, 0x7f0b0029

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->t:Landroid/widget/TextView;

    const v0, 0x7f0b002c

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->q:Landroid/view/View;

    const v0, 0x7f0b0039

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->r:Landroid/view/View;

    const v0, 0x7f0b0031

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->w:Landroid/widget/Button;

    const v0, 0x7f0b002d

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->v:Landroid/widget/Button;

    const v0, 0x7f0b002f

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->x:Landroid/widget/Button;

    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->y:Landroid/widget/Button;

    const v0, 0x7f0b0033

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->z:Landroid/widget/Button;

    const v0, 0x7f0b0034

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->A:Landroid/widget/Button;

    const v0, 0x7f0b0030

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->B:Landroid/widget/Button;

    const v0, 0x7f0b0035

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->C:Landroid/widget/Button;

    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->D:Landroid/widget/Button;

    const v0, 0x7f0b002e

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->F:Landroid/widget/Button;

    const v0, 0x7f0b0036

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->E:Landroid/widget/Button;

    const v0, 0x7f0b0037

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->G:Landroid/widget/Button;

    const v0, 0x7f0b0038

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->H:Landroid/widget/Button;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->w:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->v:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->x:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->y:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->z:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->B:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->C:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->A:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->F:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->G:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->H:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->p:Landroid/view/View;

    const v1, 0x7f0b0027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->u:Landroid/widget/TextView;

    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->I:Landroid/view/View;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->I:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->I:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-static {}, Lcom/yingyonghui/market/util/GlobalUtil;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->z:Landroid/widget/Button;

    const v1, 0x7f090071

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_2
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->d:Landroid/widget/TabHost;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->d:Landroid/widget/TabHost;

    :cond_3
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->d:Landroid/widget/TabHost;

    const-string v1, "detail"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->l:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/TableLayout$LayoutParams;

    const/high16 v0, 0x3f80

    invoke-direct {v3, v4, v4, v0}, Landroid/widget/TableLayout$LayoutParams;-><init>(IIF)V

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030052

    invoke-virtual {v0, v1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f0200a9

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const v4, 0x7f090048

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200da

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget v4, p0, Lcom/yingyonghui/market/ActivityDetailApp;->K:F

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "detail"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    :try_start_0
    const-class v4, Landroid/widget/TabHost$TabSpec;

    const-string v5, "setIndicator"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/view/View;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v4, p0, Lcom/yingyonghui/market/ActivityDetailApp;->l:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "_id"

    iget v5, p0, Lcom/yingyonghui/market/ActivityDetailApp;->f:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->d:Landroid/widget/TabHost;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->d:Landroid/widget/TabHost;

    const-string v2, "comment"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f030052

    invoke-virtual {v0, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0200a9

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const v2, 0x7f09004a

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0200da

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget v2, p0, Lcom/yingyonghui/market/ActivityDetailApp;->K:F

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "comment"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    :try_start_1
    const-class v2, Landroid/widget/TabHost$TabSpec;

    const-string v3, "setIndicator"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/view/View;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    iget-object v2, p0, Lcom/yingyonghui/market/ActivityDetailApp;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/yingyonghui/market/ActivityListComments;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "_id"

    iget v3, p0, Lcom/yingyonghui/market/ActivityDetailApp;->f:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->d:Landroid/widget/TabHost;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->d:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    invoke-direct {p0, v9}, Lcom/yingyonghui/market/ActivityDetailApp;->b(I)V

    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->d()V

    iget v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->f:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0900f4

    invoke-static {p0, v0}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->finish()V

    :goto_2
    iget v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->M:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->N:Ljava/lang/String;

    const-string v1, "youyuad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->a:Lcom/yingyonghui/market/online/e;

    iget v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->M:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityDetailApp;->N:Ljava/lang/String;

    const-string v3, "pageview"

    invoke-virtual {v0, v1, v2, v3}, Lcom/yingyonghui/market/online/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "app_instaled_refreshview"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "app_uninstaled_refreshview"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->Y:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 218
    return-void

    .line 215
    :cond_5
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    iget-object v1, v1, Lcom/yingyonghui/market/model/o;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    iget v2, v2, Lcom/yingyonghui/market/model/o;->s:I

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    iget v3, v3, Lcom/yingyonghui/market/model/o;->e:I

    invoke-static {p0, v1, v2, v3}, Lcom/yingyonghui/market/util/v;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    iput v1, v0, Lcom/yingyonghui/market/model/o;->n:I

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->e:Lcom/yingyonghui/market/model/o;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->c:Lcom/yingyonghui/market/model/q;

    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->e()V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->n:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->o:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->a:Lcom/yingyonghui/market/online/e;

    iget v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->f:I

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityDetailApp;->i:Ljava/lang/String;

    const/16 v3, 0x64

    iget-object v4, p0, Lcom/yingyonghui/market/ActivityDetailApp;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/yingyonghui/market/online/e;->a(ILjava/lang/String;ILandroid/os/Handler;)V

    goto :goto_2

    :catch_0
    move-exception v2

    goto/16 :goto_1

    :catch_1
    move-exception v4

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 246
    invoke-static {p1}, Lcom/yingyonghui/market/util/p;->a(Landroid/view/Menu;)Z

    .line 247
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 222
    invoke-super {p0}, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->onDestroy()V

    .line 223
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->Y:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 224
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 252
    invoke-static {p0, p1}, Lcom/yingyonghui/market/util/p;->a(Landroid/app/Activity;Landroid/view/MenuItem;)Z

    .line 253
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 240
    invoke-super {p0}, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->onPause()V

    .line 241
    invoke-static {p0}, Lcom/a/a/c;->a(Landroid/content/Context;)V

    .line 242
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityDetailApp;->c:Lcom/yingyonghui/market/model/q;

    iget v1, v1, Lcom/yingyonghui/market/model/q;->s:I

    iget v2, p0, Lcom/yingyonghui/market/ActivityDetailApp;->f:I

    invoke-static {p0, v0, v1, v2}, Lcom/yingyonghui/market/util/v;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->h:I

    .line 231
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->d()V

    .line 234
    :cond_0
    invoke-super {p0}, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->onResume()V

    .line 235
    invoke-static {p0}, Lcom/a/a/c;->b(Landroid/content/Context;)V

    .line 236
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 645
    const-string v0, "detail"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    const/4 v0, 0x0

    iput v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->m:I

    .line 651
    :goto_0
    iget v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->m:I

    invoke-direct {p0, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->b(I)V

    .line 652
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Detail"

    iget v2, p0, Lcom/yingyonghui/market/ActivityDetailApp;->m:I

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 654
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityDetailApp;->d()V

    .line 655
    return-void

    .line 648
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/yingyonghui/market/ActivityDetailApp;->m:I

    goto :goto_0
.end method
