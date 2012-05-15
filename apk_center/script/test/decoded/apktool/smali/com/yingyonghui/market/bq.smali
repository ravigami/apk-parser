.class final Lcom/yingyonghui/market/bq;
.super Landroid/content/BroadcastReceiver;
.source "ActivityListComments.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityListComments;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityListComments;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/yingyonghui/market/bq;->a:Lcom/yingyonghui/market/ActivityListComments;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 139
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 140
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 142
    iget-object v2, p0, Lcom/yingyonghui/market/bq;->a:Lcom/yingyonghui/market/ActivityListComments;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityListComments;->a(Lcom/yingyonghui/market/ActivityListComments;)Lcom/yingyonghui/market/model/o;

    move-result-object v2

    iget-object v2, v2, Lcom/yingyonghui/market/model/o;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/yingyonghui/market/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/yingyonghui/market/bq;->a:Lcom/yingyonghui/market/ActivityListComments;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListComments;->a(Lcom/yingyonghui/market/ActivityListComments;)Lcom/yingyonghui/market/model/o;

    move-result-object v0

    iput v3, v0, Lcom/yingyonghui/market/model/o;->n:I

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/yingyonghui/market/bq;->a:Lcom/yingyonghui/market/ActivityListComments;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListComments;->b(Lcom/yingyonghui/market/ActivityListComments;)V

    .line 149
    iget-object v0, p0, Lcom/yingyonghui/market/bq;->a:Lcom/yingyonghui/market/ActivityListComments;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListComments;->c(Lcom/yingyonghui/market/ActivityListComments;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/yingyonghui/market/bq;->a:Lcom/yingyonghui/market/ActivityListComments;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListComments;->d(Lcom/yingyonghui/market/ActivityListComments;)Z

    .line 151
    iget-object v0, p0, Lcom/yingyonghui/market/bq;->a:Lcom/yingyonghui/market/ActivityListComments;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListComments;->f(Lcom/yingyonghui/market/ActivityListComments;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/bq;->a:Lcom/yingyonghui/market/ActivityListComments;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityListComments;->e(Lcom/yingyonghui/market/ActivityListComments;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/bq;->a:Lcom/yingyonghui/market/ActivityListComments;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListComments;->g(Lcom/yingyonghui/market/ActivityListComments;)Lcom/yingyonghui/market/fb;

    .line 154
    iget-object v0, p0, Lcom/yingyonghui/market/bq;->a:Lcom/yingyonghui/market/ActivityListComments;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListComments;->h(Lcom/yingyonghui/market/ActivityListComments;)I

    .line 155
    iget-object v0, p0, Lcom/yingyonghui/market/bq;->a:Lcom/yingyonghui/market/ActivityListComments;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListComments;->i(Lcom/yingyonghui/market/ActivityListComments;)V

    .line 158
    :cond_2
    return-void

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/yingyonghui/market/bq;->a:Lcom/yingyonghui/market/ActivityListComments;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListComments;->a(Lcom/yingyonghui/market/ActivityListComments;)Lcom/yingyonghui/market/model/o;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/yingyonghui/market/model/o;->n:I

    goto :goto_0
.end method
