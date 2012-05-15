.class public Lcom/yingyonghui/market/ActivityCommentsAdd;
.super Lcom/yingyonghui/market/HttpServiceSupportForActivity;
.source "ActivityCommentsAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private c:I

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/RatingBar;

.field private f:Ljava/lang/String;

.field private g:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityCommentsAdd;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsAdd;->g:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0xc8

    .line 134
    invoke-virtual {p0, v3}, Lcom/yingyonghui/market/ActivityCommentsAdd;->dismissDialog(I)V

    .line 136
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/yingyonghui/market/online/b;

    .line 137
    iget v1, v0, Lcom/yingyonghui/market/online/b;->c:I

    .line 138
    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 140
    iget v0, v0, Lcom/yingyonghui/market/online/b;->a:I

    if-ne v0, v3, :cond_1

    .line 141
    const/4 v0, 0x1

    .line 146
    :goto_0
    if-eqz v0, :cond_2

    .line 147
    const v0, 0x7f090021

    invoke-static {p0, v0}, Lcom/yingyonghui/market/util/GlobalUtil;->b(Landroid/content/Context;I)V

    .line 149
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 150
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityCommentsAdd;->e:Landroid/widget/RatingBar;

    invoke-virtual {v1}, Landroid/widget/RatingBar;->getRating()F

    move-result v1

    float-to-int v1, v1

    .line 151
    const-string v2, "rating"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityCommentsAdd;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 153
    const-string v2, "comment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/yingyonghui/market/ActivityCommentsAdd;->setResult(ILandroid/content/Intent;)V

    .line 156
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityCommentsAdd;->finish()V

    .line 161
    :cond_0
    :goto_1
    return-void

    .line 143
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 158
    :cond_2
    const v0, 0x7f090020

    invoke-static {p0, v0}, Lcom/yingyonghui/market/util/GlobalUtil;->b(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method protected final b(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 166
    const/16 v0, 0xc8

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityCommentsAdd;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->b(Landroid/os/Message;)V

    .line 171
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 203
    :goto_0
    return-void

    .line 197
    :sswitch_0
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityCommentsAdd;->finish()V

    goto :goto_0

    .line 200
    :sswitch_1
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsAdd;->e:Landroid/widget/RatingBar;

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    float-to-int v4, v0

    if-nez v4, :cond_0

    const v0, 0x7f090017

    invoke-static {p0, v0}, Lcom/yingyonghui/market/util/GlobalUtil;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsAdd;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yingyonghui/market/util/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityCommentsAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityCommentsAdd;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/GlobalUtil;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v5

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsAdd;->a:Lcom/yingyonghui/market/online/e;

    const/4 v1, 0x0

    iget v2, p0, Lcom/yingyonghui/market/ActivityCommentsAdd;->c:I

    invoke-static {p0}, Lcom/yingyonghui/market/util/q;->a(Landroid/content/Context;)Ljava/lang/String;

    iget-object v6, p0, Lcom/yingyonghui/market/ActivityCommentsAdd;->b:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v6}, Lcom/yingyonghui/market/online/e;->a(IILjava/lang/String;IILandroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityCommentsAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/yingyonghui/market/ActivityCommentsAdd;->c:I

    invoke-static {v1}, Lcom/yingyonghui/market/log/h;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityCommentsAdd;->showDialog(I)V

    goto :goto_0

    .line 194
    :sswitch_data_0
    .sparse-switch
        0x7f0b0002 -> :sswitch_1
        0x7f0b0004 -> :sswitch_0
        0x7f0b0059 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 39
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityCommentsAdd;->requestWindowFeature(I)Z

    .line 42
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityCommentsAdd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yingyonghui/market/ActivityCommentsAdd;->c:I

    .line 43
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityCommentsAdd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pkgName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsAdd;->f:Ljava/lang/String;

    .line 44
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityCommentsAdd;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityCommentsAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsAdd;->g:[Ljava/lang/String;

    .line 48
    const v0, 0x7f0b005b

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityCommentsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09009b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b0005

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityCommentsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/yingyonghui/market/util/q;->a()I

    move-result v1

    if-le v1, v7, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setScrollbarFadingEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const v0, 0x7f0b0008

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityCommentsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsAdd;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/yingyonghui/market/util/q;->a()I

    move-result v0

    if-le v0, v7, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsAdd;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setScrollbarFadingEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityCommentsAdd;->d:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    const v0, 0x7f0b0007

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityCommentsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0006

    invoke-virtual {p0, v1}, Lcom/yingyonghui/market/ActivityCommentsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RatingBar;

    iput-object v1, p0, Lcom/yingyonghui/market/ActivityCommentsAdd;->e:Landroid/widget/RatingBar;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityCommentsAdd;->e:Landroid/widget/RatingBar;

    new-instance v2, Lcom/yingyonghui/market/ad;

    invoke-direct {v2, p0, v0}, Lcom/yingyonghui/market/ad;-><init>(Lcom/yingyonghui/market/ActivityCommentsAdd;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsAdd;->e:Landroid/widget/RatingBar;

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityCommentsAdd;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "rating"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityCommentsAdd;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityCommentsAdd;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "comment"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0059

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityCommentsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0002

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityCommentsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0004

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityCommentsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void

    .line 48
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 177
    packed-switch p1, :pswitch_data_0

    .line 188
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 179
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 180
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 181
    const v1, 0x7f09001e

    invoke-virtual {p0, v1}, Lcom/yingyonghui/market/ActivityCommentsAdd;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 182
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 183
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 184
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method
