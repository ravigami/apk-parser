.class final Lcom/yingyonghui/market/z;
.super Landroid/content/BroadcastReceiver;
.source "ActivityListAppManage.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityListAppManage;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityListAppManage;)V
    .locals 0
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/yingyonghui/market/z;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, -0x1

    .line 332
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 333
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 334
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 337
    iget-object v0, p0, Lcom/yingyonghui/market/z;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppManage;->b(Lcom/yingyonghui/market/ActivityListAppManage;)Lcom/yingyonghui/market/es;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/market/z;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppManage;->b(Lcom/yingyonghui/market/ActivityListAppManage;)Lcom/yingyonghui/market/es;

    move-result-object v0

    iget-object v0, v0, Lcom/yingyonghui/market/es;->a:Lcom/yingyonghui/market/model/q;

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 339
    iget-object v1, p0, Lcom/yingyonghui/market/z;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityListAppManage;->b(Lcom/yingyonghui/market/ActivityListAppManage;)Lcom/yingyonghui/market/es;

    move-result-object v1

    iget-object v10, v1, Lcom/yingyonghui/market/es;->a:Lcom/yingyonghui/market/model/q;

    .line 340
    iget-object v1, p0, Lcom/yingyonghui/market/z;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityListAppManage;->b(Lcom/yingyonghui/market/ActivityListAppManage;)Lcom/yingyonghui/market/es;

    move-result-object v1

    iget-object v1, v1, Lcom/yingyonghui/market/es;->a:Lcom/yingyonghui/market/model/q;

    iget-object v1, v1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/yingyonghui/market/z;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-static {v0}, Lcom/yingyonghui/market/util/GlobalUtil;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 342
    const-string v8, "update"

    .line 343
    invoke-static {p1}, Lcom/yingyonghui/market/util/t;->a(Landroid/content/Context;)Lcom/yingyonghui/market/util/t;

    move-result-object v0

    iget-object v1, v10, Lcom/yingyonghui/market/model/q;->g:Ljava/lang/String;

    iget v2, v10, Lcom/yingyonghui/market/model/q;->e:I

    iget-object v3, v10, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    iget-object v4, v10, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    iget v5, v10, Lcom/yingyonghui/market/model/q;->o:I

    iget-object v6, v10, Lcom/yingyonghui/market/model/q;->G:Ljava/lang/String;

    iget-object v9, v10, Lcom/yingyonghui/market/model/q;->f:Ljava/lang/String;

    invoke-virtual/range {v0 .. v9}, Lcom/yingyonghui/market/util/t;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/yingyonghui/market/z;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppManage;->b(Lcom/yingyonghui/market/ActivityListAppManage;)Lcom/yingyonghui/market/es;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/yingyonghui/market/es;->a:Lcom/yingyonghui/market/model/q;

    .line 345
    iget-object v0, p0, Lcom/yingyonghui/market/z;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    const v1, 0x7f090112

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v10, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/yingyonghui/market/ActivityListAppManage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yingyonghui/market/util/GlobalUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/z;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppManage;->d(Lcom/yingyonghui/market/ActivityListAppManage;)I

    move-result v0

    if-eq v0, v11, :cond_1

    .line 349
    iget-object v0, p0, Lcom/yingyonghui/market/z;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppManage;->e(Lcom/yingyonghui/market/ActivityListAppManage;)I

    .line 356
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yingyonghui/market/z;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityListAppManage;->d()V

    .line 358
    return-void

    .line 351
    :cond_2
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/yingyonghui/market/z;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppManage;->d(Lcom/yingyonghui/market/ActivityListAppManage;)I

    move-result v0

    if-eq v0, v11, :cond_1

    .line 353
    iget-object v0, p0, Lcom/yingyonghui/market/z;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppManage;->f(Lcom/yingyonghui/market/ActivityListAppManage;)I

    goto :goto_0
.end method
