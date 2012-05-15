.class public Lcom/yingyonghui/market/install/UninstallAppProgress;
.super Landroid/app/Activity;
.source "UninstallAppProgress.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/content/pm/ApplicationInfo;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/view/View;

.field private volatile f:I

.field private final g:I

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/yingyonghui/market/install/UninstallAppProgress;->f:I

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Lcom/yingyonghui/market/install/UninstallAppProgress;->g:I

    .line 30
    new-instance v0, Lcom/yingyonghui/market/install/d;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/install/d;-><init>(Lcom/yingyonghui/market/install/UninstallAppProgress;)V

    iput-object v0, p0, Lcom/yingyonghui/market/install/UninstallAppProgress;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/market/install/UninstallAppProgress;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput p1, p0, Lcom/yingyonghui/market/install/UninstallAppProgress;->f:I

    return p1
.end method

.method static synthetic a(Lcom/yingyonghui/market/install/UninstallAppProgress;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yingyonghui/market/install/UninstallAppProgress;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/yingyonghui/market/install/UninstallAppProgress;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yingyonghui/market/install/UninstallAppProgress;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic c(Lcom/yingyonghui/market/install/UninstallAppProgress;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yingyonghui/market/install/UninstallAppProgress;->e:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 111
    iget v0, p0, Lcom/yingyonghui/market/install/UninstallAppProgress;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 112
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    .line 114
    :cond_0
    iget v0, p0, Lcom/yingyonghui/market/install/UninstallAppProgress;->f:I

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/install/UninstallAppProgress;->setResult(I)V

    .line 117
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/yingyonghui/market/install/UninstallAppProgress;->c:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 104
    iget v0, p0, Lcom/yingyonghui/market/install/UninstallAppProgress;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/install/UninstallAppProgress;->setResult(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/yingyonghui/market/install/UninstallAppProgress;->finish()V

    .line 106
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0, v3}, Lcom/yingyonghui/market/install/UninstallAppProgress;->requestWindowFeature(I)Z

    .line 54
    const v0, 0x103000a

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/install/UninstallAppProgress;->setTheme(I)V

    .line 55
    const v0, 0x7f030060

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/install/UninstallAppProgress;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/yingyonghui/market/install/UninstallAppProgress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 57
    const-string v1, "application_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/yingyonghui/market/install/UninstallAppProgress;->a:Landroid/content/pm/ApplicationInfo;

    .line 58
    const v0, 0x7f0b005b

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/install/UninstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yingyonghui/market/install/UninstallAppProgress;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0059

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/install/UninstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/yingyonghui/market/install/e;

    invoke-direct {v1, p0}, Lcom/yingyonghui/market/install/e;-><init>(Lcom/yingyonghui/market/install/UninstallAppProgress;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00cf

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/install/UninstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yingyonghui/market/install/UninstallAppProgress;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yingyonghui/market/install/UninstallAppProgress;->b:Landroid/widget/TextView;

    const v1, 0x7f0900b5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b00d0

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/install/UninstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/yingyonghui/market/install/UninstallAppProgress;->d:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/yingyonghui/market/install/UninstallAppProgress;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const v0, 0x7f0b0001

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/install/UninstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/install/UninstallAppProgress;->e:Landroid/view/View;

    const v0, 0x7f0b0002

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/install/UninstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yingyonghui/market/install/UninstallAppProgress;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/yingyonghui/market/install/UninstallAppProgress;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/yingyonghui/market/install/UninstallAppProgress;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p0}, Lcom/yingyonghui/market/install/IWorksPackageManager;->a(Landroid/content/Context;)Lcom/yingyonghui/market/install/IWorksPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/install/UninstallAppProgress;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/yingyonghui/market/install/UninstallAppProgress;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/yingyonghui/market/install/IWorksPackageManager;->a(Ljava/lang/String;Landroid/os/Handler;)Z

    .line 59
    return-void
.end method
