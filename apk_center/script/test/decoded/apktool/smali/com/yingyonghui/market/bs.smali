.class public final Lcom/yingyonghui/market/bs;
.super Ljava/lang/Object;
.source "ActivityHubListen.java"


# instance fields
.field private a:Ljava/lang/String;

.field private synthetic b:Lcom/yingyonghui/market/ActivityHubListen;


# direct methods
.method public constructor <init>(Lcom/yingyonghui/market/ActivityHubListen;)V
    .locals 1
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/yingyonghui/market/bs;->b:Lcom/yingyonghui/market/ActivityHubListen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    const-string v0, "PhoneInfo1"

    iput-object v0, p0, Lcom/yingyonghui/market/bs;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/ObjectInputStream;Ljava/io/ObjectOutputStream;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 203
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 206
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 209
    const-string v2, "imei"

    iget-object v3, p0, Lcom/yingyonghui/market/bs;->b:Lcom/yingyonghui/market/ActivityHubListen;

    iget-object v3, v3, Lcom/yingyonghui/market/ActivityHubListen;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/yingyonghui/market/util/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v2, "imsi"

    iget-object v3, p0, Lcom/yingyonghui/market/bs;->b:Lcom/yingyonghui/market/ActivityHubListen;

    iget-object v3, v3, Lcom/yingyonghui/market/ActivityHubListen;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/yingyonghui/market/util/q;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v2, "msisdn"

    iget-object v3, p0, Lcom/yingyonghui/market/bs;->b:Lcom/yingyonghui/market/ActivityHubListen;

    iget-object v3, v3, Lcom/yingyonghui/market/ActivityHubListen;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/yingyonghui/market/util/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v2, "total_size"

    invoke-static {}, Lcom/yingyonghui/market/ActivityHubListen;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v2, "sd_available_size"

    invoke-static {}, Lcom/yingyonghui/market/ActivityHubListen;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v2, "sd_total_size"

    invoke-static {}, Lcom/yingyonghui/market/ActivityHubListen;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v2, "nada_available_size"

    invoke-static {}, Lcom/yingyonghui/market/ActivityHubListen;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v2, "nada_total_size"

    invoke-static {}, Lcom/yingyonghui/market/ActivityHubListen;->d()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-static {v1}, Lcom/yingyonghui/market/log/h;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send json="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    invoke-virtual {p2, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 222
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 223
    const/16 v2, 0x65

    iput v2, v1, Landroid/os/Message;->what:I

    .line 224
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lcom/yingyonghui/market/bs;->b:Lcom/yingyonghui/market/ActivityHubListen;

    iget-object v0, v0, Lcom/yingyonghui/market/ActivityHubListen;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    const/4 v0, 0x1

    .line 234
    :goto_0
    return v0

    .line 229
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 232
    const/4 v0, 0x0

    goto :goto_0
.end method
