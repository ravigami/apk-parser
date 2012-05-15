.class public final Lcom/yingyonghui/downloads/p;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# instance fields
.field private a:Landroid/content/ContentResolver;

.field private b:Landroid/database/Cursor;

.field private c:Landroid/database/CharArrayBuffer;

.field private d:Landroid/database/CharArrayBuffer;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/yingyonghui/downloads/p;->a:Landroid/content/ContentResolver;

    .line 51
    iput-object p2, p0, Lcom/yingyonghui/downloads/p;->b:Landroid/database/Cursor;

    .line 52
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/yingyonghui/downloads/p;->b:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/yingyonghui/downloads/p;->b:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 135
    iget-object v0, p0, Lcom/yingyonghui/downloads/p;->b:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 136
    if-nez p1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/yingyonghui/downloads/p;->b:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 158
    :cond_0
    :goto_0
    return-object p1

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/yingyonghui/downloads/p;->d:Landroid/database/CharArrayBuffer;

    if-nez v1, :cond_2

    .line 140
    new-instance v1, Landroid/database/CharArrayBuffer;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/yingyonghui/downloads/p;->d:Landroid/database/CharArrayBuffer;

    .line 142
    :cond_2
    iget-object v1, p0, Lcom/yingyonghui/downloads/p;->b:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/yingyonghui/downloads/p;->d:Landroid/database/CharArrayBuffer;

    invoke-interface {v1, v0, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 143
    iget-object v0, p0, Lcom/yingyonghui/downloads/p;->d:Landroid/database/CharArrayBuffer;

    iget v1, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 144
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 145
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/yingyonghui/downloads/p;->d:Landroid/database/CharArrayBuffer;

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    invoke-direct {p1, v0, v6, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/yingyonghui/downloads/p;->c:Landroid/database/CharArrayBuffer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yingyonghui/downloads/p;->c:Landroid/database/CharArrayBuffer;

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-ge v0, v1, :cond_5

    .line 148
    :cond_4
    new-instance v0, Landroid/database/CharArrayBuffer;

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/yingyonghui/downloads/p;->c:Landroid/database/CharArrayBuffer;

    .line 150
    :cond_5
    iget-object v0, p0, Lcom/yingyonghui/downloads/p;->c:Landroid/database/CharArrayBuffer;

    iget-object v2, v0, Landroid/database/CharArrayBuffer;->data:[C

    .line 151
    iget-object v0, p0, Lcom/yingyonghui/downloads/p;->d:Landroid/database/CharArrayBuffer;

    iget-object v3, v0, Landroid/database/CharArrayBuffer;->data:[C

    .line 152
    invoke-virtual {p1, v6, v1, v2, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 153
    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_0

    .line 154
    aget-char v4, v2, v0

    aget-char v5, v3, v0

    if-eq v4, v5, :cond_6

    .line 155
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3, v6, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 153
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private static a(Lcom/yingyonghui/downloads/y;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-static {p0}, Lcom/yingyonghui/downloads/y;->a(Lcom/yingyonghui/downloads/y;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/yingyonghui/downloads/p;->b:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/yingyonghui/downloads/p;->b:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yingyonghui/downloads/u;)Lcom/yingyonghui/downloads/y;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 55
    new-instance v6, Lcom/yingyonghui/downloads/y;

    invoke-direct {v6, p1, p2}, Lcom/yingyonghui/downloads/y;-><init>(Landroid/content/Context;Lcom/yingyonghui/downloads/u;)V

    .line 56
    invoke-virtual {p0, v6}, Lcom/yingyonghui/downloads/p;->a(Lcom/yingyonghui/downloads/y;)V

    .line 57
    invoke-static {v6}, Lcom/yingyonghui/downloads/y;->a(Lcom/yingyonghui/downloads/y;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {v6}, Lcom/yingyonghui/downloads/y;->d()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "headers"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/yingyonghui/downloads/p;->a:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v0, "header"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v2, "value"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/yingyonghui/downloads/p;->a(Lcom/yingyonghui/downloads/y;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    iget-object v0, v6, Lcom/yingyonghui/downloads/y;->q:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "Cookie"

    iget-object v1, v6, Lcom/yingyonghui/downloads/y;->q:Ljava/lang/String;

    invoke-static {v6, v0, v1}, Lcom/yingyonghui/downloads/p;->a(Lcom/yingyonghui/downloads/y;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, v6, Lcom/yingyonghui/downloads/y;->s:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "Referer"

    iget-object v1, v6, Lcom/yingyonghui/downloads/y;->s:Ljava/lang/String;

    invoke-static {v6, v0, v1}, Lcom/yingyonghui/downloads/p;->a(Lcom/yingyonghui/downloads/y;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_2
    return-object v6
.end method

.method public final a(Lcom/yingyonghui/downloads/y;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 62
    const-string v0, "_id"

    invoke-direct {p0, v0}, Lcom/yingyonghui/downloads/p;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/yingyonghui/downloads/y;->a:J

    .line 63
    iget-object v0, p1, Lcom/yingyonghui/downloads/y;->b:Ljava/lang/String;

    const-string v3, "uri"

    invoke-direct {p0, v0, v3}, Lcom/yingyonghui/downloads/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/yingyonghui/downloads/y;->b:Ljava/lang/String;

    .line 64
    const-string v0, "no_integrity"

    invoke-direct {p0, v0}, Lcom/yingyonghui/downloads/p;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p1, Lcom/yingyonghui/downloads/y;->c:Z

    .line 65
    iget-object v0, p1, Lcom/yingyonghui/downloads/y;->d:Ljava/lang/String;

    const-string v3, "hint"

    invoke-direct {p0, v0, v3}, Lcom/yingyonghui/downloads/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/yingyonghui/downloads/y;->d:Ljava/lang/String;

    .line 66
    iget-object v0, p1, Lcom/yingyonghui/downloads/y;->e:Ljava/lang/String;

    const-string v3, "_data"

    invoke-direct {p0, v0, v3}, Lcom/yingyonghui/downloads/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/yingyonghui/downloads/y;->e:Ljava/lang/String;

    .line 67
    iget-object v0, p1, Lcom/yingyonghui/downloads/y;->f:Ljava/lang/String;

    const-string v3, "mimetype"

    invoke-direct {p0, v0, v3}, Lcom/yingyonghui/downloads/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/yingyonghui/downloads/y;->f:Ljava/lang/String;

    .line 68
    const-string v0, "destination"

    invoke-direct {p0, v0}, Lcom/yingyonghui/downloads/p;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/yingyonghui/downloads/y;->g:I

    .line 69
    const-string v0, "visibility"

    invoke-direct {p0, v0}, Lcom/yingyonghui/downloads/p;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/yingyonghui/downloads/y;->h:I

    .line 70
    const-string v0, "status"

    invoke-direct {p0, v0}, Lcom/yingyonghui/downloads/p;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/yingyonghui/downloads/y;->j:I

    .line 71
    const-string v0, "numfailed"

    invoke-direct {p0, v0}, Lcom/yingyonghui/downloads/p;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/yingyonghui/downloads/y;->k:I

    .line 72
    const-string v0, "method"

    invoke-direct {p0, v0}, Lcom/yingyonghui/downloads/p;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 73
    const v3, 0xfffffff

    and-int/2addr v0, v3

    iput v0, p1, Lcom/yingyonghui/downloads/y;->l:I

    .line 74
    const-string v0, "lastmod"

    invoke-direct {p0, v0}, Lcom/yingyonghui/downloads/p;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/yingyonghui/downloads/y;->m:J

    .line 75
    iget-object v0, p1, Lcom/yingyonghui/downloads/y;->n:Ljava/lang/String;

    const-string v3, "notificationpackage"

    invoke-direct {p0, v0, v3}, Lcom/yingyonghui/downloads/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/yingyonghui/downloads/y;->n:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Lcom/yingyonghui/downloads/y;->o:Ljava/lang/String;

    const-string v3, "notificationclass"

    invoke-direct {p0, v0, v3}, Lcom/yingyonghui/downloads/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/yingyonghui/downloads/y;->o:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lcom/yingyonghui/downloads/y;->p:Ljava/lang/String;

    const-string v3, "notificationextras"

    invoke-direct {p0, v0, v3}, Lcom/yingyonghui/downloads/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/yingyonghui/downloads/y;->p:Ljava/lang/String;

    .line 78
    iget-object v0, p1, Lcom/yingyonghui/downloads/y;->q:Ljava/lang/String;

    const-string v3, "cookiedata"

    invoke-direct {p0, v0, v3}, Lcom/yingyonghui/downloads/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/yingyonghui/downloads/y;->q:Ljava/lang/String;

    .line 79
    iget-object v0, p1, Lcom/yingyonghui/downloads/y;->r:Ljava/lang/String;

    const-string v3, "useragent"

    invoke-direct {p0, v0, v3}, Lcom/yingyonghui/downloads/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/yingyonghui/downloads/y;->r:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Lcom/yingyonghui/downloads/y;->s:Ljava/lang/String;

    const-string v3, "referer"

    invoke-direct {p0, v0, v3}, Lcom/yingyonghui/downloads/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/yingyonghui/downloads/y;->s:Ljava/lang/String;

    .line 81
    const-string v0, "total_bytes"

    invoke-direct {p0, v0}, Lcom/yingyonghui/downloads/p;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/yingyonghui/downloads/y;->t:J

    .line 82
    const-string v0, "current_bytes"

    invoke-direct {p0, v0}, Lcom/yingyonghui/downloads/p;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/yingyonghui/downloads/y;->u:J

    .line 83
    iget-object v0, p1, Lcom/yingyonghui/downloads/y;->v:Ljava/lang/String;

    const-string v3, "etag"

    invoke-direct {p0, v0, v3}, Lcom/yingyonghui/downloads/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/yingyonghui/downloads/y;->v:Ljava/lang/String;

    .line 84
    const-string v0, "scanned"

    invoke-direct {p0, v0}, Lcom/yingyonghui/downloads/p;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p1, Lcom/yingyonghui/downloads/y;->w:Z

    .line 85
    const-string v0, "deleted"

    invoke-direct {p0, v0}, Lcom/yingyonghui/downloads/p;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p1, Lcom/yingyonghui/downloads/y;->x:Z

    .line 86
    iget-object v0, p1, Lcom/yingyonghui/downloads/y;->y:Ljava/lang/String;

    const-string v3, "mediaprovider_uri"

    invoke-direct {p0, v0, v3}, Lcom/yingyonghui/downloads/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/yingyonghui/downloads/y;->y:Ljava/lang/String;

    .line 88
    const-string v0, "is_public_api"

    invoke-direct {p0, v0}, Lcom/yingyonghui/downloads/p;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p1, Lcom/yingyonghui/downloads/y;->z:Z

    .line 89
    const-string v0, "allowed_network_types"

    invoke-direct {p0, v0}, Lcom/yingyonghui/downloads/p;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/yingyonghui/downloads/y;->A:I

    .line 90
    const-string v0, "allow_roaming"

    invoke-direct {p0, v0}, Lcom/yingyonghui/downloads/p;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_4

    :goto_4
    iput-boolean v1, p1, Lcom/yingyonghui/downloads/y;->B:Z

    .line 91
    iget-object v0, p1, Lcom/yingyonghui/downloads/y;->C:Ljava/lang/String;

    const-string v1, "title"

    invoke-direct {p0, v0, v1}, Lcom/yingyonghui/downloads/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/yingyonghui/downloads/y;->C:Ljava/lang/String;

    .line 92
    iget-object v0, p1, Lcom/yingyonghui/downloads/y;->D:Ljava/lang/String;

    const-string v1, "description"

    invoke-direct {p0, v0, v1}, Lcom/yingyonghui/downloads/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/yingyonghui/downloads/y;->D:Ljava/lang/String;

    .line 93
    const-string v0, "bypass_recommended_size_limit"

    invoke-direct {p0, v0}, Lcom/yingyonghui/downloads/p;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/yingyonghui/downloads/y;->E:I

    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    const-string v0, "control"

    invoke-direct {p0, v0}, Lcom/yingyonghui/downloads/p;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/yingyonghui/downloads/y;->i:I

    .line 98
    monitor-exit p0

    return-void

    :cond_0
    move v0, v2

    .line 64
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 84
    goto :goto_1

    :cond_2
    move v0, v2

    .line 85
    goto :goto_2

    :cond_3
    move v0, v2

    .line 88
    goto :goto_3

    :cond_4
    move v1, v2

    .line 90
    goto :goto_4

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
