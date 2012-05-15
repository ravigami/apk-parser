.class public Lcom/yingyonghui/market/ActivityAssetPermissions;
.super Landroid/app/Activity;
.source "ActivityAssetPermissions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 13

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityAssetPermissions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yingyonghui/market/provider/k;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/yingyonghui/market/provider/k;

    move-result-object v0

    .line 107
    if-nez v0, :cond_1

    .line 108
    sget-object v0, Lcom/yingyonghui/market/provider/m;->a:Lcom/yingyonghui/market/provider/m;

    move-object v12, v0

    .line 113
    :goto_0
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityAssetPermissions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yingyonghui/market/util/GlobalUtil;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 114
    invoke-static {p0}, Lcom/yingyonghui/market/util/t;->a(Landroid/content/Context;)Lcom/yingyonghui/market/util/t;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->j:Ljava/lang/String;

    iget v2, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->c:I

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->e:Ljava/lang/String;

    iget v5, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->f:I

    iget v6, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->h:I

    iget-object v7, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->k:Ljava/lang/String;

    iget-object v8, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->l:Ljava/lang/String;

    iget-object v10, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->g:Ljava/lang/String;

    iget-object v11, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->i:Ljava/lang/String;

    invoke-virtual/range {v0 .. v11}, Lcom/yingyonghui/market/util/t;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {v12}, Lcom/yingyonghui/market/provider/k;->c(Lcom/yingyonghui/market/provider/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->d:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/yingyonghui/market/util/GlobalUtil;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void

    .line 110
    :cond_1
    invoke-virtual {v0}, Lcom/yingyonghui/market/provider/k;->d()Lcom/yingyonghui/market/provider/m;

    move-result-object v0

    move-object v12, v0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 124
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityAssetPermissions;->a()V

    .line 125
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityAssetPermissions;->setResult(I)V

    .line 126
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityAssetPermissions;->finish()V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityAssetPermissions;->setResult(I)V

    .line 129
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityAssetPermissions;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityAssetPermissions;->requestWindowFeature(I)Z

    .line 43
    const v0, 0x103000a

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityAssetPermissions;->setTheme(I)V

    .line 45
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityAssetPermissions;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 46
    const-string v1, "_id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->c:I

    .line 47
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->d:Ljava/lang/String;

    .line 48
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->e:Ljava/lang/String;

    .line 49
    const-string v1, "size"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->f:I

    .line 50
    const-string v1, "promotionId"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->h:I

    .line 51
    const-string v1, "promotionAgent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->k:Ljava/lang/String;

    .line 52
    const-string v1, "promotionDownUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->l:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityAssetPermissions;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "permission"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->m:[Ljava/lang/String;

    .line 54
    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->g:Ljava/lang/String;

    .line 55
    const-string v1, "downloadUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->j:Ljava/lang/String;

    .line 56
    const-string v1, "iconUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->i:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityAssetPermissions;->finish()V

    .line 71
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityAssetPermissions;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityAssetPermissions;->a()V

    .line 65
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityAssetPermissions;->setResult(I)V

    .line 66
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityAssetPermissions;->finish()V

    .line 68
    :cond_1
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityAssetPermissions;->setContentView(I)V

    .line 70
    const v0, 0x7f0b0002

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityAssetPermissions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->a:Landroid/widget/Button;

    const v0, 0x7f0b0004

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityAssetPermissions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->a:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->b:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b005b

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityAssetPermissions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0059

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityAssetPermissions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/yingyonghui/market/cb;

    invoke-direct {v1, p0}, Lcom/yingyonghui/market/cb;-><init>(Lcom/yingyonghui/market/ActivityAssetPermissions;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b009d

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityAssetPermissions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/yingyonghui/market/widget/b;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityAssetPermissions;->m:[Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/yingyonghui/market/widget/b;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    const v2, 0x7f0b009e

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Lcom/yingyonghui/market/widget/b;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method
