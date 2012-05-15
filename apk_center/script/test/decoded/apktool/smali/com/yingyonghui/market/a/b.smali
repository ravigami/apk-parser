.class public final Lcom/yingyonghui/market/a/b;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/yingyonghui/market/model/a;
    .locals 11
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 233
    new-instance v3, Lcom/yingyonghui/market/model/a;

    invoke-direct {v3}, Lcom/yingyonghui/market/model/a;-><init>()V

    .line 236
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 237
    const-string v0, "newsheader"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 238
    invoke-virtual {v3}, Lcom/yingyonghui/market/model/a;->a()Lcom/yingyonghui/market/model/c;

    move-result-object v6

    .line 239
    const-string v0, "news_url"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/yingyonghui/market/model/c;->a:Ljava/lang/String;

    .line 240
    const-string v0, "hot"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v6, Lcom/yingyonghui/market/model/c;->c:Z

    .line 241
    const-string v0, "highlight"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v6, Lcom/yingyonghui/market/model/c;->d:Z

    .line 242
    const-string v0, "new"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v6, Lcom/yingyonghui/market/model/c;->e:Z

    .line 243
    const-string v0, "date"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_1

    .line 246
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "yyyyMMdd"

    aput-object v8, v0, v7

    invoke-static {v2, v0}, Lcom/yingyonghui/market/util/s;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    const-string v7, "yyyy-MM-dd"

    invoke-static {v0, v7}, Lcom/yingyonghui/market/util/s;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 252
    :goto_0
    :try_start_2
    iput-object v0, v6, Lcom/yingyonghui/market/model/c;->f:Ljava/lang/String;

    .line 253
    const-string v0, "title"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/yingyonghui/market/model/c;->b:Ljava/lang/String;

    .line 254
    const-string v0, "visit"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/yingyonghui/market/model/c;->g:I

    .line 255
    const-string v0, "icon_url"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/yingyonghui/market/model/c;->h:Ljava/lang/String;

    .line 257
    const-string v0, "subnews"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 258
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v0, v1

    .line 259
    :goto_1
    if-ge v0, v5, :cond_3

    .line 264
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 265
    new-instance v6, Lcom/yingyonghui/market/model/j;

    invoke-direct {v6, v3}, Lcom/yingyonghui/market/model/j;-><init>(Lcom/yingyonghui/market/model/a;)V

    .line 266
    const-string v7, "subtitle"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/yingyonghui/market/model/j;->b:Ljava/lang/String;

    .line 267
    const-string v7, "blocks"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    move v2, v1

    .line 268
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_5

    .line 269
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 270
    const-string v9, "type"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 271
    const-string v10, "content"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 272
    const-string v10, "text"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 273
    invoke-virtual {v6, v8}, Lcom/yingyonghui/market/model/j;->a(Ljava/lang/String;)V

    .line 268
    :cond_0
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 248
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    :cond_1
    move-object v0, v2

    goto :goto_0

    .line 274
    :cond_2
    const-string v10, "image"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 275
    invoke-virtual {v6, v8}, Lcom/yingyonghui/market/model/j;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 282
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 286
    :cond_3
    return-object v3

    .line 276
    :cond_4
    :try_start_3
    const-string v10, "package_id"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 277
    invoke-virtual {v6, v8}, Lcom/yingyonghui/market/model/j;->c(Ljava/lang/String;)V

    goto :goto_3

    .line 280
    :cond_5
    invoke-virtual {v3, v6}, Lcom/yingyonghui/market/model/a;->a(Lcom/yingyonghui/market/model/j;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 95
    const-string v2, "list"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 96
    const/4 v0, 0x0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_7

    .line 97
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 98
    new-instance v5, Lcom/yingyonghui/market/model/q;

    invoke-direct {v5}, Lcom/yingyonghui/market/model/q;-><init>()V

    .line 99
    const-string v6, "id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/yingyonghui/market/model/q;->e:I

    .line 100
    const-string v6, "name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    .line 101
    const-string v6, "packageName"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    .line 102
    const-string v6, "size"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/yingyonghui/market/model/q;->o:I

    .line 103
    iget v6, v5, Lcom/yingyonghui/market/model/q;->o:I

    int-to-long v6, v6

    invoke-static {p0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/yingyonghui/market/model/q;->p:Ljava/lang/String;

    .line 104
    const-string v6, "versionName"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/yingyonghui/market/model/q;->q:Ljava/lang/String;

    .line 105
    const-string v6, "versionCode"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/yingyonghui/market/model/q;->s:I

    .line 106
    const-string v6, "rating"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v6, v6

    iput v6, v5, Lcom/yingyonghui/market/model/q;->l:F

    .line 107
    const-string v6, "ratingCount"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/yingyonghui/market/model/q;->B:I

    .line 108
    const-string v6, "shorDesc"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/yingyonghui/market/model/q;->u:Ljava/lang/String;

    .line 109
    const-string v6, "downloadMax"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/yingyonghui/market/model/q;->z:I

    .line 110
    const-string v6, "downloadMin"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/yingyonghui/market/model/q;->A:I

    .line 111
    const-string v6, "iconUrl"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/yingyonghui/market/model/q;->f:Ljava/lang/String;

    .line 112
    const-string v6, "apkUrl"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/yingyonghui/market/model/q;->g:Ljava/lang/String;

    .line 115
    const-string v6, "pubkeyHash"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 116
    const-string v6, "pubkeyHash"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/yingyonghui/market/model/q;->D:Ljava/lang/String;

    .line 119
    :cond_0
    const-string v6, "lastUpdate"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 120
    const-string v6, "lastUpdate"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/yingyonghui/market/model/q;->r:Ljava/lang/String;

    .line 123
    :cond_1
    const-string v6, "promotionId"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 124
    const-string v6, "promotionId"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/yingyonghui/market/model/q;->E:I

    .line 126
    :cond_2
    const-string v6, "promotionAgent"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 127
    const-string v6, "promotionAgent"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/yingyonghui/market/model/q;->F:Ljava/lang/String;

    .line 129
    :cond_3
    const-string v6, "promotionText"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 130
    const-string v6, "promotionText"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/yingyonghui/market/model/q;->H:Ljava/lang/String;

    .line 132
    :cond_4
    const-string v6, "promotionDownUrl"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 133
    const-string v6, "promotionDownUrl"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/yingyonghui/market/model/q;->G:Ljava/lang/String;

    .line 146
    :cond_5
    iget-object v4, v5, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 147
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 150
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    :cond_7
    return-object v1
.end method

.method public static a(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    const-string v3, "cats"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 48
    const/4 v0, 0x0

    .line 50
    sparse-switch p1, :sswitch_data_0

    .line 59
    :goto_0
    const-string v3, "children"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 67
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_0

    .line 68
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 69
    new-instance v5, Lcom/yingyonghui/market/model/p;

    invoke-direct {v5}, Lcom/yingyonghui/market/model/p;-><init>()V

    .line 70
    const-string v6, "id"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/yingyonghui/market/model/p;->a:I

    .line 71
    const-string v6, "name"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/yingyonghui/market/model/p;->b:Ljava/lang/String;

    .line 72
    const-string v6, "description"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/yingyonghui/market/model/p;->c:Ljava/lang/String;

    .line 73
    const-string v6, "iconUrl"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/yingyonghui/market/model/p;->d:Ljava/lang/String;

    .line 74
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 52
    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    goto :goto_0

    .line 55
    :sswitch_1
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    goto :goto_0

    .line 58
    :sswitch_2
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 81
    :cond_0
    return-object v2

    .line 50
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x1e -> :sswitch_0
        0x28 -> :sswitch_1
    .end sparse-switch
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lcom/yingyonghui/market/model/o;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 166
    new-instance v0, Lcom/yingyonghui/market/model/o;

    invoke-direct {v0}, Lcom/yingyonghui/market/model/o;-><init>()V

    .line 169
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 170
    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/yingyonghui/market/model/o;->e:I

    .line 171
    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yingyonghui/market/model/o;->i:Ljava/lang/String;

    .line 172
    const-string v2, "packageName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yingyonghui/market/model/o;->m:Ljava/lang/String;

    .line 173
    const-string v2, "iconUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yingyonghui/market/model/o;->f:Ljava/lang/String;

    .line 174
    const-string v2, "rating"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v0, Lcom/yingyonghui/market/model/o;->l:F

    .line 175
    const-string v2, "ratingCount"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/yingyonghui/market/model/o;->B:I

    .line 176
    const-string v2, "description"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\r"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yingyonghui/market/model/o;->a:Ljava/lang/String;

    .line 177
    const-string v2, "size"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/yingyonghui/market/model/o;->o:I

    .line 178
    iget v2, v0, Lcom/yingyonghui/market/model/o;->o:I

    int-to-long v2, v2

    invoke-static {p0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yingyonghui/market/model/o;->p:Ljava/lang/String;

    .line 179
    const-string v2, "versionCode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/yingyonghui/market/model/o;->s:I

    .line 180
    const-string v2, "versionName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yingyonghui/market/model/o;->q:Ljava/lang/String;

    .line 181
    const-string v2, "lastUpdate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yingyonghui/market/model/o;->r:Ljava/lang/String;

    .line 182
    const-string v2, "apkUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yingyonghui/market/model/o;->g:Ljava/lang/String;

    .line 183
    const-string v2, "downloadMax"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/yingyonghui/market/model/o;->z:I

    .line 184
    const-string v2, "downloadMin"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/yingyonghui/market/model/o;->A:I

    .line 185
    const-string v2, "developer"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yingyonghui/market/model/o;->j:Ljava/lang/String;

    .line 188
    iget-object v2, v0, Lcom/yingyonghui/market/model/o;->m:Ljava/lang/String;

    iget v3, v0, Lcom/yingyonghui/market/model/o;->s:I

    iget v4, v0, Lcom/yingyonghui/market/model/o;->e:I

    invoke-static {p0, v2, v3, v4}, Lcom/yingyonghui/market/util/v;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    iput v2, v0, Lcom/yingyonghui/market/model/o;->n:I

    .line 191
    const-string v2, "snapshotUrls"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    const-string v2, "snapshotUrls"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 193
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 194
    if-lez v3, :cond_0

    .line 195
    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, v0, Lcom/yingyonghui/market/model/o;->C:[Ljava/lang/String;

    .line 197
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 198
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 199
    iget-object v5, v0, Lcom/yingyonghui/market/model/o;->C:[Ljava/lang/String;

    const-string v6, "url"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 226
    const/4 v0, 0x0

    .line 229
    :cond_0
    return-object v0
.end method

.method public static b(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 10
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 296
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    .line 297
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 298
    const/4 v1, 0x1

    aput-object v4, v3, v1

    .line 300
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 301
    const/4 v2, 0x0

    const-string v5, "totalCount"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    .line 303
    const-string v2, "list"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 304
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 305
    const/4 v1, 0x0

    move v2, v0

    .line 306
    :goto_0
    if-ge v2, v6, :cond_2

    .line 307
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 308
    new-instance v0, Lcom/yingyonghui/market/model/t;

    invoke-direct {v0}, Lcom/yingyonghui/market/model/t;-><init>()V

    .line 309
    const-string v8, "commentId"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v0, Lcom/yingyonghui/market/model/t;->a:I

    .line 310
    const-string v8, "deviceName"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/yingyonghui/market/model/t;->b:Ljava/lang/String;

    .line 311
    const-string v8, "isdelete"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v0, Lcom/yingyonghui/market/model/t;->c:Z

    .line 312
    const-string v8, "message"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/yingyonghui/market/model/t;->g:Ljava/lang/String;

    .line 313
    const-string v8, "commentTime"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/yingyonghui/market/model/t;->h:J

    .line 314
    const-string v8, "type"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/yingyonghui/market/model/t;->i:Ljava/lang/String;

    .line 315
    const-string v8, "userId"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v0, Lcom/yingyonghui/market/model/t;->d:I

    .line 316
    const-string v8, "userName"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/yingyonghui/market/model/t;->e:Ljava/lang/String;

    .line 317
    const-string v8, "isMine"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v0, Lcom/yingyonghui/market/model/t;->k:Z

    .line 320
    iget-object v8, v0, Lcom/yingyonghui/market/model/t;->i:Ljava/lang/String;

    const-string v9, "comment"

    invoke-static {v8, v9}, Lcom/yingyonghui/market/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 321
    const-string v8, "score"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, v0, Lcom/yingyonghui/market/model/t;->f:D

    .line 326
    :cond_0
    :goto_1
    iget-object v7, v0, Lcom/yingyonghui/market/model/t;->i:Ljava/lang/String;

    const-string v8, "comment"

    invoke-static {v7, v8}, Lcom/yingyonghui/market/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 328
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 322
    :cond_1
    iget-object v8, v0, Lcom/yingyonghui/market/model/t;->i:Ljava/lang/String;

    const-string v9, "error"

    invoke-static {v8, v9}, Lcom/yingyonghui/market/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 323
    const-string v8, "errorType"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/yingyonghui/market/model/t;->j:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 337
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 341
    :cond_2
    return-object v3

    .line 329
    :cond_3
    :try_start_1
    iget-object v7, v0, Lcom/yingyonghui/market/model/t;->i:Ljava/lang/String;

    const-string v8, "error"

    invoke-static {v7, v8}, Lcom/yingyonghui/market/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 331
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 332
    :cond_4
    iget-object v7, v0, Lcom/yingyonghui/market/model/t;->i:Ljava/lang/String;

    const-string v8, "reply"

    invoke-static {v7, v8}, Lcom/yingyonghui/market/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 333
    iget-object v7, v1, Lcom/yingyonghui/market/model/t;->l:Ljava/util/ArrayList;

    if-nez v7, :cond_5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lcom/yingyonghui/market/model/t;->l:Ljava/util/ArrayList;

    :cond_5
    iget-object v7, v1, Lcom/yingyonghui/market/model/t;->l:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method

.method public static c(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .parameter

    .prologue
    .line 350
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 352
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 353
    const-string v2, "list"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 354
    const/4 v0, 0x0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_0

    .line 355
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 356
    new-instance v5, Lcom/yingyonghui/market/model/k;

    invoke-direct {v5}, Lcom/yingyonghui/market/model/k;-><init>()V

    .line 357
    const-string v6, "id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/yingyonghui/market/model/k;->a:I

    .line 358
    const-string v6, "title"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/yingyonghui/market/model/k;->b:Ljava/lang/String;

    .line 359
    const-string v6, "ordinal"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/yingyonghui/market/model/k;->c:Ljava/lang/String;

    .line 360
    const-string v6, "imgUrl"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/yingyonghui/market/model/k;->d:Ljava/lang/String;

    .line 361
    const-string v6, "summary"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/yingyonghui/market/model/k;->e:Ljava/lang/String;

    .line 362
    const-string v6, "url"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/yingyonghui/market/model/k;->f:Ljava/lang/String;

    .line 363
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 369
    :cond_0
    return-object v1
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 405
    .line 407
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-object v0

    .line 411
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 412
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 414
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/Object;

    .line 415
    const/4 v4, 0x0

    const-string v5, "nextIndexStart"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    .line 416
    const/4 v4, 0x1

    aput-object v3, v0, v4

    .line 417
    const-string v4, "list"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 418
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 419
    :goto_1
    if-ge v1, v4, :cond_0

    .line 420
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 422
    new-instance v6, Lcom/yingyonghui/market/model/q;

    invoke-direct {v6}, Lcom/yingyonghui/market/model/q;-><init>()V

    .line 423
    const-string v7, "id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/yingyonghui/market/model/q;->e:I

    .line 424
    const-string v7, "iconUrl"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/yingyonghui/market/model/q;->f:Ljava/lang/String;

    .line 425
    const-string v7, "name"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    .line 426
    const-string v7, "rating"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-float v7, v7

    iput v7, v6, Lcom/yingyonghui/market/model/q;->l:F

    .line 427
    const-string v7, "ratingCount"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/yingyonghui/market/model/q;->B:I

    .line 428
    const-string v7, "packageName"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    .line 429
    const-string v7, "versionName"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/yingyonghui/market/model/q;->q:Ljava/lang/String;

    .line 430
    const-string v7, "versionCode"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/yingyonghui/market/model/q;->s:I

    .line 431
    const-string v7, "size"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/yingyonghui/market/model/q;->o:I

    .line 432
    iget v7, v6, Lcom/yingyonghui/market/model/q;->o:I

    int-to-long v7, v7

    invoke-static {p0, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/yingyonghui/market/model/q;->p:Ljava/lang/String;

    .line 433
    const-string v7, "shorDesc"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/yingyonghui/market/model/q;->u:Ljava/lang/String;

    .line 434
    const-string v7, "apkUrl"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/yingyonghui/market/model/q;->g:Ljava/lang/String;

    .line 435
    const-string v7, "downloadMax"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/yingyonghui/market/model/q;->z:I

    .line 436
    const-string v7, "downloadMin"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/yingyonghui/market/model/q;->A:I

    .line 437
    const-string v7, "lastUpdate"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/yingyonghui/market/model/q;->r:Ljava/lang/String;

    .line 453
    iget-object v5, v6, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 454
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 457
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static d(Ljava/lang/String;)Lcom/yingyonghui/market/model/k;
    .locals 3
    .parameter

    .prologue
    .line 373
    new-instance v1, Lcom/yingyonghui/market/model/k;

    invoke-direct {v1}, Lcom/yingyonghui/market/model/k;-><init>()V

    .line 375
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 376
    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/yingyonghui/market/model/k;->a:I

    .line 377
    const-string v2, "title"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yingyonghui/market/model/k;->b:Ljava/lang/String;

    .line 378
    const-string v2, "ordinal"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yingyonghui/market/model/k;->c:Ljava/lang/String;

    .line 379
    const-string v2, "imgUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yingyonghui/market/model/k;->d:Ljava/lang/String;

    .line 380
    const-string v2, "summary"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yingyonghui/market/model/k;->e:Ljava/lang/String;

    .line 381
    const-string v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/yingyonghui/market/model/k;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :goto_0
    return-object v1

    .line 382
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 577
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 578
    :cond_0
    const/4 v0, 0x0

    .line 641
    :cond_1
    :goto_0
    return-object v0

    .line 581
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 584
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 587
    const-string v2, "appWeeklyItemForApps"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 588
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_3

    .line 589
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 592
    new-instance v7, Lcom/yingyonghui/market/model/q;

    invoke-direct {v7}, Lcom/yingyonghui/market/model/q;-><init>()V

    .line 593
    const-string v8, "appInfoForList"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 594
    const-string v9, "id"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/yingyonghui/market/model/q;->e:I

    .line 595
    const-string v9, "name"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    .line 596
    const-string v9, "packageName"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    .line 597
    const-string v9, "size"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/yingyonghui/market/model/q;->o:I

    .line 598
    iget v9, v7, Lcom/yingyonghui/market/model/q;->o:I

    int-to-long v9, v9

    invoke-static {p0, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/yingyonghui/market/model/q;->p:Ljava/lang/String;

    .line 599
    const-string v9, "versionName"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/yingyonghui/market/model/q;->q:Ljava/lang/String;

    .line 600
    const-string v9, "versionCode"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/yingyonghui/market/model/q;->s:I

    .line 601
    const-string v9, "rating"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    double-to-float v9, v9

    iput v9, v7, Lcom/yingyonghui/market/model/q;->l:F

    .line 602
    const-string v9, "ratingCount"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/yingyonghui/market/model/q;->B:I

    .line 603
    const-string v9, "shorDesc"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/yingyonghui/market/model/q;->u:Ljava/lang/String;

    .line 604
    const-string v9, "downloadMax"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/yingyonghui/market/model/q;->z:I

    .line 605
    const-string v9, "downloadMin"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/yingyonghui/market/model/q;->A:I

    .line 606
    const-string v9, "iconUrl"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/yingyonghui/market/model/q;->f:Ljava/lang/String;

    .line 607
    const-string v9, "apkUrl"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/yingyonghui/market/model/q;->g:Ljava/lang/String;

    .line 611
    new-instance v8, Lcom/yingyonghui/market/model/b;

    invoke-direct {v8}, Lcom/yingyonghui/market/model/b;-><init>()V

    .line 613
    const-string v9, "weekly_app"

    iput-object v9, v8, Lcom/yingyonghui/market/model/b;->c:Ljava/lang/String;

    .line 614
    const-string v9, "position"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/yingyonghui/market/model/b;->d:I

    .line 615
    const-string v9, "itemImgURL"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/yingyonghui/market/model/b;->e:Ljava/lang/String;

    .line 616
    const-string v9, "itemTitle"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Lcom/yingyonghui/market/model/b;->b:Ljava/lang/String;

    .line 617
    iput-object v7, v8, Lcom/yingyonghui/market/model/b;->a:Lcom/yingyonghui/market/model/q;

    .line 619
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 624
    :cond_3
    const-string v2, "appWeeklyItemForNews"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 625
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    :goto_2
    if-ge v1, v3, :cond_1

    .line 626
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 628
    new-instance v5, Lcom/yingyonghui/market/model/d;

    invoke-direct {v5}, Lcom/yingyonghui/market/model/d;-><init>()V

    .line 630
    const-string v6, "weekly_news"

    iput-object v6, v5, Lcom/yingyonghui/market/model/d;->c:Ljava/lang/String;

    .line 631
    const-string v6, "position"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/yingyonghui/market/model/d;->d:I

    .line 632
    const-string v6, "itemImgURL"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/yingyonghui/market/model/d;->e:Ljava/lang/String;

    .line 633
    const-string v6, "itemTitle"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/yingyonghui/market/model/d;->b:Ljava/lang/String;

    .line 634
    const-string v6, "contentURL"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/yingyonghui/market/model/d;->a:Ljava/lang/String;

    .line 636
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 639
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static e(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter

    .prologue
    .line 390
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 392
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 393
    const-string v2, "list"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 394
    const/4 v0, 0x0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_0

    .line 395
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 401
    :cond_0
    return-object v1
.end method

.method public static f(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 465
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 467
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 468
    const-string v2, "news"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 469
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_1

    .line 470
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 471
    new-instance v6, Lcom/yingyonghui/market/model/g;

    invoke-direct {v6}, Lcom/yingyonghui/market/model/g;-><init>()V

    .line 472
    const-string v1, "icon_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/yingyonghui/market/model/g;->h:Ljava/lang/String;

    .line 473
    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/yingyonghui/market/model/g;->b:Ljava/lang/String;

    .line 474
    const-string v1, "highlight"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v6, Lcom/yingyonghui/market/model/g;->f:Z

    .line 475
    const-string v1, "hot"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v6, Lcom/yingyonghui/market/model/g;->e:Z

    .line 476
    const-string v1, "new"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v6, Lcom/yingyonghui/market/model/g;->g:Z

    .line 477
    const-string v1, "visit"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v6, Lcom/yingyonghui/market/model/g;->c:I

    .line 478
    const-string v1, "news_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/yingyonghui/market/model/g;->a:Ljava/lang/String;

    .line 479
    const-string v1, "date"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 480
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_0

    .line 482
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "yyyyMMdd"

    aput-object v8, v0, v7

    invoke-static {v1, v0}, Lcom/yingyonghui/market/util/s;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    const-string v7, "yyyy-MM-dd"

    invoke-static {v0, v7}, Lcom/yingyonghui/market/util/s;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 487
    :goto_1
    :try_start_2
    iput-object v0, v6, Lcom/yingyonghui/market/model/g;->d:Ljava/lang/String;

    .line 489
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 483
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    move-object v0, v1

    goto :goto_1

    .line 491
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 495
    :cond_1
    return-object v3
.end method

.method public static g(Ljava/lang/String;)Lcom/yingyonghui/market/model/s;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 505
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 524
    :goto_0
    return-object v0

    .line 514
    :cond_1
    :try_start_0
    new-instance v0, Lcom/yingyonghui/market/model/s;

    invoke-direct {v0}, Lcom/yingyonghui/market/model/s;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 516
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 517
    const-string v2, "weeklyId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/yingyonghui/market/model/s;->a:I

    .line 519
    const-string v2, "appWeeklyNotification"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 520
    const-string v2, "notificationTitle"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yingyonghui/market/model/s;->b:Ljava/lang/String;

    .line 521
    const-string v2, "notificationContent"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yingyonghui/market/model/s;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .parameter

    .prologue
    .line 537
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 538
    :cond_0
    const/4 v0, 0x0

    .line 564
    :goto_0
    return-object v0

    .line 541
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 544
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 545
    const-string v2, "list"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 547
    const/4 v1, 0x0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_2

    .line 548
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 550
    new-instance v5, Lcom/yingyonghui/market/model/l;

    invoke-direct {v5}, Lcom/yingyonghui/market/model/l;-><init>()V

    .line 551
    const-string v6, "id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/yingyonghui/market/model/l;->a:I

    .line 552
    const-string v6, "title"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/yingyonghui/market/model/l;->b:Ljava/lang/String;

    .line 553
    const-string v6, "imgURL"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/yingyonghui/market/model/l;->c:Ljava/lang/String;

    .line 555
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 558
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 560
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    goto :goto_0
.end method
