.class final Lcom/yingyonghui/market/cv;
.super Ljava/lang/Object;
.source "ActivityNewEventDetail.java"


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:I

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field private synthetic i:Lcom/yingyonghui/market/ActivityNewEventDetail;


# direct methods
.method public constructor <init>(Lcom/yingyonghui/market/ActivityNewEventDetail;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/yingyonghui/market/cv;->i:Lcom/yingyonghui/market/ActivityNewEventDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 165
    const-string v1, "appId"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/yingyonghui/market/cv;->a:I

    .line 166
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/cv;->b:Ljava/lang/String;

    .line 167
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/cv;->c:Ljava/lang/String;

    .line 168
    const-string v1, "size"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/yingyonghui/market/cv;->d:I

    .line 169
    const-string v1, "promotionDownUrl"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/cv;->e:Ljava/lang/String;

    .line 170
    const-string v1, "channel"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/cv;->f:Ljava/lang/String;

    .line 171
    const-string v1, "update"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/cv;->g:Ljava/lang/String;

    .line 172
    const-string v1, "iconUrl"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/cv;->h:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    const-string v1, "AppChina"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
