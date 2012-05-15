.class final Lcom/yingyonghui/downloads/j;
.super Ljava/lang/Object;
.source "DownloadNotification.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/HashMap;

.field private c:Lcom/yingyonghui/downloads/u;

.field private d:Lcom/yingyonghui/market/log/m;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yingyonghui/downloads/u;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/yingyonghui/downloads/j;->a:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lcom/yingyonghui/downloads/j;->c:Lcom/yingyonghui/downloads/u;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yingyonghui/downloads/j;->b:Ljava/util/HashMap;

    .line 115
    new-instance v0, Lcom/yingyonghui/market/log/m;

    const-string v1, "Notification"

    invoke-direct {v0, v1}, Lcom/yingyonghui/market/log/m;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yingyonghui/downloads/j;->d:Lcom/yingyonghui/market/log/m;

    .line 116
    return-void
.end method

.method private b(Ljava/util/Collection;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 256
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/downloads/y;

    .line 257
    iget v1, v0, Lcom/yingyonghui/downloads/y;->j:I

    const/16 v4, 0xc8

    if-lt v1, v4, :cond_1

    iget v1, v0, Lcom/yingyonghui/downloads/y;->h:I

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_1
    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/yingyonghui/downloads/j;->b:Ljava/util/HashMap;

    iget-wide v4, v0, Lcom/yingyonghui/downloads/y;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 257
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 307
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Collection;)V
    .locals 14
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/yingyonghui/downloads/j;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/downloads/y;

    const/16 v1, 0x64

    iget v3, v0, Lcom/yingyonghui/downloads/y;->j:I

    if-gt v1, v3, :cond_5

    iget v1, v0, Lcom/yingyonghui/downloads/y;->j:I

    const/16 v3, 0xc8

    if-ge v1, v3, :cond_5

    iget v1, v0, Lcom/yingyonghui/downloads/y;->h:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_0

    iget-object v3, v0, Lcom/yingyonghui/downloads/y;->n:Ljava/lang/String;

    iget-wide v4, v0, Lcom/yingyonghui/downloads/y;->t:J

    iget-wide v6, v0, Lcom/yingyonghui/downloads/y;->u:J

    iget-wide v8, v0, Lcom/yingyonghui/downloads/y;->a:J

    iget-object v1, v0, Lcom/yingyonghui/downloads/y;->C:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/yingyonghui/downloads/j;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v10, 0x7f09010b

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    new-instance v10, Lcom/yingyonghui/downloads/f;

    invoke-direct {v10}, Lcom/yingyonghui/downloads/f;-><init>()V

    long-to-int v8, v8

    iput v8, v10, Lcom/yingyonghui/downloads/f;->a:I

    iput-object v3, v10, Lcom/yingyonghui/downloads/f;->e:Ljava/lang/String;

    iget-object v3, v0, Lcom/yingyonghui/downloads/y;->p:Ljava/lang/String;

    iput-object v3, v10, Lcom/yingyonghui/downloads/f;->i:Ljava/lang/String;

    iget-object v0, v0, Lcom/yingyonghui/downloads/y;->D:Ljava/lang/String;

    iput-object v0, v10, Lcom/yingyonghui/downloads/f;->f:Ljava/lang/String;

    iget-wide v8, v10, Lcom/yingyonghui/downloads/f;->b:J

    add-long/2addr v6, v8

    iput-wide v6, v10, Lcom/yingyonghui/downloads/f;->b:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    iget-wide v6, v10, Lcom/yingyonghui/downloads/f;->c:J

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-nez v0, :cond_6

    :cond_3
    const-wide/16 v3, -0x1

    iput-wide v3, v10, Lcom/yingyonghui/downloads/f;->c:J

    :goto_2
    iget v0, v10, Lcom/yingyonghui/downloads/f;->d:I

    const/4 v3, 0x2

    if-ge v0, v3, :cond_4

    iget-object v0, v10, Lcom/yingyonghui/downloads/f;->g:[Ljava/lang/String;

    iget v3, v10, Lcom/yingyonghui/downloads/f;->d:I

    aput-object v1, v0, v3

    :cond_4
    iget v0, v10, Lcom/yingyonghui/downloads/f;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v10, Lcom/yingyonghui/downloads/f;->d:I

    iget-object v0, p0, Lcom/yingyonghui/downloads/j;->b:Ljava/util/HashMap;

    iget-object v1, v10, Lcom/yingyonghui/downloads/f;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    iget-wide v6, v10, Lcom/yingyonghui/downloads/f;->c:J

    add-long v3, v6, v4

    iput-wide v3, v10, Lcom/yingyonghui/downloads/f;->c:J

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/yingyonghui/downloads/j;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/downloads/f;

    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iget-object v1, v0, Lcom/yingyonghui/downloads/f;->h:Ljava/lang/String;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    move v2, v1

    :goto_4
    const v1, 0x1080081

    if-eqz v2, :cond_8

    const v1, 0x108008a

    :cond_8
    iput v1, v4, Landroid/app/Notification;->icon:I

    iget v5, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/app/Notification;->flags:I

    new-instance v5, Landroid/widget/RemoteViews;

    const-string v6, "com.yingyonghui.market"

    const v7, 0x7f03004d

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/yingyonghui/downloads/f;->g:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v7, 0x7f0b004d

    iget-object v8, p0, Lcom/yingyonghui/downloads/j;->a:Landroid/content/Context;

    const v9, 0x7f09010c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v7, 0x7f0b0072

    invoke-virtual {v5, v7, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    if-eqz v2, :cond_a

    const v2, 0x7f0b00d0

    const/16 v7, 0x8

    invoke-virtual {v5, v2, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_5
    const v7, 0x7f0b010e

    iget-wide v8, v0, Lcom/yingyonghui/downloads/f;->c:J

    iget-wide v10, v0, Lcom/yingyonghui/downloads/f;->b:J

    const-wide/16 v12, 0x0

    cmp-long v2, v8, v12

    if-gtz v2, :cond_c

    const-string v2, ""

    :goto_6
    invoke-virtual {v5, v7, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f0b010d

    invoke-virtual {v5, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iput-object v5, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/yingyonghui/market/by;->a:Ljava/lang/String;

    const-class v5, Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "title"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "size"

    iget-wide v5, v0, Lcom/yingyonghui/downloads/f;->c:J

    invoke-virtual {v1, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "pkgName"

    iget-object v5, v0, Lcom/yingyonghui/downloads/f;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "from"

    iget-object v5, p0, Lcom/yingyonghui/downloads/j;->d:Lcom/yingyonghui/market/log/m;

    const-string v6, "index"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/yingyonghui/market/log/m;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yingyonghui/market/log/m;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yingyonghui/market/log/m;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "market://package/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/yingyonghui/downloads/f;->i:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/yingyonghui/downloads/j;->a:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {v2, v5, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget v1, v0, Lcom/yingyonghui/downloads/f;->a:I

    int-to-long v1, v1

    iput-wide v1, v4, Landroid/app/Notification;->when:J

    iget-object v1, p0, Lcom/yingyonghui/downloads/j;->c:Lcom/yingyonghui/downloads/u;

    iget v0, v0, Lcom/yingyonghui/downloads/f;->a:I

    int-to-long v5, v0

    invoke-interface {v1, v5, v6, v4}, Lcom/yingyonghui/downloads/u;->a(JLandroid/app/Notification;)V

    goto/16 :goto_3

    :cond_9
    const/4 v1, 0x0

    move v2, v1

    goto/16 :goto_4

    :cond_a
    const v7, 0x7f0b00d0

    iget-wide v8, v0, Lcom/yingyonghui/downloads/f;->c:J

    long-to-int v8, v8

    iget-wide v9, v0, Lcom/yingyonghui/downloads/f;->b:J

    long-to-int v9, v9

    iget-wide v10, v0, Lcom/yingyonghui/downloads/f;->c:J

    const-wide/16 v12, -0x1

    cmp-long v2, v10, v12

    if-nez v2, :cond_b

    const/4 v2, 0x1

    :goto_7
    invoke-virtual {v5, v7, v8, v9, v2}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    goto/16 :goto_5

    :cond_b
    const/4 v2, 0x0

    goto :goto_7

    :cond_c
    const-wide/16 v12, 0x64

    mul-long/2addr v10, v12

    div-long v8, v10, v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v8, 0x25

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    .line 123
    :cond_d
    invoke-direct {p0, p1}, Lcom/yingyonghui/downloads/j;->b(Ljava/util/Collection;)V

    .line 124
    return-void
.end method
