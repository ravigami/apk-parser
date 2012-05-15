.class public Lcom/yingyonghui/market/install/InstallAppProgress;
.super Landroid/app/Activity;
.source "InstallAppProgress.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/ProgressBar;

.field private d:Landroid/view/View;

.field private volatile e:I

.field private f:Ljava/io/File;

.field private g:Ljava/lang/String;

.field private final h:I

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/yingyonghui/market/install/InstallAppProgress;->e:I

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/yingyonghui/market/install/InstallAppProgress;->h:I

    .line 37
    new-instance v0, Lcom/yingyonghui/market/install/a;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/install/a;-><init>(Lcom/yingyonghui/market/install/InstallAppProgress;)V

    iput-object v0, p0, Lcom/yingyonghui/market/install/InstallAppProgress;->i:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/market/install/InstallAppProgress;)I
    .locals 1
    .parameter

    .prologue
    .line 26
    iget v0, p0, Lcom/yingyonghui/market/install/InstallAppProgress;->e:I

    return v0
.end method

.method static synthetic a(Lcom/yingyonghui/market/install/InstallAppProgress;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput p1, p0, Lcom/yingyonghui/market/install/InstallAppProgress;->e:I

    return p1
.end method

.method static synthetic b(Lcom/yingyonghui/market/install/InstallAppProgress;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yingyonghui/market/install/InstallAppProgress;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/yingyonghui/market/install/InstallAppProgress;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yingyonghui/market/install/InstallAppProgress;->c:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic d(Lcom/yingyonghui/market/install/InstallAppProgress;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yingyonghui/market/install/InstallAppProgress;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/yingyonghui/market/install/InstallAppProgress;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yingyonghui/market/install/InstallAppProgress;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/yingyonghui/market/install/InstallAppProgress;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yingyonghui/market/install/InstallAppProgress;->f:Ljava/io/File;

    return-object v0
.end method

.method static synthetic g(Lcom/yingyonghui/market/install/InstallAppProgress;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yingyonghui/market/install/InstallAppProgress;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 139
    iget v0, p0, Lcom/yingyonghui/market/install/InstallAppProgress;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 140
    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    .line 142
    :cond_0
    iget v0, p0, Lcom/yingyonghui/market/install/InstallAppProgress;->e:I

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/install/InstallAppProgress;->setResult(I)V

    .line 145
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yingyonghui/market/install/InstallAppProgress;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 132
    iget v0, p0, Lcom/yingyonghui/market/install/InstallAppProgress;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/install/InstallAppProgress;->setResult(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/yingyonghui/market/install/InstallAppProgress;->finish()V

    .line 134
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/yingyonghui/market/install/InstallAppProgress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 61
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/install/InstallAppProgress;->g:Ljava/lang/String;

    .line 62
    const-string v1, "pkgFile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/yingyonghui/market/install/InstallAppProgress;->f:Ljava/io/File;

    .line 63
    invoke-virtual {p0, v3}, Lcom/yingyonghui/market/install/InstallAppProgress;->requestWindowFeature(I)Z

    const v0, 0x103000a

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/install/InstallAppProgress;->setTheme(I)V

    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/install/InstallAppProgress;->setContentView(I)V

    const v0, 0x7f0b005b

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/install/InstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yingyonghui/market/install/InstallAppProgress;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0059

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/install/InstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/yingyonghui/market/install/c;

    invoke-direct {v1, p0}, Lcom/yingyonghui/market/install/c;-><init>(Lcom/yingyonghui/market/install/InstallAppProgress;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00cf

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/install/InstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yingyonghui/market/install/InstallAppProgress;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yingyonghui/market/install/InstallAppProgress;->a:Landroid/widget/TextView;

    const v1, 0x7f090014

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b00d0

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/install/InstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/yingyonghui/market/install/InstallAppProgress;->c:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/yingyonghui/market/install/InstallAppProgress;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const v0, 0x7f0b0001

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/install/InstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/install/InstallAppProgress;->d:Landroid/view/View;

    const v0, 0x7f0b0002

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/install/InstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yingyonghui/market/install/InstallAppProgress;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/yingyonghui/market/install/InstallAppProgress;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/yingyonghui/market/install/InstallAppProgress;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/yingyonghui/market/install/InstallAppProgress;->g:Ljava/lang/String;

    sget-object v1, Lcom/yingyonghui/market/by;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09007f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090107

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090079

    new-instance v2, Lcom/yingyonghui/market/install/b;

    invoke-direct {v2, p0}, Lcom/yingyonghui/market/install/b;-><init>(Lcom/yingyonghui/market/install/InstallAppProgress;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-static {p0}, Lcom/yingyonghui/market/install/IWorksPackageManager;->a(Landroid/content/Context;)Lcom/yingyonghui/market/install/IWorksPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/install/InstallAppProgress;->f:Ljava/io/File;

    iget-object v2, p0, Lcom/yingyonghui/market/install/InstallAppProgress;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/yingyonghui/market/install/InstallAppProgress;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yingyonghui/market/install/IWorksPackageManager;->a(Ljava/io/File;Ljava/lang/String;Landroid/os/Handler;)Z

    goto :goto_0
.end method
