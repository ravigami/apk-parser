.class public final Lcom/yingyonghui/market/provider/k;
.super Ljava/lang/Object;
.source "PackageInfos.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:Landroid/net/Uri;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static final g:Ljava/util/HashSet;

.field private static final h:Ljava/util/HashSet;

.field private static final i:Ljava/util/HashSet;


# instance fields
.field private j:Landroid/content/ContentValues;

.field private k:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    sget-object v0, Lcom/yingyonghui/market/provider/PackageInfoProvider;->a:Landroid/net/Uri;

    const-string v1, "packages"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/yingyonghui/market/provider/k;->a:Landroid/net/Uri;

    .line 45
    const-string v0, "package_name"

    invoke-static {v0}, Lcom/yingyonghui/market/util/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yingyonghui/market/provider/k;->b:Ljava/lang/String;

    .line 46
    const-string v0, "download_uri"

    invoke-static {v0}, Lcom/yingyonghui/market/util/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yingyonghui/market/provider/k;->c:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 58
    sput-object v0, Lcom/yingyonghui/market/provider/k;->h:Ljava/util/HashSet;

    const-string v1, "package_name"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/yingyonghui/market/provider/k;->h:Ljava/util/HashSet;

    const-string v1, "app_name"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/yingyonghui/market/provider/k;->h:Ljava/util/HashSet;

    const-string v1, "comment"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/yingyonghui/market/provider/k;->h:Ljava/util/HashSet;

    const-string v1, "msg_to_dev"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 64
    sput-object v0, Lcom/yingyonghui/market/provider/k;->i:Ljava/util/HashSet;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/yingyonghui/market/provider/k;->i:Ljava/util/HashSet;

    const-string v1, "download_start_time"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/yingyonghui/market/provider/k;->i:Ljava/util/HashSet;

    const-string v1, "download_pending_time"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/yingyonghui/market/provider/k;->i:Ljava/util/HashSet;

    const-string v1, "install_time"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/yingyonghui/market/provider/k;->i:Ljava/util/HashSet;

    const-string v1, "uninstall_time"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/yingyonghui/market/provider/k;->i:Ljava/util/HashSet;

    const-string v1, "comment_time"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 72
    sput-object v0, Lcom/yingyonghui/market/provider/k;->g:Ljava/util/HashSet;

    const-string v1, "version_code"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/yingyonghui/market/provider/k;->g:Ljava/util/HashSet;

    const-string v1, "rating"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/yingyonghui/market/provider/k;->g:Ljava/util/HashSet;

    const-string v1, "sent_flag"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    new-array v0, v3, [Ljava/lang/String;

    .line 77
    sput-object v0, Lcom/yingyonghui/market/provider/k;->d:[Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v2

    .line 79
    new-array v0, v3, [Ljava/lang/String;

    .line 80
    sput-object v0, Lcom/yingyonghui/market/provider/k;->e:[Ljava/lang/String;

    const-string v1, "state"

    aput-object v1, v0, v2

    .line 82
    new-array v0, v3, [Ljava/lang/String;

    .line 83
    sput-object v0, Lcom/yingyonghui/market/provider/k;->f:[Ljava/lang/String;

    const-string v1, "app_name"

    aput-object v1, v0, v2

    .line 84
    return-void
.end method

.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;ILandroid/net/Uri;Lcom/yingyonghui/market/provider/m;JJJJILjava/lang/String;ZILjava/lang/String;J)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/yingyonghui/market/provider/k;->k:Landroid/os/Bundle;

    .line 92
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    iput-object v2, p0, Lcom/yingyonghui/market/provider/k;->j:Landroid/content/ContentValues;

    .line 93
    iget-object v2, p0, Lcom/yingyonghui/market/provider/k;->k:Landroid/os/Bundle;

    const-string v3, "_id"

    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 94
    iget-object v2, p0, Lcom/yingyonghui/market/provider/k;->k:Landroid/os/Bundle;

    const-string v3, "package_name"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lcom/yingyonghui/market/provider/k;->k:Landroid/os/Bundle;

    const-string v3, "app_name"

    invoke-virtual {v2, v3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lcom/yingyonghui/market/provider/k;->k:Landroid/os/Bundle;

    const-string v3, "version_code"

    invoke-virtual {v2, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    iget-object v2, p0, Lcom/yingyonghui/market/provider/k;->k:Landroid/os/Bundle;

    const-string v3, "download_uri"

    invoke-virtual {v2, v3, p6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 98
    iget-object v2, p0, Lcom/yingyonghui/market/provider/k;->k:Landroid/os/Bundle;

    const-string v3, "state"

    invoke-virtual {v2, v3, p7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 99
    iget-object v2, p0, Lcom/yingyonghui/market/provider/k;->k:Landroid/os/Bundle;

    const-string v3, "download_start_time"

    invoke-virtual {v2, v3, p8, p9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 100
    iget-object v2, p0, Lcom/yingyonghui/market/provider/k;->k:Landroid/os/Bundle;

    const-string v3, "download_pending_time"

    invoke-virtual {v2, v3, p10, p11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 101
    iget-object v2, p0, Lcom/yingyonghui/market/provider/k;->k:Landroid/os/Bundle;

    const-string v3, "install_time"

    move-wide/from16 v0, p12

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 102
    iget-object v2, p0, Lcom/yingyonghui/market/provider/k;->k:Landroid/os/Bundle;

    const-string v3, "uninstall_time"

    move-wide/from16 v0, p14

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 103
    iget-object v2, p0, Lcom/yingyonghui/market/provider/k;->k:Landroid/os/Bundle;

    const-string v3, "rating"

    move/from16 v0, p16

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    iget-object v2, p0, Lcom/yingyonghui/market/provider/k;->k:Landroid/os/Bundle;

    const-string v3, "comment"

    move-object/from16 v0, p17

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lcom/yingyonghui/market/provider/k;->k:Landroid/os/Bundle;

    const-string v3, "fav"

    move/from16 v0, p18

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 106
    iget-object v2, p0, Lcom/yingyonghui/market/provider/k;->k:Landroid/os/Bundle;

    const-string v3, "sent_flag"

    move/from16 v0, p19

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    iget-object v2, p0, Lcom/yingyonghui/market/provider/k;->k:Landroid/os/Bundle;

    const-string v3, "msg_to_dev"

    move-object/from16 v0, p20

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/yingyonghui/market/provider/k;->k:Landroid/os/Bundle;

    const-string v3, "comment_time"

    move-wide/from16 v0, p21

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 109
    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/yingyonghui/market/provider/k;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 283
    if-eqz p1, :cond_0

    sget-object v0, Lcom/yingyonghui/market/provider/PackageInfoProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 284
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The Uri must be a package id uri"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_1
    invoke-static {p0, p1, v2, v2}, Lcom/yingyonghui/market/provider/k;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/yingyonghui/market/provider/k;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/yingyonghui/market/provider/k;
    .locals 25
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 269
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 270
    const/4 v1, 0x0

    .line 271
    if-eqz v24, :cond_1

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    const/4 v1, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v1, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x2

    move-object/from16 v0, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x3

    move-object/from16 v0, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v1, 0x4

    move-object/from16 v0, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    :cond_0
    const/4 v1, 0x5

    move-object/from16 v0, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yingyonghui/market/provider/m;->valueOf(Ljava/lang/String;)Lcom/yingyonghui/market/provider/m;

    move-result-object v8

    const/4 v1, 0x6

    move-object/from16 v0, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v1, 0x7

    move-object/from16 v0, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/16 v1, 0x8

    move-object/from16 v0, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const/16 v1, 0x9

    move-object/from16 v0, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const/16 v1, 0xa

    move-object/from16 v0, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/16 v1, 0xb

    move-object/from16 v0, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v1, v0, :cond_3

    const/16 v19, 0x1

    :goto_0
    const/16 v1, 0xc

    move-object/from16 v0, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v1, 0xd

    move-object/from16 v0, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/16 v1, 0xe

    move-object/from16 v0, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v1, 0xf

    move-object/from16 v0, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    new-instance v1, Lcom/yingyonghui/market/provider/k;

    invoke-direct/range {v1 .. v23}, Lcom/yingyonghui/market/provider/k;-><init>(JLjava/lang/String;Ljava/lang/String;ILandroid/net/Uri;Lcom/yingyonghui/market/provider/m;JJJJILjava/lang/String;ZILjava/lang/String;J)V

    .line 275
    :cond_1
    if-eqz v24, :cond_2

    .line 276
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 279
    :cond_2
    return-object v1

    .line 272
    :cond_3
    const/16 v19, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/yingyonghui/market/provider/k;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 263
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 264
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 265
    sget-object v1, Lcom/yingyonghui/market/provider/k;->a:Landroid/net/Uri;

    sget-object v2, Lcom/yingyonghui/market/provider/k;->b:Ljava/lang/String;

    invoke-static {p0, v1, v2, v0}, Lcom/yingyonghui/market/provider/k;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/yingyonghui/market/provider/k;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Lcom/yingyonghui/market/provider/k;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 113
    const-string v1, "package_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v1, "app_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v1, "state"

    sget-object v2, Lcom/yingyonghui/market/provider/m;->a:Lcom/yingyonghui/market/provider/m;

    invoke-virtual {v2}, Lcom/yingyonghui/market/provider/m;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    sget-object v1, Lcom/yingyonghui/market/provider/k;->a:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 118
    invoke-static {p0, p1}, Lcom/yingyonghui/market/provider/k;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/yingyonghui/market/provider/k;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/yingyonghui/market/provider/m;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 232
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 233
    aput-object p1, v4, v6

    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/yingyonghui/market/provider/k;->a:Landroid/net/Uri;

    sget-object v2, Lcom/yingyonghui/market/provider/k;->e:[Ljava/lang/String;

    sget-object v3, Lcom/yingyonghui/market/provider/k;->b:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yingyonghui/market/provider/m;->valueOf(Ljava/lang/String;)Lcom/yingyonghui/market/provider/m;

    move-result-object v5

    .line 240
    :cond_0
    if-eqz v0, :cond_1

    .line 241
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 243
    :cond_1
    return-object v5
.end method

.method static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER PRIMARY KEY AUTOINCREMENT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, "package_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT NOT NULL UNIQUE, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, "app_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT NOT NULL, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, "version_code"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, "download_uri"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, "state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT NOT NULL, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v1, "download_start_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LONG, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, "download_pending_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LONG, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v1, "install_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LONG, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, "uninstall_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LONG, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string v1, "rating"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER NOT NULL DEFAULT -1, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, "fav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BOOLEAN, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v1, "comment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, "sent_flag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER NOT NULL DEFAULT 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, "msg_to_dev"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, "comment_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, "packages"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CREATE TABLE %s (%s);"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public static b(Lcom/yingyonghui/market/provider/m;)Z
    .locals 1
    .parameter

    .prologue
    .line 569
    sget-object v0, Lcom/yingyonghui/market/provider/m;->b:Lcom/yingyonghui/market/provider/m;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/yingyonghui/market/provider/m;->h:Lcom/yingyonghui/market/provider/m;

    if-ne p0, v0, :cond_1

    .line 571
    :cond_0
    const/4 v0, 0x1

    .line 573
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lcom/yingyonghui/market/provider/m;)Z
    .locals 1
    .parameter

    .prologue
    .line 590
    sget-object v0, Lcom/yingyonghui/market/provider/m;->d:Lcom/yingyonghui/market/provider/m;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/yingyonghui/market/provider/m;->j:Lcom/yingyonghui/market/provider/m;

    if-ne p0, v0, :cond_1

    .line 592
    :cond_0
    const/4 v0, 0x1

    .line 594
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/ContentResolver;)Ljava/io/File;
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 420
    invoke-virtual {p0}, Lcom/yingyonghui/market/provider/k;->g()Landroid/net/Uri;

    move-result-object v1

    .line 422
    if-nez v1, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-object v3

    .line 425
    :cond_1
    sget-object v2, Lcom/yingyonghui/market/provider/k;->d:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 426
    if-eqz v0, :cond_0

    .line 427
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 428
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 429
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 430
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 433
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 534
    sget-object v0, Lcom/yingyonghui/market/provider/k;->h:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 535
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/provider/k;->k:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 368
    sget-object v0, Lcom/yingyonghui/market/provider/b;->a:[I

    invoke-virtual {p0}, Lcom/yingyonghui/market/provider/k;->d()Lcom/yingyonghui/market/provider/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yingyonghui/market/provider/m;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 389
    :goto_0
    return-void

    .line 370
    :pswitch_0
    sget-object v0, Lcom/yingyonghui/market/provider/m;->c:Lcom/yingyonghui/market/provider/m;

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/provider/k;->a(Lcom/yingyonghui/market/provider/m;)V

    goto :goto_0

    .line 374
    :pswitch_1
    sget-object v0, Lcom/yingyonghui/market/provider/m;->g:Lcom/yingyonghui/market/provider/m;

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/provider/k;->a(Lcom/yingyonghui/market/provider/m;)V

    goto :goto_0

    .line 377
    :pswitch_2
    sget-object v0, Lcom/yingyonghui/market/provider/m;->i:Lcom/yingyonghui/market/provider/m;

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/provider/k;->a(Lcom/yingyonghui/market/provider/m;)V

    goto :goto_0

    .line 381
    :pswitch_3
    sget-object v0, Lcom/yingyonghui/market/provider/m;->l:Lcom/yingyonghui/market/provider/m;

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/provider/k;->a(Lcom/yingyonghui/market/provider/m;)V

    goto :goto_0

    .line 368
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Landroid/net/Uri;)V
    .locals 3
    .parameter

    .prologue
    .line 440
    iget-object v0, p0, Lcom/yingyonghui/market/provider/k;->k:Landroid/os/Bundle;

    const-string v1, "download_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 441
    if-eqz p1, :cond_0

    .line 442
    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    :goto_0
    return-void

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/provider/k;->k:Landroid/os/Bundle;

    const-string v1, "download_uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 447
    iget-object v1, p0, Lcom/yingyonghui/market/provider/k;->j:Landroid/content/ContentValues;

    const-string v2, "download_uri"

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(Lcom/yingyonghui/market/provider/m;)V
    .locals 3
    .parameter

    .prologue
    .line 471
    if-nez p1, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/provider/k;->k:Landroid/os/Bundle;

    const-string v1, "state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 476
    invoke-virtual {p1, v0}, Lcom/yingyonghui/market/provider/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/yingyonghui/market/provider/k;->k:Landroid/os/Bundle;

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 481
    iget-object v0, p0, Lcom/yingyonghui/market/provider/k;->j:Landroid/content/ContentValues;

    const-string v1, "state"

    invoke-virtual {p1}, Lcom/yingyonghui/market/provider/m;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    sget-object v0, Lcom/yingyonghui/market/provider/b;->a:[I

    invoke-virtual {p1}, Lcom/yingyonghui/market/provider/m;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 485
    :pswitch_1
    const-string v0, "download_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/yingyonghui/market/provider/k;->a(Ljava/lang/String;J)V

    goto :goto_0

    .line 488
    :pswitch_2
    const-string v0, "install_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/yingyonghui/market/provider/k;->a(Ljava/lang/String;J)V

    goto :goto_0

    .line 491
    :pswitch_3
    const-string v0, "download_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/yingyonghui/market/provider/k;->a(Ljava/lang/String;J)V

    goto :goto_0

    .line 495
    :pswitch_4
    const-string v0, "download_pending_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/yingyonghui/market/provider/k;->a(Ljava/lang/String;J)V

    goto :goto_0

    .line 498
    :pswitch_5
    const-string v0, "uninstall_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/yingyonghui/market/provider/k;->a(Ljava/lang/String;J)V

    goto :goto_0

    .line 483
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 552
    sget-object v0, Lcom/yingyonghui/market/provider/k;->g:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/provider/k;->k:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 556
    iget-object v0, p0, Lcom/yingyonghui/market/provider/k;->k:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 557
    iget-object v0, p0, Lcom/yingyonghui/market/provider/k;->j:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 559
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 504
    sget-object v0, Lcom/yingyonghui/market/provider/k;->i:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/provider/k;->k:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Lcom/yingyonghui/market/provider/k;->k:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 509
    iget-object v0, p0, Lcom/yingyonghui/market/provider/k;->j:Landroid/content/ContentValues;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 511
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 542
    sget-object v0, Lcom/yingyonghui/market/provider/k;->h:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/provider/k;->k:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 546
    iget-object v0, p0, Lcom/yingyonghui/market/provider/k;->k:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/yingyonghui/market/provider/k;->j:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 392
    sget-object v0, Lcom/yingyonghui/market/provider/b;->a:[I

    invoke-virtual {p0}, Lcom/yingyonghui/market/provider/k;->d()Lcom/yingyonghui/market/provider/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yingyonghui/market/provider/m;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 417
    :goto_0
    return-void

    .line 394
    :pswitch_0
    sget-object v0, Lcom/yingyonghui/market/provider/m;->d:Lcom/yingyonghui/market/provider/m;

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/provider/k;->a(Lcom/yingyonghui/market/provider/m;)V

    goto :goto_0

    .line 397
    :pswitch_1
    sget-object v0, Lcom/yingyonghui/market/provider/m;->e:Lcom/yingyonghui/market/provider/m;

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/provider/k;->a(Lcom/yingyonghui/market/provider/m;)V

    goto :goto_0

    .line 400
    :pswitch_2
    sget-object v0, Lcom/yingyonghui/market/provider/m;->f:Lcom/yingyonghui/market/provider/m;

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/provider/k;->a(Lcom/yingyonghui/market/provider/m;)V

    goto :goto_0

    .line 403
    :pswitch_3
    sget-object v0, Lcom/yingyonghui/market/provider/m;->j:Lcom/yingyonghui/market/provider/m;

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/provider/k;->a(Lcom/yingyonghui/market/provider/m;)V

    goto :goto_0

    .line 406
    :pswitch_4
    sget-object v0, Lcom/yingyonghui/market/provider/m;->k:Lcom/yingyonghui/market/provider/m;

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/provider/k;->a(Lcom/yingyonghui/market/provider/m;)V

    goto :goto_0

    .line 409
    :pswitch_5
    sget-object v0, Lcom/yingyonghui/market/provider/m;->m:Lcom/yingyonghui/market/provider/m;

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/provider/k;->a(Lcom/yingyonghui/market/provider/m;)V

    goto :goto_0

    .line 392
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final b(Landroid/content/ContentResolver;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 562
    iget-object v0, p0, Lcom/yingyonghui/market/provider/k;->j:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 563
    invoke-virtual {p0}, Lcom/yingyonghui/market/provider/k;->c()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/provider/k;->j:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 564
    iget-object v0, p0, Lcom/yingyonghui/market/provider/k;->j:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 566
    :cond_0
    return-void
.end method

.method public final c()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 451
    sget-object v0, Lcom/yingyonghui/market/provider/k;->a:Landroid/net/Uri;

    iget-object v1, p0, Lcom/yingyonghui/market/provider/k;->k:Landroid/os/Bundle;

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/yingyonghui/market/provider/m;
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/yingyonghui/market/provider/k;->k:Landroid/os/Bundle;

    const-string v1, "state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/provider/m;

    return-object v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/yingyonghui/market/provider/k;->k:Landroid/os/Bundle;

    const-string v1, "download_start_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/yingyonghui/market/provider/k;->k:Landroid/os/Bundle;

    const-string v1, "download_pending_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/yingyonghui/market/provider/k;->k:Landroid/os/Bundle;

    const-string v1, "download_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method
