.class public Lcom/yingyonghui/market/ActivityNewEventDetail;
.super Landroid/app/Activity;
.source "ActivityNewEventDetail.java"


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/view/View;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    new-instance v0, Lcom/yingyonghui/market/h;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/h;-><init>(Lcom/yingyonghui/market/ActivityNewEventDetail;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityNewEventDetail;->e:Landroid/os/Handler;

    .line 151
    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityNewEventDetail;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityNewEventDetail;->b:Landroid/view/View;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 199
    iget v0, p0, Lcom/yingyonghui/market/ActivityNewEventDetail;->d:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 200
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 201
    const-class v1, Lcom/yingyonghui/market/ActivityNewEvents;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 203
    const-string v1, "label"

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityNewEventDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090175

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityNewEventDetail;->startActivity(Landroid/content/Intent;)V

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityNewEventDetail;->finish()V

    .line 207
    return-void
.end method

.method static synthetic b(Lcom/yingyonghui/market/ActivityNewEventDetail;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityNewEventDetail;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic c(Lcom/yingyonghui/market/ActivityNewEventDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityNewEventDetail;->a()V

    return-void
.end method

.method static synthetic d(Lcom/yingyonghui/market/ActivityNewEventDetail;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityNewEventDetail;->e:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityNewEventDetail;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 195
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 228
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 229
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 238
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 231
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 232
    const-class v1, Lcom/yingyonghui/market/ActivityTab4Search;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityNewEventDetail;->startActivity(Landroid/content/Intent;)V

    .line 234
    const/4 v0, 0x1

    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0, v2}, Lcom/yingyonghui/market/ActivityNewEventDetail;->requestWindowFeature(I)Z

    .line 61
    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityNewEventDetail;->setContentView(I)V

    .line 63
    const v0, 0x7f0b0059

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityNewEventDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yingyonghui/market/i;

    invoke-direct {v1, p0}, Lcom/yingyonghui/market/i;-><init>(Lcom/yingyonghui/market/ActivityNewEventDetail;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00d5

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityNewEventDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityNewEventDetail;->b:Landroid/view/View;

    const v0, 0x7f0b00d4

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityNewEventDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityNewEventDetail;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityNewEventDetail;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityNewEventDetail;->a:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityNewEventDetail;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityNewEventDetail;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/yingyonghui/market/j;

    invoke-direct {v1, p0}, Lcom/yingyonghui/market/j;-><init>(Lcom/yingyonghui/market/ActivityNewEventDetail;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityNewEventDetail;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/yingyonghui/market/k;

    invoke-direct {v1, p0}, Lcom/yingyonghui/market/k;-><init>(Lcom/yingyonghui/market/ActivityNewEventDetail;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 64
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityNewEventDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/yingyonghui/market/ActivityNewEventDetail;->a:Landroid/webkit/WebView;

    invoke-virtual {p0, v2, v1}, Lcom/yingyonghui/market/ActivityNewEventDetail;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 68
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/ActivityNewEventDetail;->c:Ljava/lang/String;

    .line 69
    const-string v1, "fromPage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yingyonghui/market/ActivityNewEventDetail;->d:I

    .line 72
    :cond_0
    const v0, 0x7f0b005b

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityNewEventDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 73
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityNewEventDetail;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 211
    invoke-static {p1}, Lcom/yingyonghui/market/util/p;->a(Landroid/view/Menu;)Z

    .line 212
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x1

    .line 183
    if-ne p1, v2, :cond_0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityNewEventDetail;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityNewEventDetail;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    .line 190
    :goto_0
    return v0

    .line 186
    :cond_0
    if-ne p1, v2, :cond_1

    .line 187
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityNewEventDetail;->a()V

    goto :goto_0

    .line 190
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 217
    invoke-static {p0, p1}, Lcom/yingyonghui/market/util/p;->a(Landroid/app/Activity;Landroid/view/MenuItem;)Z

    .line 218
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 85
    invoke-static {p0}, Lcom/a/a/c;->a(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 79
    invoke-static {p0}, Lcom/a/a/c;->b(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method
