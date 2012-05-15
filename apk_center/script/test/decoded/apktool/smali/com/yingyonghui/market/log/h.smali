.class public final Lcom/yingyonghui/market/log/h;
.super Ljava/lang/Object;
.source "JsonLog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const-string v0, "searchMoreHotwords"

    invoke-static {v0}, Lcom/yingyonghui/market/log/h;->g(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 94
    const-string v0, "tabClick"

    invoke-static {v0}, Lcom/yingyonghui/market/log/h;->g(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 95
    const-string v1, "index"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(II)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 263
    const-string v0, "addReply"

    invoke-static {v0}, Lcom/yingyonghui/market/log/h;->g(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 264
    const-string v1, "parentId"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 265
    const-string v1, "applicationId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
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
    .line 63
    const-string v1, "launch"

    invoke-static {v1}, Lcom/yingyonghui/market/log/h;->g(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 64
    const-string v2, "hardware"

    invoke-static {v1, v2, p2}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 65
    const-string v2, "sdkVersion"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 66
    const-string v2, "resolution"

    invoke-static {v1, v2, p1}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 67
    const-string v2, "dpi"

    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 68
    const-string v2, "clientVersionCode"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 69
    const-string v2, "channel"

    move-object/from16 v0, p12

    invoke-static {v1, v2, v0}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 70
    const-string v2, "deviceId"

    invoke-static {v1, v2, p4}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 71
    const-string v2, "IMSI"

    move-object/from16 v0, p13

    invoke-static {v1, v2, v0}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 72
    const-string v2, "networkType"

    invoke-static {v1, v2, p5}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 73
    const-string v2, "networkSubType"

    invoke-static {v1, v2, p7}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 74
    const-string v2, "networkExtraInfo"

    invoke-static {v1, v2, p6}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 75
    const-string v2, "ipAddress"

    invoke-static {v1, v2, p10}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 76
    const-string v2, "phoneNumber"

    invoke-static {v1, v2, p11}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 77
    const-string v2, "androidId"

    invoke-static {v1, v2, p8}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 78
    const-string v2, "serialNumber"

    invoke-static {v1, v2, p9}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 79
    const-string v2, "abi"

    move-object/from16 v0, p15

    invoke-static {v1, v2, v0}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static a(J)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 465
    const-string v0, "apiResponseTime"

    invoke-static {v0}, Lcom/yingyonghui/market/log/h;->h(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 466
    const-string v1, "time"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 468
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/yingyonghui/market/log/m;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 182
    const-string v0, "detailShare"

    invoke-static {v0, p0}, Lcom/yingyonghui/market/log/h;->b(Ljava/lang/String;Lcom/yingyonghui/market/log/m;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/yingyonghui/market/log/m;IILjava/util/List;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 324
    const-string v0, "appListFeatured"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/yingyonghui/market/log/h;->a(Lcom/yingyonghui/market/log/m;Ljava/lang/String;IILjava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/yingyonghui/market/log/m;ILjava/util/List;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 387
    const-string v0, "appListUpdate"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1, p2}, Lcom/yingyonghui/market/log/h;->a(Lcom/yingyonghui/market/log/m;Ljava/lang/String;IILjava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/yingyonghui/market/log/m;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 165
    const-string v0, "newsGuid"

    invoke-static {v0}, Lcom/yingyonghui/market/log/h;->g(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 166
    invoke-static {v0, p0}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Lcom/yingyonghui/market/log/m;)Lorg/json/JSONObject;

    move-result-object v0

    .line 167
    const-string v1, "button"

    invoke-static {v0, v1, p1}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/yingyonghui/market/log/m;Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    const-string v0, "listClick"

    invoke-static {v0}, Lcom/yingyonghui/market/log/h;->g(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 112
    invoke-static {v0, p0}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Lcom/yingyonghui/market/log/m;)Lorg/json/JSONObject;

    move-result-object v0

    .line 113
    const-string v1, "module"

    invoke-static {v0, v1, p1}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 114
    const-string v1, "index"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 115
    const-string v1, "applicationId"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/yingyonghui/market/log/m;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    const-string v0, "listDLClick"

    invoke-static {v0}, Lcom/yingyonghui/market/log/h;->g(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 134
    invoke-static {v0, p0}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Lcom/yingyonghui/market/log/m;)Lorg/json/JSONObject;

    move-result-object v0

    .line 135
    const-string v1, "module"

    invoke-static {v0, v1, p1}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 136
    const-string v1, "index"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 137
    const-string v1, "applicationId"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 138
    const-string v1, "type"

    invoke-static {v0, v1, p4}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/yingyonghui/market/log/m;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    const-string v0, "newsListClick"

    invoke-static {v0}, Lcom/yingyonghui/market/log/h;->g(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 123
    invoke-static {v0, p0}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Lcom/yingyonghui/market/log/m;)Lorg/json/JSONObject;

    move-result-object v0

    .line 124
    const-string v1, "module"

    invoke-static {v0, v1, p1}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 125
    const-string v1, "index"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 126
    const-string v1, "url"

    invoke-static {v0, v1, p3}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/yingyonghui/market/log/m;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 317
    const-string v0, "appListBanner"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p0, v0, v1, v2, p1}, Lcom/yingyonghui/market/log/h;->a(Lcom/yingyonghui/market/log/m;Ljava/lang/String;IILjava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 86
    const-string v0, "exit"

    invoke-static {v0}, Lcom/yingyonghui/market/log/h;->g(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 87
    const-string v1, "button"

    invoke-static {v0, v1, p0}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 102
    const-string v0, "tab2Click"

    invoke-static {v0}, Lcom/yingyonghui/market/log/h;->g(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 103
    const-string v1, "name"

    invoke-static {v0, v1, p0}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 104
    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/yingyonghui/market/log/m;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 309
    invoke-static {p0}, Lcom/yingyonghui/market/log/h;->g(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 310
    invoke-static {v0, p1}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Lcom/yingyonghui/market/log/m;)Lorg/json/JSONObject;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/yingyonghui/market/log/m;II)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 290
    invoke-static {p0}, Lcom/yingyonghui/market/log/h;->g(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 291
    invoke-static {v0, p1}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Lcom/yingyonghui/market/log/m;)Lorg/json/JSONObject;

    move-result-object v0

    .line 292
    const-string v1, "index"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 293
    const-string v1, "applicationId"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/yingyonghui/market/log/m;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 299
    invoke-static {p0}, Lcom/yingyonghui/market/log/h;->g(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 300
    invoke-static {v0, p1}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Lcom/yingyonghui/market/log/m;)Lorg/json/JSONObject;

    move-result-object v0

    .line 301
    const-string v1, "index"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 302
    const-string v1, "packageName"

    invoke-static {v0, v1, p3}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 145
    const-string v0, "search"

    invoke-static {v0}, Lcom/yingyonghui/market/log/h;->g(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 146
    const-string v1, "searchType"

    invoke-static {v0, v1, p0}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 147
    const-string v1, "searchByKeyword"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "searchByHotword"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 148
    :cond_0
    const-string v1, "keyword"

    invoke-static {v0, v1, p1}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 153
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 149
    :cond_2
    const-string v1, "searchByDeveloper"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    const-string v1, "developer"

    invoke-static {v0, v1, p1}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 474
    const-string v0, "networkChange"

    invoke-static {v0}, Lcom/yingyonghui/market/log/h;->h(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 475
    const-string v1, "networkType"

    invoke-static {v0, v1, p0}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 476
    const-string v1, "networkSubType"

    invoke-static {v0, v1, p1}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 477
    const-string v1, "networkExtraInfo"

    invoke-static {v0, v1, p2}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 478
    const-string v1, "ipAddress"

    invoke-static {v0, v1, p3}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 480
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 48
    const-string v0, "exit"

    invoke-static {v0}, Lcom/yingyonghui/market/log/h;->g(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 49
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 50
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/yingyonghui/market/log/m;Ljava/lang/String;IILjava/util/List;)Lorg/json/JSONObject;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-static {}, Lcom/yingyonghui/market/log/h;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 30
    const-string v1, "d"

    invoke-virtual {p0}, Lcom/yingyonghui/market/log/m;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 31
    const-string v1, "type"

    invoke-static {v0, v1, p1}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 32
    const-string v1, "start"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 33
    const-string v1, "size"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 34
    const-string v1, "list"

    invoke-static {v0, v1, p4}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 36
    return-object v0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 247
    const-string v0, "addComment"

    invoke-static {v0}, Lcom/yingyonghui/market/log/h;->g(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 248
    const-string v1, "applicationId"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(II)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 272
    const-string v0, "submitReply"

    invoke-static {v0}, Lcom/yingyonghui/market/log/h;->g(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 273
    const-string v1, "parentId"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 274
    const-string v1, "applicationId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/yingyonghui/market/log/m;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 187
    const-string v0, "detailInstall"

    invoke-static {v0, p0}, Lcom/yingyonghui/market/log/h;->b(Ljava/lang/String;Lcom/yingyonghui/market/log/m;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/yingyonghui/market/log/m;IILjava/util/List;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 331
    const-string v0, "appListLatest"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/yingyonghui/market/log/h;->a(Lcom/yingyonghui/market/log/m;Ljava/lang/String;IILjava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/yingyonghui/market/log/m;ILjava/util/List;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 408
    const-string v0, "newsContent"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1, p2}, Lcom/yingyonghui/market/log/h;->a(Lcom/yingyonghui/market/log/m;Ljava/lang/String;IILjava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/yingyonghui/market/log/m;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 359
    const-string v0, "appListCatfeatured"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p0, v0, v1, v2, p1}, Lcom/yingyonghui/market/log/h;->a(Lcom/yingyonghui/market/log/m;Ljava/lang/String;IILjava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 437
    const-string v0, "download_pause"

    invoke-static {v0, p0}, Lcom/yingyonghui/market/log/h;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 439
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;Lcom/yingyonghui/market/log/m;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 174
    invoke-static {p0}, Lcom/yingyonghui/market/log/h;->g(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 175
    invoke-static {v0, p1}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Lcom/yingyonghui/market/log/m;)Lorg/json/JSONObject;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 429
    const-string v0, "download_start"

    invoke-static {v0, p0}, Lcom/yingyonghui/market/log/h;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 430
    const-string v1, "type"

    invoke-static {v0, v1, p1}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 14
    invoke-static {v0}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/yingyonghui/market/util/k;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 17
    return-object v0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 255
    const-string v0, "submitComment"

    invoke-static {v0}, Lcom/yingyonghui/market/log/h;->g(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 256
    const-string v1, "applicationId"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(II)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 281
    const-string v0, "deleteComment"

    invoke-static {v0}, Lcom/yingyonghui/market/log/h;->g(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 282
    const-string v1, "commentId"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 283
    const-string v1, "applicationId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lcom/yingyonghui/market/log/m;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 192
    const-string v0, "detailUninstall"

    invoke-static {v0, p0}, Lcom/yingyonghui/market/log/h;->b(Ljava/lang/String;Lcom/yingyonghui/market/log/m;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lcom/yingyonghui/market/log/m;IILjava/util/List;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 338
    const-string v0, "appListRank"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/yingyonghui/market/log/h;->a(Lcom/yingyonghui/market/log/m;Ljava/lang/String;IILjava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lcom/yingyonghui/market/log/m;ILjava/util/List;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 415
    const-string v0, "weeklyContent"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1, p2}, Lcom/yingyonghui/market/log/h;->a(Lcom/yingyonghui/market/log/m;Ljava/lang/String;IILjava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    .line 417
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lcom/yingyonghui/market/log/m;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 394
    const-string v0, "appDetail"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2, p1}, Lcom/yingyonghui/market/log/h;->a(Lcom/yingyonghui/market/log/m;Ljava/lang/String;IILjava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 444
    const-string v0, "download_resume"

    invoke-static {v0, p0}, Lcom/yingyonghui/market/log/h;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 446
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 421
    invoke-static {p0}, Lcom/yingyonghui/market/log/h;->h(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 422
    const-string v1, "packageName"

    invoke-static {v0, v1, p1}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 424
    return-object v0
.end method

.method public static d(Lcom/yingyonghui/market/log/m;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 197
    const-string v0, "detailLaunch"

    invoke-static {v0, p0}, Lcom/yingyonghui/market/log/h;->b(Ljava/lang/String;Lcom/yingyonghui/market/log/m;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lcom/yingyonghui/market/log/m;IILjava/util/List;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 345
    const-string v0, "appListFast"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/yingyonghui/market/log/h;->a(Lcom/yingyonghui/market/log/m;Ljava/lang/String;IILjava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 451
    const-string v0, "download_cancel"

    invoke-static {v0, p0}, Lcom/yingyonghui/market/log/h;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Lcom/yingyonghui/market/log/m;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 202
    const-string v0, "detailCancelDownload"

    invoke-static {v0, p0}, Lcom/yingyonghui/market/log/h;->b(Ljava/lang/String;Lcom/yingyonghui/market/log/m;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Lcom/yingyonghui/market/log/m;IILjava/util/List;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 352
    const-string v0, "appListCategory"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/yingyonghui/market/log/h;->a(Lcom/yingyonghui/market/log/m;Ljava/lang/String;IILjava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 458
    const-string v0, "download_done"

    invoke-static {v0, p0}, Lcom/yingyonghui/market/log/h;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 460
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Lcom/yingyonghui/market/log/m;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 207
    const-string v0, "detailFeedback"

    invoke-static {v0, p0}, Lcom/yingyonghui/market/log/h;->b(Ljava/lang/String;Lcom/yingyonghui/market/log/m;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Lcom/yingyonghui/market/log/m;IILjava/util/List;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 366
    const-string v0, "appListRecommend"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/yingyonghui/market/log/h;->a(Lcom/yingyonghui/market/log/m;Ljava/lang/String;IILjava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    .line 368
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 485
    const-string v0, "error"

    invoke-static {v0}, Lcom/yingyonghui/market/log/h;->g(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 486
    const-string v1, "params"

    invoke-static {v0, v1, p0}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 488
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(Lcom/yingyonghui/market/log/m;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 212
    const-string v0, "detailSubmitFeedback"

    invoke-static {v0, p0}, Lcom/yingyonghui/market/log/h;->b(Ljava/lang/String;Lcom/yingyonghui/market/log/m;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(Lcom/yingyonghui/market/log/m;IILjava/util/List;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 373
    const-string v0, "hotSearchWords"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/yingyonghui/market/log/h;->a(Lcom/yingyonghui/market/log/m;Ljava/lang/String;IILjava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static g(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .parameter

    .prologue
    .line 21
    invoke-static {}, Lcom/yingyonghui/market/log/h;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 22
    const-string v1, "a"

    invoke-static {v0, v1, p0}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 24
    return-object v0
.end method

.method public static h(Lcom/yingyonghui/market/log/m;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 217
    const-string v0, "detailReportError"

    invoke-static {v0, p0}, Lcom/yingyonghui/market/log/h;->b(Ljava/lang/String;Lcom/yingyonghui/market/log/m;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h(Lcom/yingyonghui/market/log/m;IILjava/util/List;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 380
    const-string v0, "appListSearch"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/yingyonghui/market/log/h;->a(Lcom/yingyonghui/market/log/m;Ljava/lang/String;IILjava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static h(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .parameter

    .prologue
    .line 40
    invoke-static {}, Lcom/yingyonghui/market/log/h;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 41
    const-string v1, "i"

    invoke-static {v0, v1, p0}, Lcom/yingyonghui/market/util/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 43
    return-object v0
.end method

.method public static i(Lcom/yingyonghui/market/log/m;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 222
    const-string v0, "detailSubmitReportError"

    invoke-static {v0, p0}, Lcom/yingyonghui/market/log/h;->b(Ljava/lang/String;Lcom/yingyonghui/market/log/m;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Lcom/yingyonghui/market/log/m;IILjava/util/List;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 401
    const-string v0, "appListRelative"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/yingyonghui/market/log/h;->a(Lcom/yingyonghui/market/log/m;Ljava/lang/String;IILjava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j(Lcom/yingyonghui/market/log/m;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 227
    const-string v0, "detailSendMail"

    invoke-static {v0, p0}, Lcom/yingyonghui/market/log/h;->b(Ljava/lang/String;Lcom/yingyonghui/market/log/m;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static k(Lcom/yingyonghui/market/log/m;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 232
    const-string v0, "detailScreenshot"

    invoke-static {v0, p0}, Lcom/yingyonghui/market/log/h;->b(Ljava/lang/String;Lcom/yingyonghui/market/log/m;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static l(Lcom/yingyonghui/market/log/m;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 237
    const-string v0, "detailMoreDescription"

    invoke-static {v0, p0}, Lcom/yingyonghui/market/log/h;->b(Ljava/lang/String;Lcom/yingyonghui/market/log/m;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static m(Lcom/yingyonghui/market/log/m;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 242
    const-string v0, "detailMoreRelative"

    invoke-static {v0, p0}, Lcom/yingyonghui/market/log/h;->b(Ljava/lang/String;Lcom/yingyonghui/market/log/m;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
