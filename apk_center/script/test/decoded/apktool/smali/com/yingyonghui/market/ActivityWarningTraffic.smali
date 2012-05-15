.class public Lcom/yingyonghui/market/ActivityWarningTraffic;
.super Landroid/app/Activity;
.source "ActivityWarningTraffic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/yingyonghui/market/model/q;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/yingyonghui/market/ActivityWarningTraffic;->a:Lcom/yingyonghui/market/model/q;

    .line 17
    iput-object v0, p0, Lcom/yingyonghui/market/ActivityWarningTraffic;->b:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/yingyonghui/market/ActivityWarningTraffic;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b00bb

    if-ne v0, v1, :cond_0

    .line 58
    invoke-static {p0}, Lcom/yingyonghui/market/util/t;->a(Landroid/content/Context;)Lcom/yingyonghui/market/util/t;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityWarningTraffic;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityWarningTraffic;->a:Lcom/yingyonghui/market/model/q;

    iget-object v2, v2, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityWarningTraffic;->a:Lcom/yingyonghui/market/model/q;

    iget-object v3, v3, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/yingyonghui/market/ActivityWarningTraffic;->a:Lcom/yingyonghui/market/model/q;

    iget-object v4, v4, Lcom/yingyonghui/market/model/q;->G:Ljava/lang/String;

    iget-object v5, p0, Lcom/yingyonghui/market/ActivityWarningTraffic;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/yingyonghui/market/ActivityWarningTraffic;->a:Lcom/yingyonghui/market/model/q;

    iget-object v6, v6, Lcom/yingyonghui/market/model/q;->f:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/yingyonghui/market/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_0
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityWarningTraffic;->finish()V

    .line 63
    return-void

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityWarningTraffic;->setContentView(I)V

    .line 26
    new-instance v0, Lcom/yingyonghui/market/model/q;

    invoke-direct {v0}, Lcom/yingyonghui/market/model/q;-><init>()V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityWarningTraffic;->a:Lcom/yingyonghui/market/model/q;

    .line 28
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityWarningTraffic;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityWarningTraffic;->a:Lcom/yingyonghui/market/model/q;

    const-string v2, "_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/yingyonghui/market/model/q;->e:I

    .line 32
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityWarningTraffic;->a:Lcom/yingyonghui/market/model/q;

    const-string v2, "pkgName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    .line 33
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityWarningTraffic;->a:Lcom/yingyonghui/market/model/q;

    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    .line 34
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityWarningTraffic;->a:Lcom/yingyonghui/market/model/q;

    const-string v2, "size"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/yingyonghui/market/model/q;->o:I

    .line 35
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityWarningTraffic;->a:Lcom/yingyonghui/market/model/q;

    const-string v2, "iconUrl"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yingyonghui/market/model/q;->f:Ljava/lang/String;

    .line 37
    const-string v1, "channel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/ActivityWarningTraffic;->b:Ljava/lang/String;

    .line 38
    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/ActivityWarningTraffic;->c:Ljava/lang/String;

    .line 39
    const-string v1, "downloadUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityWarningTraffic;->d:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityWarningTraffic;->a:Lcom/yingyonghui/market/model/q;

    iget-object v0, v0, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityWarningTraffic;->a:Lcom/yingyonghui/market/model/q;

    iget-object v0, v0, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 42
    const v0, 0x7f0b00ad

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityWarningTraffic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 43
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityWarningTraffic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/yingyonghui/market/ActivityWarningTraffic;->a:Lcom/yingyonghui/market/model/q;

    iget-object v5, v5, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/yingyonghui/market/ActivityWarningTraffic;->a:Lcom/yingyonghui/market/model/q;

    iget v5, v5, Lcom/yingyonghui/market/model/q;->o:I

    int-to-long v5, v5

    invoke-static {p0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :cond_0
    const v0, 0x7f0b00bb

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityWarningTraffic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 49
    const v1, 0x7f0b00bc

    invoke-virtual {p0, v1}, Lcom/yingyonghui/market/ActivityWarningTraffic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 50
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method
