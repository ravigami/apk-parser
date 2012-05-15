.class final Lcom/yingyonghui/market/j;
.super Landroid/webkit/WebViewClient;
.source "ActivityNewEventDetail.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityNewEventDetail;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityNewEventDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/yingyonghui/market/j;->a:Lcom/yingyonghui/market/ActivityNewEventDetail;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 109
    const-string v0, "share"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    :try_start_0
    const-string v0, "{"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 112
    const-string v1, "}"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 113
    if-lez v0, :cond_0

    if-le v1, v0, :cond_0

    .line 114
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/yingyonghui/market/j;->a:Lcom/yingyonghui/market/ActivityNewEventDetail;

    const-string v2, "gbk"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yingyonghui/market/util/GlobalUtil;->e(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 118
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 122
    :cond_1
    const-string v0, ".apk"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    const-string v0, "${"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 129
    const-string v1, "}"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 131
    new-instance v9, Lcom/yingyonghui/market/cv;

    iget-object v0, p0, Lcom/yingyonghui/market/j;->a:Lcom/yingyonghui/market/ActivityNewEventDetail;

    invoke-direct {v9, v0, v1}, Lcom/yingyonghui/market/cv;-><init>(Lcom/yingyonghui/market/ActivityNewEventDetail;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/yingyonghui/market/j;->a:Lcom/yingyonghui/market/ActivityNewEventDetail;

    invoke-static {v0}, Lcom/yingyonghui/market/util/t;->a(Landroid/content/Context;)Lcom/yingyonghui/market/util/t;

    move-result-object v0

    iget v2, v9, Lcom/yingyonghui/market/cv;->a:I

    iget-object v3, v9, Lcom/yingyonghui/market/cv;->b:Ljava/lang/String;

    iget-object v4, v9, Lcom/yingyonghui/market/cv;->c:Ljava/lang/String;

    iget v5, v9, Lcom/yingyonghui/market/cv;->d:I

    iget-object v6, v9, Lcom/yingyonghui/market/cv;->e:Ljava/lang/String;

    iget-object v7, v9, Lcom/yingyonghui/market/cv;->f:Ljava/lang/String;

    iget-object v8, v9, Lcom/yingyonghui/market/cv;->g:Ljava/lang/String;

    iget-object v9, v9, Lcom/yingyonghui/market/cv;->h:Ljava/lang/String;

    invoke-virtual/range {v0 .. v9}, Lcom/yingyonghui/market/util/t;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/yingyonghui/market/j;->a:Lcom/yingyonghui/market/ActivityNewEventDetail;

    invoke-virtual {v0, p1, p2}, Lcom/yingyonghui/market/ActivityNewEventDetail;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method
