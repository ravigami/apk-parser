.class public Lcom/yingyonghui/market/ActivityWarningExit;
.super Landroid/app/Activity;
.source "ActivityWarningExit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 38
    const v2, 0x7f0b00c1

    if-ne v1, v2, :cond_5

    .line 39
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/yingyonghui/market/ActivityWarningExit;->setResult(I)V

    .line 42
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v1, v2

    const/16 v3, 0x14

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "log"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "compress"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Yingyonghui"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    array-length v2, v1

    const/16 v3, 0x14

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 46
    :cond_3
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityWarningExit;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Confirm"

    invoke-static {v0, v1}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityWarningExit;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;)V

    .line 54
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityWarningExit;->finish()V

    .line 55
    return-void

    .line 47
    :cond_5
    const v2, 0x7f0b00c2

    if-ne v1, v2, :cond_4

    .line 48
    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityWarningExit;->setResult(I)V

    .line 49
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityWarningExit;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Cancel"

    invoke-static {v0, v1}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityWarningExit;->requestWindowFeature(I)Z

    .line 24
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityWarningExit;->setContentView(I)V

    .line 26
    const v0, 0x7f0b00c1

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityWarningExit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 27
    const v1, 0x7f0b00c2

    invoke-virtual {p0, v1}, Lcom/yingyonghui/market/ActivityWarningExit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 29
    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 31
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 93
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 94
    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
