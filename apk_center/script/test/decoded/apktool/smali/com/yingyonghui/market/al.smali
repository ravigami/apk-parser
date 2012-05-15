.class final Lcom/yingyonghui/market/al;
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
    .line 398
    iput-object p1, p0, Lcom/yingyonghui/market/al;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 401
    iget-object v0, p0, Lcom/yingyonghui/market/al;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivitySplash;->a(Lcom/yingyonghui/market/ActivitySplash;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 402
    iget-object v0, p0, Lcom/yingyonghui/market/al;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivitySplash;->l(Lcom/yingyonghui/market/ActivitySplash;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/market/al;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivitySplash;->l(Lcom/yingyonghui/market/ActivitySplash;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/yingyonghui/market/al;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivitySplash;->l(Lcom/yingyonghui/market/ActivitySplash;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 405
    :cond_0
    return-void
.end method
