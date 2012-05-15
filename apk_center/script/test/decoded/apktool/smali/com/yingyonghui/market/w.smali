.class final Lcom/yingyonghui/market/w;
.super Landroid/os/AsyncTask;
.source "AdapterManagerListApp.java"


# instance fields
.field a:Lcom/yingyonghui/market/model/q;

.field final synthetic b:Lcom/yingyonghui/market/es;

.field private c:Z

.field private d:Z


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/es;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 415
    iput-object p1, p0, Lcom/yingyonghui/market/w;->b:Lcom/yingyonghui/market/es;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 416
    iput-boolean v0, p0, Lcom/yingyonghui/market/w;->c:Z

    .line 417
    iput-boolean v0, p0, Lcom/yingyonghui/market/w;->d:Z

    return-void
.end method

.method private varargs a([Lcom/yingyonghui/market/model/q;)Ljava/lang/Void;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 421
    aget-object v2, p1, v1

    iput-object v2, p0, Lcom/yingyonghui/market/w;->a:Lcom/yingyonghui/market/model/q;

    .line 422
    iget-object v2, p0, Lcom/yingyonghui/market/w;->b:Lcom/yingyonghui/market/es;

    invoke-static {v2}, Lcom/yingyonghui/market/es;->b(Lcom/yingyonghui/market/es;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/yingyonghui/market/w;->a:Lcom/yingyonghui/market/model/q;

    iget-object v3, v3, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 423
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    .line 424
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/yingyonghui/market/w;->d:Z

    .line 425
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 427
    :try_start_0
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/yingyonghui/market/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    iget-object v1, p0, Lcom/yingyonghui/market/w;->a:Lcom/yingyonghui/market/model/q;

    iget-object v1, v1, Lcom/yingyonghui/market/model/q;->D:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yingyonghui/market/w;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :cond_0
    :goto_1
    const/4 v0, 0x0

    return-object v0

    :cond_1
    move v0, v1

    .line 424
    goto :goto_0

    .line 431
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 415
    check-cast p1, [Lcom/yingyonghui/market/model/q;

    invoke-direct {p0, p1}, Lcom/yingyonghui/market/w;->a([Lcom/yingyonghui/market/model/q;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f090079

    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 415
    iget-boolean v0, p0, Lcom/yingyonghui/market/w;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yingyonghui/market/w;->b:Lcom/yingyonghui/market/es;

    invoke-static {v0}, Lcom/yingyonghui/market/es;->b(Lcom/yingyonghui/market/es;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityListAppManage;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/yingyonghui/market/fm;

    iget-object v0, p0, Lcom/yingyonghui/market/w;->b:Lcom/yingyonghui/market/es;

    invoke-static {v0}, Lcom/yingyonghui/market/es;->b(Lcom/yingyonghui/market/es;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityListAppManage;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/yingyonghui/market/fm;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/yingyonghui/market/w;->b:Lcom/yingyonghui/market/es;

    invoke-static {v0}, Lcom/yingyonghui/market/es;->b(Lcom/yingyonghui/market/es;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f090136

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yingyonghui/market/fm;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/yingyonghui/market/w;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yingyonghui/market/w;->b:Lcom/yingyonghui/market/es;

    invoke-static {v0}, Lcom/yingyonghui/market/es;->b(Lcom/yingyonghui/market/es;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f090144

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/yingyonghui/market/w;->a:Lcom/yingyonghui/market/model/q;

    iget-object v4, v4, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    invoke-static {v4}, Lcom/yingyonghui/market/util/b;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yingyonghui/market/fm;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v7, v8}, Lcom/yingyonghui/market/fm;->a(ILcom/yingyonghui/market/cf;)Lcom/yingyonghui/market/fm;

    invoke-virtual {v1}, Lcom/yingyonghui/market/fm;->show()V

    invoke-virtual {v1}, Lcom/yingyonghui/market/fm;->e()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/yingyonghui/market/fm;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yingyonghui/market/w;->a:Lcom/yingyonghui/market/model/q;

    iput-boolean v5, v0, Lcom/yingyonghui/market/model/q;->O:Z

    iget-object v0, p0, Lcom/yingyonghui/market/w;->b:Lcom/yingyonghui/market/es;

    invoke-static {v0}, Lcom/yingyonghui/market/es;->d(Lcom/yingyonghui/market/es;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/w;->b:Lcom/yingyonghui/market/es;

    invoke-static {v0}, Lcom/yingyonghui/market/es;->b(Lcom/yingyonghui/market/es;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f090109

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/yingyonghui/market/w;->a:Lcom/yingyonghui/market/model/q;

    iget-object v4, v4, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    invoke-static {v4}, Lcom/yingyonghui/market/util/b;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yingyonghui/market/fm;->a(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/yingyonghui/market/bt;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/bt;-><init>(Lcom/yingyonghui/market/w;)V

    invoke-virtual {v1, v7, v0}, Lcom/yingyonghui/market/fm;->a(ILcom/yingyonghui/market/cf;)Lcom/yingyonghui/market/fm;

    const v0, 0x7f09007a

    invoke-virtual {v1, v0, v8}, Lcom/yingyonghui/market/fm;->a(ILcom/yingyonghui/market/l;)Lcom/yingyonghui/market/fm;

    invoke-virtual {v1}, Lcom/yingyonghui/market/fm;->show()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/yingyonghui/market/w;->b:Lcom/yingyonghui/market/es;

    iget-object v1, p0, Lcom/yingyonghui/market/w;->a:Lcom/yingyonghui/market/model/q;

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/es;->a(Lcom/yingyonghui/market/model/q;)V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/yingyonghui/market/w;->b:Lcom/yingyonghui/market/es;

    invoke-static {v0}, Lcom/yingyonghui/market/es;->b(Lcom/yingyonghui/market/es;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090155

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;I)V

    .line 477
    return-void
.end method
