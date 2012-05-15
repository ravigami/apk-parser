.class final Lcom/yingyonghui/market/ej;
.super Landroid/content/BroadcastReceiver;
.source "ActivityDetailAppInner.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityDetailAppInner;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityDetailAppInner;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/yingyonghui/market/ej;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "send_asset_detail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_0

    .line 169
    iget-object v1, p0, Lcom/yingyonghui/market/ej;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailAppInner;->a(Lcom/yingyonghui/market/ActivityDetailAppInner;)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yingyonghui/market/ej;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailAppInner;->a(Lcom/yingyonghui/market/ActivityDetailAppInner;)I

    move-result v1

    const-string v2, "_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/yingyonghui/market/ej;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailAppInner;->b(Lcom/yingyonghui/market/ActivityDetailAppInner;)Lcom/yingyonghui/market/model/o;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yingyonghui/market/ej;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailAppInner;->b(Lcom/yingyonghui/market/ActivityDetailAppInner;)Lcom/yingyonghui/market/model/o;

    move-result-object v1

    iget v1, v1, Lcom/yingyonghui/market/model/o;->e:I

    const-string v2, "_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 175
    :cond_2
    iget-object v1, p0, Lcom/yingyonghui/market/ej;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    new-instance v2, Lcom/yingyonghui/market/model/o;

    invoke-direct {v2}, Lcom/yingyonghui/market/model/o;-><init>()V

    invoke-static {v1, v2}, Lcom/yingyonghui/market/ActivityDetailAppInner;->a(Lcom/yingyonghui/market/ActivityDetailAppInner;Lcom/yingyonghui/market/model/o;)Lcom/yingyonghui/market/model/o;

    .line 176
    iget-object v1, p0, Lcom/yingyonghui/market/ej;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailAppInner;->b(Lcom/yingyonghui/market/ActivityDetailAppInner;)Lcom/yingyonghui/market/model/o;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/yingyonghui/market/model/o;->e:I

    .line 177
    iget-object v1, p0, Lcom/yingyonghui/market/ej;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailAppInner;->b(Lcom/yingyonghui/market/ActivityDetailAppInner;)Lcom/yingyonghui/market/model/o;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yingyonghui/market/model/o;->i:Ljava/lang/String;

    .line 178
    iget-object v1, p0, Lcom/yingyonghui/market/ej;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailAppInner;->b(Lcom/yingyonghui/market/ActivityDetailAppInner;)Lcom/yingyonghui/market/model/o;

    move-result-object v1

    const-string v2, "author"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yingyonghui/market/model/o;->j:Ljava/lang/String;

    .line 179
    iget-object v1, p0, Lcom/yingyonghui/market/ej;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailAppInner;->b(Lcom/yingyonghui/market/ActivityDetailAppInner;)Lcom/yingyonghui/market/model/o;

    move-result-object v1

    const-string v2, "rating"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lcom/yingyonghui/market/model/o;->l:F

    .line 180
    iget-object v1, p0, Lcom/yingyonghui/market/ej;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailAppInner;->b(Lcom/yingyonghui/market/ActivityDetailAppInner;)Lcom/yingyonghui/market/model/o;

    move-result-object v1

    const-string v2, "ratingNumbers"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/yingyonghui/market/model/o;->B:I

    .line 181
    iget-object v1, p0, Lcom/yingyonghui/market/ej;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailAppInner;->b(Lcom/yingyonghui/market/ActivityDetailAppInner;)Lcom/yingyonghui/market/model/o;

    move-result-object v1

    const-string v2, "pkgName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yingyonghui/market/model/o;->m:Ljava/lang/String;

    .line 182
    iget-object v1, p0, Lcom/yingyonghui/market/ej;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailAppInner;->b(Lcom/yingyonghui/market/ActivityDetailAppInner;)Lcom/yingyonghui/market/model/o;

    move-result-object v1

    const-string v2, "size"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/yingyonghui/market/model/o;->o:I

    .line 183
    iget-object v1, p0, Lcom/yingyonghui/market/ej;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailAppInner;->b(Lcom/yingyonghui/market/ActivityDetailAppInner;)Lcom/yingyonghui/market/model/o;

    move-result-object v1

    const-string v2, "version"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yingyonghui/market/model/o;->q:Ljava/lang/String;

    .line 184
    iget-object v1, p0, Lcom/yingyonghui/market/ej;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailAppInner;->b(Lcom/yingyonghui/market/ActivityDetailAppInner;)Lcom/yingyonghui/market/model/o;

    move-result-object v1

    const-string v2, "lastUpdate"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yingyonghui/market/model/o;->r:Ljava/lang/String;

    .line 185
    iget-object v1, p0, Lcom/yingyonghui/market/ej;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailAppInner;->b(Lcom/yingyonghui/market/ActivityDetailAppInner;)Lcom/yingyonghui/market/model/o;

    move-result-object v1

    const-string v2, "versionCode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/yingyonghui/market/model/o;->s:I

    .line 186
    iget-object v1, p0, Lcom/yingyonghui/market/ej;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailAppInner;->b(Lcom/yingyonghui/market/ActivityDetailAppInner;)Lcom/yingyonghui/market/model/o;

    move-result-object v1

    const-string v2, "downloadCountMax"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/yingyonghui/market/model/o;->z:I

    .line 187
    iget-object v1, p0, Lcom/yingyonghui/market/ej;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailAppInner;->b(Lcom/yingyonghui/market/ActivityDetailAppInner;)Lcom/yingyonghui/market/model/o;

    move-result-object v1

    const-string v2, "downloadCountMin"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/yingyonghui/market/model/o;->A:I

    .line 188
    iget-object v1, p0, Lcom/yingyonghui/market/ej;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailAppInner;->b(Lcom/yingyonghui/market/ActivityDetailAppInner;)Lcom/yingyonghui/market/model/o;

    move-result-object v1

    const-string v2, "description"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yingyonghui/market/model/o;->a:Ljava/lang/String;

    .line 190
    iget-object v1, p0, Lcom/yingyonghui/market/ej;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailAppInner;->b(Lcom/yingyonghui/market/ActivityDetailAppInner;)Lcom/yingyonghui/market/model/o;

    move-result-object v1

    const-string v2, "myComment"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yingyonghui/market/model/o;->b:Ljava/lang/String;

    .line 191
    iget-object v1, p0, Lcom/yingyonghui/market/ej;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailAppInner;->b(Lcom/yingyonghui/market/ActivityDetailAppInner;)Lcom/yingyonghui/market/model/o;

    move-result-object v1

    const-string v2, "myCommentDate"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/yingyonghui/market/model/o;->c:J

    .line 192
    iget-object v1, p0, Lcom/yingyonghui/market/ej;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailAppInner;->b(Lcom/yingyonghui/market/ActivityDetailAppInner;)Lcom/yingyonghui/market/model/o;

    move-result-object v1

    const-string v2, "myRating"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/yingyonghui/market/model/o;->d:I

    .line 194
    iget-object v1, p0, Lcom/yingyonghui/market/ej;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailAppInner;->b(Lcom/yingyonghui/market/ActivityDetailAppInner;)Lcom/yingyonghui/market/model/o;

    move-result-object v1

    const-string v2, "installed"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/yingyonghui/market/model/o;->n:I

    .line 195
    iget-object v1, p0, Lcom/yingyonghui/market/ej;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailAppInner;->b(Lcom/yingyonghui/market/ActivityDetailAppInner;)Lcom/yingyonghui/market/model/o;

    move-result-object v1

    const-string v2, "promotionId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/yingyonghui/market/model/o;->E:I

    .line 196
    iget-object v1, p0, Lcom/yingyonghui/market/ej;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailAppInner;->b(Lcom/yingyonghui/market/ActivityDetailAppInner;)Lcom/yingyonghui/market/model/o;

    move-result-object v1

    const-string v2, "promotionAgent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yingyonghui/market/model/o;->F:Ljava/lang/String;

    .line 197
    iget-object v1, p0, Lcom/yingyonghui/market/ej;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailAppInner;->b(Lcom/yingyonghui/market/ActivityDetailAppInner;)Lcom/yingyonghui/market/model/o;

    move-result-object v1

    const-string v2, "promotionText"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yingyonghui/market/model/o;->H:Ljava/lang/String;

    .line 198
    iget-object v1, p0, Lcom/yingyonghui/market/ej;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailAppInner;->b(Lcom/yingyonghui/market/ActivityDetailAppInner;)Lcom/yingyonghui/market/model/o;

    move-result-object v1

    const-string v2, "snapshotUrls"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yingyonghui/market/model/o;->C:[Ljava/lang/String;

    .line 199
    iget-object v1, p0, Lcom/yingyonghui/market/ej;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailAppInner;->b(Lcom/yingyonghui/market/ActivityDetailAppInner;)Lcom/yingyonghui/market/model/o;

    move-result-object v1

    const-string v2, "iconUrl"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yingyonghui/market/model/o;->f:Ljava/lang/String;

    .line 200
    iget-object v1, p0, Lcom/yingyonghui/market/ej;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    iget-object v2, p0, Lcom/yingyonghui/market/ej;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityDetailAppInner;->b(Lcom/yingyonghui/market/ActivityDetailAppInner;)Lcom/yingyonghui/market/model/o;

    move-result-object v2

    iget v2, v2, Lcom/yingyonghui/market/model/o;->e:I

    invoke-static {v1, v2}, Lcom/yingyonghui/market/ActivityDetailAppInner;->a(Lcom/yingyonghui/market/ActivityDetailAppInner;I)I

    .line 202
    iget-object v1, p0, Lcom/yingyonghui/market/ej;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    const-string v2, "page"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailAppInner;->a(Ljava/lang/String;)Lcom/yingyonghui/market/log/m;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yingyonghui/market/ActivityDetailAppInner;->a(Lcom/yingyonghui/market/ActivityDetailAppInner;Lcom/yingyonghui/market/log/m;)Lcom/yingyonghui/market/log/m;

    .line 203
    iget-object v0, p0, Lcom/yingyonghui/market/ej;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailAppInner;->c(Lcom/yingyonghui/market/ActivityDetailAppInner;)V

    .line 204
    iget-object v0, p0, Lcom/yingyonghui/market/ej;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailAppInner;->d(Lcom/yingyonghui/market/ActivityDetailAppInner;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/yingyonghui/market/ej;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailAppInner;->e(Lcom/yingyonghui/market/ActivityDetailAppInner;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method
