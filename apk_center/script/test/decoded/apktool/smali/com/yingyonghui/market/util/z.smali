.class public final Lcom/yingyonghui/market/util/z;
.super Ljava/lang/Object;
.source "DialogHandler.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/yingyonghui/market/util/x;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/util/x;-><init>(Lcom/yingyonghui/market/util/z;)V

    iput-object v0, p0, Lcom/yingyonghui/market/util/z;->b:Landroid/os/Handler;

    .line 53
    iput-object p1, p0, Lcom/yingyonghui/market/util/z;->a:Landroid/app/Activity;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/market/util/z;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yingyonghui/market/util/z;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 57
    packed-switch p1, :pswitch_data_0

    move-object v0, v2

    .line 62
    :goto_0
    return-object v0

    .line 59
    :pswitch_0
    iget-object v0, p0, Lcom/yingyonghui/market/util/z;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030061

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0b013e

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yingyonghui/market/util/z;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/yingyonghui/market/MarketApplication;

    invoke-virtual {v1}, Lcom/yingyonghui/market/MarketApplication;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/yingyonghui/market/util/z;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090058

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090054

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090055

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public final a(ILandroid/app/Dialog;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 66
    packed-switch p1, :pswitch_data_0

    .line 71
    :goto_0
    return-void

    .line 68
    :pswitch_0
    check-cast p2, Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/yingyonghui/market/util/z;->b:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/util/z;->b:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/yingyonghui/market/util/z;->b:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/yingyonghui/market/util/z;->a:Landroid/app/Activity;

    const v5, 0x104000a

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    const/4 v0, -0x2

    iget-object v3, p0, Lcom/yingyonghui/market/util/z;->a:Landroid/app/Activity;

    const/high16 v4, 0x104

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v3, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    invoke-virtual {p2, v1}, Landroid/app/AlertDialog;->setCancelMessage(Landroid/os/Message;)V

    invoke-virtual {p2, v2}, Landroid/app/AlertDialog;->setDismissMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/yingyonghui/market/util/z;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/yingyonghui/market/by;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yingyonghui/market/provider/k;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/yingyonghui/market/provider/k;

    move-result-object v0

    .line 107
    if-nez v0, :cond_0

    .line 108
    sget-object v0, Lcom/yingyonghui/market/provider/m;->a:Lcom/yingyonghui/market/provider/m;

    .line 113
    :goto_0
    invoke-static {v0}, Lcom/yingyonghui/market/provider/k;->b(Lcom/yingyonghui/market/provider/m;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/yingyonghui/market/util/z;->a:Landroid/app/Activity;

    const v1, 0x7f090062

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/GlobalUtil;->b(Landroid/content/Context;I)V

    .line 118
    :goto_1
    return-void

    .line 110
    :cond_0
    invoke-virtual {v0}, Lcom/yingyonghui/market/provider/k;->d()Lcom/yingyonghui/market/provider/m;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "_id"

    const/16 v2, 0x270f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "title"

    iget-object v2, p0, Lcom/yingyonghui/market/util/z;->a:Landroid/app/Activity;

    const/high16 v3, 0x7f09

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package"

    sget-object v2, Lcom/yingyonghui/market/by;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "type"

    const-string v2, "update"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "downloadUrl"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/yingyonghui/market/util/z;->a:Landroid/app/Activity;

    const-class v2, Lcom/yingyonghui/market/ActivityAssetPermissions;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/yingyonghui/market/util/z;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
