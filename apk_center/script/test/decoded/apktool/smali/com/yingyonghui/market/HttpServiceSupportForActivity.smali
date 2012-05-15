.class public Lcom/yingyonghui/market/HttpServiceSupportForActivity;
.super Landroid/app/Activity;
.source "HttpServiceSupportForActivity.java"


# instance fields
.field protected a:Lcom/yingyonghui/market/online/e;

.field protected b:Landroid/os/Handler;

.field private c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/market/HttpServiceSupportForActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->c:Ljava/lang/Integer;

    return-object p1
.end method


# virtual methods
.method protected a(Landroid/os/Message;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    return-void
.end method

.method protected b(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    const v0, 0xc350

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-static {p0}, Lcom/yingyonghui/market/online/e;->a(Landroid/content/Context;)Lcom/yingyonghui/market/online/e;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->a:Lcom/yingyonghui/market/online/e;

    .line 34
    new-instance v0, Lcom/yingyonghui/market/cg;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/cg;-><init>(Lcom/yingyonghui/market/HttpServiceSupportForActivity;)V

    iput-object v0, p0, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->b:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 57
    packed-switch p1, :pswitch_data_0

    .line 85
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 59
    :pswitch_0
    invoke-virtual {p0}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 60
    if-nez v0, :cond_0

    move-object v0, p0

    .line 63
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x1080027

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090076

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090077

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090080

    new-instance v2, Lcom/yingyonghui/market/ci;

    invoke-direct {v2, p0}, Lcom/yingyonghui/market/ci;-><init>(Lcom/yingyonghui/market/HttpServiceSupportForActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09007a

    new-instance v2, Lcom/yingyonghui/market/ch;

    invoke-direct {v2, p0}, Lcom/yingyonghui/market/ch;-><init>(Lcom/yingyonghui/market/HttpServiceSupportForActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0xc350
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 53
    return-void
.end method
