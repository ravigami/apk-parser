.class public Lcom/yingyonghui/market/install/UninstallerActivity;
.super Landroid/app/Activity;
.source "UninstallerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/content/pm/PackageManager;

.field private b:Landroid/content/pm/ApplicationInfo;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/yingyonghui/market/install/UninstallerActivity;->finish()V

    .line 176
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/yingyonghui/market/install/UninstallerActivity;->c:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 167
    const-string v0, "package"

    iget-object v1, p0, Lcom/yingyonghui/market/install/UninstallerActivity;->b:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/yingyonghui/market/install/UninstallerActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/install/UninstallerActivity;->setResult(I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/yingyonghui/market/install/UninstallerActivity;->finish()V

    .line 171
    :cond_0
    :goto_1
    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/install/UninstallerActivity;->d:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/yingyonghui/market/install/UninstallerActivity;->finish()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/yingyonghui/market/install/UninstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 106
    const-string v3, "_id"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/yingyonghui/market/install/UninstallerActivity;->e:I

    .line 107
    const-string v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 108
    if-eqz v2, :cond_0

    iget v3, p0, Lcom/yingyonghui/market/install/UninstallerActivity;->e:I

    if-nez v3, :cond_1

    .line 109
    :cond_0
    const-string v0, "UninstallerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid package name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0, v1}, Lcom/yingyonghui/market/install/UninstallerActivity;->showDialog(I)V

    .line 148
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/yingyonghui/market/install/UninstallerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/yingyonghui/market/install/UninstallerActivity;->a:Landroid/content/pm/PackageManager;

    .line 117
    :try_start_0
    iget-object v3, p0, Lcom/yingyonghui/market/install/UninstallerActivity;->a:Landroid/content/pm/PackageManager;

    const/16 v4, 0x2000

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/yingyonghui/market/install/UninstallerActivity;->b:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_1
    iget-object v3, p0, Lcom/yingyonghui/market/install/UninstallerActivity;->b:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_2

    if-eqz v0, :cond_3

    .line 124
    :cond_2
    const-string v0, "UninstallerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid application:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0, v1}, Lcom/yingyonghui/market/install/UninstallerActivity;->showDialog(I)V

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 127
    :cond_3
    invoke-virtual {p0, v1}, Lcom/yingyonghui/market/install/UninstallerActivity;->requestWindowFeature(I)Z

    .line 128
    const v0, 0x103000a

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/install/UninstallerActivity;->setTheme(I)V

    .line 130
    const v0, 0x7f03005f

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/install/UninstallerActivity;->setContentView(I)V

    .line 134
    const v0, 0x7f0b013d

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/install/UninstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 135
    iget-object v1, p0, Lcom/yingyonghui/market/install/UninstallerActivity;->b:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v1, :cond_4

    .line 137
    const v1, 0x7f0900b4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 142
    :goto_2
    const v0, 0x7f0b005b

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/install/UninstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yingyonghui/market/install/UninstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0059

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/install/UninstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/yingyonghui/market/install/f;

    invoke-direct {v1, p0}, Lcom/yingyonghui/market/install/f;-><init>(Lcom/yingyonghui/market/install/UninstallerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    const v0, 0x7f0b0002

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/install/UninstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yingyonghui/market/install/UninstallerActivity;->c:Landroid/widget/Button;

    .line 144
    const v0, 0x7f0b0004

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/install/UninstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yingyonghui/market/install/UninstallerActivity;->d:Landroid/widget/Button;

    .line 145
    iget-object v0, p0, Lcom/yingyonghui/market/install/UninstallerActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/yingyonghui/market/install/UninstallerActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 140
    :cond_4
    const v1, 0x7f0900b3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0900b0

    const v4, 0x1080027

    .line 45
    packed-switch p1, :pswitch_data_0

    .line 74
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 47
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900b1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900b2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/yingyonghui/market/install/UninstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/yingyonghui/market/install/h;

    invoke-direct {v2, p0}, Lcom/yingyonghui/market/install/h;-><init>(Lcom/yingyonghui/market/install/UninstallerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 59
    :pswitch_1
    iget-object v0, p0, Lcom/yingyonghui/market/install/UninstallerActivity;->a:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/yingyonghui/market/install/UninstallerActivity;->b:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 60
    const v1, 0x7f0900b8

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/yingyonghui/market/install/UninstallerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0900b7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/yingyonghui/market/install/UninstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/yingyonghui/market/install/g;

    invoke-direct {v2, p0}, Lcom/yingyonghui/market/install/g;-><init>(Lcom/yingyonghui/market/install/UninstallerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
