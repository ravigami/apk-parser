.class final Lcom/yingyonghui/market/am;
.super Ljava/lang/Object;
.source "ActivitySplash.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivitySplash;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivitySplash;)V
    .locals 0
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/yingyonghui/market/am;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 391
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Lcom/yingyonghui/market/am;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-virtual {v1, v0}, Lcom/yingyonghui/market/ActivitySplash;->startActivity(Landroid/content/Intent;)V

    .line 393
    iget-object v0, p0, Lcom/yingyonghui/market/am;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivitySplash;->l(Lcom/yingyonghui/market/ActivitySplash;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/market/am;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivitySplash;->l(Lcom/yingyonghui/market/ActivitySplash;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/yingyonghui/market/am;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivitySplash;->l(Lcom/yingyonghui/market/ActivitySplash;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 396
    :cond_0
    return-void
.end method
