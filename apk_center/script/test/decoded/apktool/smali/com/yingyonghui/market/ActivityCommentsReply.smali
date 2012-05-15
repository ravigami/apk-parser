.class public Lcom/yingyonghui/market/ActivityCommentsReply;
.super Lcom/yingyonghui/market/HttpServiceSupportForActivity;
.source "ActivityCommentsReply.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:D

.field private g:J

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/RatingBar;

.field private r:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 159
    if-nez p0, :cond_0

    :try_start_0
    const-string v0, ""

    .line 161
    :goto_0
    return-object v0

    .line 159
    :cond_0
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    invoke-static {p0}, Lcom/yingyonghui/market/util/b;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0xc8

    .line 201
    invoke-virtual {p0, v3}, Lcom/yingyonghui/market/ActivityCommentsReply;->dismissDialog(I)V

    .line 203
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/yingyonghui/market/online/b;

    .line 204
    iget v1, v0, Lcom/yingyonghui/market/online/b;->c:I

    .line 205
    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 207
    iget v0, v0, Lcom/yingyonghui/market/online/b;->a:I

    if-ne v0, v3, :cond_1

    .line 208
    const/4 v0, 0x1

    .line 213
    :goto_0
    if-eqz v0, :cond_2

    .line 214
    const v0, 0x7f090022

    invoke-static {p0, v0}, Lcom/yingyonghui/market/util/GlobalUtil;->b(Landroid/content/Context;I)V

    .line 215
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 216
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->o:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 217
    const-string v2, "comment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/yingyonghui/market/ActivityCommentsReply;->setResult(ILandroid/content/Intent;)V

    .line 220
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityCommentsReply;->finish()V

    .line 225
    :cond_0
    :goto_1
    return-void

    .line 210
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 222
    :cond_2
    const v0, 0x7f090020

    invoke-static {p0, v0}, Lcom/yingyonghui/market/util/GlobalUtil;->b(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method protected final b(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 230
    const/16 v0, 0xc8

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityCommentsReply;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->b(Landroid/os/Message;)V

    .line 235
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 267
    :goto_0
    return-void

    .line 261
    :sswitch_0
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityCommentsReply;->finish()V

    goto :goto_0

    .line 264
    :sswitch_1
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yingyonghui/market/util/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yingyonghui/market/util/b;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090018

    invoke-static {p0, v0}, Lcom/yingyonghui/market/util/GlobalUtil;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityCommentsReply;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yingyonghui/market/util/q;->a(Landroid/content/Context;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityCommentsReply;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/GlobalUtil;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v5

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->a:Lcom/yingyonghui/market/online/e;

    iget v1, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->k:I

    iget v2, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->c:I

    iget-wide v6, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->f:D

    double-to-int v4, v6

    iget-object v6, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->b:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v6}, Lcom/yingyonghui/market/online/e;->a(IILjava/lang/String;IILandroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityCommentsReply;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->k:I

    iget v2, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->c:I

    invoke-static {v1, v2}, Lcom/yingyonghui/market/log/h;->b(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityCommentsReply;->showDialog(I)V

    goto :goto_0

    .line 258
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0002 -> :sswitch_1
        0x7f0b0004 -> :sswitch_0
        0x7f0b0059 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f090105

    const/16 v5, 0x8

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityCommentsReply;->requestWindowFeature(I)Z

    .line 56
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityCommentsReply;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 57
    const-string v1, "_id"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->c:I

    .line 58
    const-string v1, "author"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->d:Ljava/lang/String;

    .line 59
    const-string v1, "deviceName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->e:Ljava/lang/String;

    .line 60
    const-string v1, "rating"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->f:D

    .line 61
    const-string v1, "commentTime"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->g:J

    .line 62
    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->i:Ljava/lang/String;

    .line 63
    const-string v1, "comment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->h:Ljava/lang/String;

    .line 64
    const-string v1, "errorType"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->j:I

    .line 65
    const-string v1, "parentId"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->k:I

    .line 66
    const-string v1, "isDelete"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->m:Z

    .line 67
    const-string v1, "isMine"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->n:Z

    .line 68
    const-string v1, "pkgName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->l:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/yingyonghui/market/util/b;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const v0, 0x7f090082

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityCommentsReply;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->d:Ljava/lang/String;

    .line 74
    :cond_0
    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityCommentsReply;->setContentView(I)V

    .line 75
    const v0, 0x7f0b0090

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityCommentsReply;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->p:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->p:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0b0044

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityCommentsReply;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->q:Landroid/widget/RatingBar;

    const v0, 0x7f0b0094

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityCommentsReply;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->r:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->n:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<font color=\"#01457e\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f090106

    invoke-virtual {p0, v1}, Lcom/yingyonghui/market/ActivityCommentsReply;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->d:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->i:Ljava/lang/String;

    const-string v1, "comment"

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->q:Landroid/widget/RatingBar;

    iget-wide v1, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->f:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->q:Landroid/widget/RatingBar;

    invoke-virtual {v0, v4}, Landroid/widget/RatingBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->p:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<font color=\"#999999\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/yingyonghui/market/util/b;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v6}, Lcom/yingyonghui/market/ActivityCommentsReply;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f0900ff

    invoke-virtual {p0, v2}, Lcom/yingyonghui/market/ActivityCommentsReply;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</font>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->m:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->r:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityCommentsReply;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->r:Landroid/widget/TextView;

    const v1, 0x7f090104

    invoke-virtual {p0, v1}, Lcom/yingyonghui/market/ActivityCommentsReply;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityCommentsReply;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->q:Landroid/widget/RatingBar;

    invoke-virtual {v0, v5}, Landroid/widget/RatingBar;->setVisibility(I)V

    :goto_2
    const v0, 0x7f0b0092

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityCommentsReply;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->g:J

    const-string v3, "yyyy-MM-dd HH:mm"

    invoke-static {v1, v2, v3}, Lcom/yingyonghui/market/util/s;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b005b

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityCommentsReply;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900fd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b0005

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityCommentsReply;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/yingyonghui/market/util/q;->a()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setScrollbarFadingEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_3
    const v0, 0x7f0b0008

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityCommentsReply;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->o:Landroid/widget/TextView;

    invoke-static {}, Lcom/yingyonghui/market/util/q;->a()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setScrollbarFadingEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->o:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_4
    const v0, 0x7f0b0059

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityCommentsReply;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0002

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityCommentsReply;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0004

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityCommentsReply;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void

    .line 75
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<font color=\"black\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->d:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->e:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityCommentsReply;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->i:Ljava/lang/String;

    const-string v1, "error"

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->q:Landroid/widget/RatingBar;

    invoke-virtual {v0, v5}, Landroid/widget/RatingBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->p:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<font color=\"#999999\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/yingyonghui/market/util/b;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v6}, Lcom/yingyonghui/market/ActivityCommentsReply;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f0900fe

    invoke-virtual {p0, v2}, Lcom/yingyonghui/market/ActivityCommentsReply;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</font>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->r:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->j:I

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f09002a

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityCommentsReply;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->h:Ljava/lang/String;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityCommentsReply;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->e:Ljava/lang/String;

    goto :goto_5

    :pswitch_0
    const v0, 0x7f090025

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityCommentsReply;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :pswitch_1
    const v0, 0x7f090026

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityCommentsReply;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :pswitch_2
    const v0, 0x7f090027

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityCommentsReply;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :pswitch_3
    const v0, 0x7f090028

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityCommentsReply;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :pswitch_4
    const v0, 0x7f090029

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityCommentsReply;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->q:Landroid/widget/RatingBar;

    invoke-virtual {v0, v5}, Landroid/widget/RatingBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->p:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<font color=\"#999999\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/yingyonghui/market/util/b;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, v6}, Lcom/yingyonghui/market/ActivityCommentsReply;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f0900fd

    invoke-virtual {p0, v2}, Lcom/yingyonghui/market/ActivityCommentsReply;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</font>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityCommentsReply;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsReply;->e:Ljava/lang/String;

    goto :goto_7

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 241
    packed-switch p1, :pswitch_data_0

    .line 252
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 243
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 244
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 245
    const v1, 0x7f09001e

    invoke-virtual {p0, v1}, Lcom/yingyonghui/market/ActivityCommentsReply;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 246
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 247
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 248
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method
