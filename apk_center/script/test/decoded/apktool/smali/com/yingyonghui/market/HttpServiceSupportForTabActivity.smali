.class public Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;
.super Landroid/app/TabActivity;
.source "HttpServiceSupportForTabActivity.java"


# instance fields
.field protected a:Lcom/yingyonghui/market/online/e;

.field protected b:Landroid/os/Handler;

.field private c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->c:Ljava/lang/Integer;

    return-object p1
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 103
    const v0, 0xc350

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(Landroid/os/Message;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "checkbox_screen_lock"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->setRequestedOrientation(I)V

    .line 36
    :goto_0
    invoke-static {p0}, Lcom/yingyonghui/market/online/e;->a(Landroid/content/Context;)Lcom/yingyonghui/market/online/e;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->a:Lcom/yingyonghui/market/online/e;

    .line 39
    new-instance v0, Lcom/yingyonghui/market/ck;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/ck;-><init>(Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;)V

    iput-object v0, p0, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->b:Landroid/os/Handler;

    .line 53
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 67
    packed-switch p1, :pswitch_data_0

    .line 95
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 69
    :pswitch_0
    invoke-virtual {p0}, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 70
    if-nez v0, :cond_0

    move-object v0, p0

    .line 73
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

    new-instance v2, Lcom/yingyonghui/market/cl;

    invoke-direct {v2, p0}, Lcom/yingyonghui/market/cl;-><init>(Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09007a

    new-instance v2, Lcom/yingyonghui/market/cj;

    invoke-direct {v2, p0}, Lcom/yingyonghui/market/cj;-><init>(Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0xc350
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 58
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "checkbox_screen_lock"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->setRequestedOrientation(I)V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method
