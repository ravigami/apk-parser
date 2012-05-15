.class public Lcom/yingyonghui/market/ActivitySplash;
.super Lcom/yingyonghui/market/HttpServiceSupportForActivity;
.source "ActivitySplash.java"


# static fields
.field private static final n:[Ljava/lang/String;


# instance fields
.field private c:Lcom/yingyonghui/market/util/z;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Z

.field private j:Z

.field private k:J

.field private l:J

.field private m:Landroid/app/AlertDialog;

.field private o:[I

.field private p:[I

.field private q:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pkgname"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "version_code"

    aput-object v2, v0, v1

    sput-object v0, Lcom/yingyonghui/market/ActivitySplash;->n:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x5

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;-><init>()V

    .line 70
    iput v0, p0, Lcom/yingyonghui/market/ActivitySplash;->h:I

    .line 71
    iput-boolean v0, p0, Lcom/yingyonghui/market/ActivitySplash;->i:Z

    .line 74
    iput-boolean v0, p0, Lcom/yingyonghui/market/ActivitySplash;->j:Z

    .line 76
    iput-wide v2, p0, Lcom/yingyonghui/market/ActivitySplash;->k:J

    .line 77
    iput-wide v2, p0, Lcom/yingyonghui/market/ActivitySplash;->l:J

    .line 89
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivitySplash;->o:[I

    .line 93
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/yingyonghui/market/ActivitySplash;->p:[I

    .line 214
    new-instance v0, Lcom/yingyonghui/market/au;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/au;-><init>(Lcom/yingyonghui/market/ActivitySplash;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivitySplash;->q:Landroid/os/Handler;

    return-void

    .line 89
    nop

    :array_0
    .array-data 0x4
        0x5t 0x1t 0xbt 0x7ft
        0x6t 0x1t 0xbt 0x7ft
        0x7t 0x1t 0xbt 0x7ft
        0x8t 0x1t 0xbt 0x7ft
        0x9t 0x1t 0xbt 0x7ft
    .end array-data

    .line 93
    :array_1
    .array-data 0x4
        0x88t 0x0t 0x2t 0x7ft
        0x88t 0x0t 0x2t 0x7ft
        0x88t 0x0t 0x2t 0x7ft
        0x88t 0x0t 0x2t 0x7ft
        0x88t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivitySplash;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/yingyonghui/market/ActivitySplash;->k:J

    return-wide p1
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivitySplash;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yingyonghui/market/ActivitySplash;->q:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/yingyonghui/market/ActivitySplash;->n:[Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/yingyonghui/market/ActivitySplash;->m:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/market/ActivitySplash;->m:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/yingyonghui/market/ActivitySplash;->m:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yingyonghui/market/ActivitySplash;->i:Z

    .line 424
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/yingyonghui/market/ActivitySplash;)Z
    .locals 1
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yingyonghui/market/ActivitySplash;->i:Z

    return v0
.end method

.method static synthetic c(Lcom/yingyonghui/market/ActivitySplash;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivitySplash;->b()V

    return-void
.end method

.method static synthetic d(Lcom/yingyonghui/market/ActivitySplash;)Z
    .locals 5
    .parameter

    .prologue
    .line 50
    const-string v0, "last_launch_time"

    const-wide/16 v1, -0x64

    invoke-static {p0, v0, v1, v2}, Lcom/yingyonghui/market/util/l;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/yingyonghui/market/ActivitySplash;->k:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2, v3}, Lcom/yingyonghui/market/util/s;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic e(Lcom/yingyonghui/market/ActivitySplash;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    invoke-static {p0}, Lcom/yingyonghui/market/util/g;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivitySplash;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    const/16 v3, 0xc

    if-ne v0, v3, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method static synthetic f(Lcom/yingyonghui/market/ActivitySplash;)J
    .locals 2
    .parameter

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/yingyonghui/market/ActivitySplash;->k:J

    return-wide v0
.end method

.method static synthetic g(Lcom/yingyonghui/market/ActivitySplash;)I
    .locals 2
    .parameter

    .prologue
    .line 50
    iget v0, p0, Lcom/yingyonghui/market/ActivitySplash;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yingyonghui/market/ActivitySplash;->h:I

    return v0
.end method

.method static synthetic h(Lcom/yingyonghui/market/ActivitySplash;)[I
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yingyonghui/market/ActivitySplash;->o:[I

    return-object v0
.end method

.method static synthetic i(Lcom/yingyonghui/market/ActivitySplash;)I
    .locals 1
    .parameter

    .prologue
    .line 50
    iget v0, p0, Lcom/yingyonghui/market/ActivitySplash;->h:I

    return v0
.end method

.method static synthetic j(Lcom/yingyonghui/market/ActivitySplash;)[I
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yingyonghui/market/ActivitySplash;->p:[I

    return-object v0
.end method

.method static synthetic k(Lcom/yingyonghui/market/ActivitySplash;)V
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x1000

    .line 50
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivitySplash;->j:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/yingyonghui/market/ActivityMain;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.yingyonghui.market.action_no_update_response"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivitySplash;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivitySplash;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivitySplash;->e:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivitySplash;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/MarketApplication;

    iget-boolean v1, p0, Lcom/yingyonghui/market/ActivitySplash;->e:Z

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/MarketApplication;->a(Z)V

    iget-boolean v1, p0, Lcom/yingyonghui/market/ActivitySplash;->f:Z

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/MarketApplication;->b(Z)V

    iget-object v1, p0, Lcom/yingyonghui/market/ActivitySplash;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/MarketApplication;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yingyonghui/market/ActivitySplash;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/MarketApplication;->b(Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivitySplash;->f:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivitySplash;->showDialog(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/yingyonghui/market/ActivityMain;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.yingyonghui.market.action_no_update_response"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivitySplash;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivitySplash;->finish()V

    goto :goto_0
.end method

.method static synthetic l(Lcom/yingyonghui/market/ActivitySplash;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yingyonghui/market/ActivitySplash;->m:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/os/Message;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x2

    .line 176
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/yingyonghui/market/online/b;

    .line 177
    iget v1, v0, Lcom/yingyonghui/market/online/b;->c:I

    packed-switch v1, :pswitch_data_0

    .line 212
    :goto_0
    return-void

    .line 180
    :pswitch_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/yingyonghui/market/ActivitySplash;->k:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/yingyonghui/market/ActivitySplash;->l:J

    .line 182
    new-instance v1, Lorg/json/JSONObject;

    iget-object v0, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 184
    const-string v0, "selfUpdateMessage"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivitySplash;->d:Ljava/lang/String;

    .line 185
    const-string v0, "selfUpdate"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yingyonghui/market/ActivitySplash;->e:Z

    .line 186
    const-string v0, "selfUpdateMust"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yingyonghui/market/ActivitySplash;->f:Z

    .line 187
    const-string v0, "selfUpdateUrl"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivitySplash;->g:Ljava/lang/String;

    .line 188
    const-string v0, "app_trace_log_enable"

    const-string v2, "applogback"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {p0, v0, v2}, Lcom/yingyonghui/market/util/l;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 191
    const-string v0, "abtest_tag_002"

    const-string v2, "ab002"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/yingyonghui/market/util/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v0, "ab_test_activity"

    const-string v2, "abactivity"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/yingyonghui/market/util/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yingyonghui/market/ActivitySplash;->j:Z

    .line 202
    iget-object v0, p0, Lcom/yingyonghui/market/ActivitySplash;->q:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/yingyonghui/market/ActivitySplash;->q:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/ActivitySplash;->q:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 209
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivitySplash;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/yingyonghui/market/ActivitySplash;->l:J

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;J)V

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x400

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 100
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09007f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090171

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090172

    new-instance v4, Lcom/yingyonghui/market/am;

    invoke-direct {v4, p0}, Lcom/yingyonghui/market/am;-><init>(Lcom/yingyonghui/market/ActivitySplash;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090080

    new-instance v4, Lcom/yingyonghui/market/al;

    invoke-direct {v4, p0}, Lcom/yingyonghui/market/al;-><init>(Lcom/yingyonghui/market/ActivitySplash;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090173

    new-instance v4, Lcom/yingyonghui/market/at;

    invoke-direct {v4, p0}, Lcom/yingyonghui/market/at;-><init>(Lcom/yingyonghui/market/ActivitySplash;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/yingyonghui/market/ActivitySplash;->m:Landroid/app/AlertDialog;

    .line 108
    invoke-static {p0}, Lcom/a/a/c;->c(Landroid/content/Context;)V

    .line 109
    invoke-static {p0}, Lcom/a/a/c;->d(Landroid/content/Context;)V

    .line 112
    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivitySplash;->requestWindowFeature(I)Z

    .line 113
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivitySplash;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setFormat(I)V

    .line 114
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivitySplash;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 117
    const v2, 0x7f03004b

    invoke-virtual {p0, v2}, Lcom/yingyonghui/market/ActivitySplash;->setContentView(I)V

    .line 119
    new-instance v2, Lcom/yingyonghui/market/util/z;

    invoke-direct {v2, p0}, Lcom/yingyonghui/market/util/z;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/yingyonghui/market/ActivitySplash;->c:Lcom/yingyonghui/market/util/z;

    .line 121
    new-instance v2, Lcom/yingyonghui/market/av;

    invoke-direct {v2, p0}, Lcom/yingyonghui/market/av;-><init>(Lcom/yingyonghui/market/ActivitySplash;)V

    new-array v3, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/yingyonghui/market/av;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 147
    const-string v2, "appchina_versioncode"

    invoke-static {p0, v2}, Lcom/yingyonghui/market/util/u;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivitySplash;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/yingyonghui/market/util/GlobalUtil;->e(Landroid/content/Context;)I

    move-result v3

    if-nez v2, :cond_1

    const-string v2, "appchina_versioncode"

    invoke-static {p0, v2, v3}, Lcom/yingyonghui/market/util/u;->a(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v2, "first_started"

    invoke-static {p0, v2, v0}, Lcom/yingyonghui/market/util/u;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yingyonghui/market/util/y;->a()V

    .line 150
    :cond_0
    new-instance v0, Lcom/yingyonghui/market/an;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/an;-><init>(Lcom/yingyonghui/market/ActivitySplash;)V

    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/yingyonghui/market/an;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 153
    new-instance v0, Lcom/yingyonghui/market/ao;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/ao;-><init>(Lcom/yingyonghui/market/ActivitySplash;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/ao;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 156
    iget-object v0, p0, Lcom/yingyonghui/market/ActivitySplash;->q:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 157
    return-void

    .line 147
    :cond_1
    if-ge v2, v3, :cond_2

    const-string v2, "appchina_versioncode"

    invoke-static {p0, v2, v3}, Lcom/yingyonghui/market/util/u;->a(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v2, "first_started"

    invoke-static {p0, v2, v0}, Lcom/yingyonghui/market/util/u;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter

    .prologue
    .line 360
    const/4 v0, 0x0

    .line 361
    iget-object v1, p0, Lcom/yingyonghui/market/ActivitySplash;->c:Lcom/yingyonghui/market/util/z;

    if-eqz v1, :cond_0

    .line 362
    iget-object v0, p0, Lcom/yingyonghui/market/ActivitySplash;->c:Lcom/yingyonghui/market/util/z;

    invoke-virtual {v0, p1}, Lcom/yingyonghui/market/util/z;->a(I)Landroid/app/Dialog;

    move-result-object v0

    .line 364
    :cond_0
    if-nez v0, :cond_1

    .line 365
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 367
    :cond_1
    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 352
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 353
    const/4 v0, 0x1

    .line 355
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 341
    invoke-super {p0}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onPause()V

    .line 342
    invoke-static {p0}, Lcom/a/a/c;->a(Landroid/content/Context;)V

    .line 343
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 372
    invoke-super {p0, p1, p2}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 373
    iget-object v0, p0, Lcom/yingyonghui/market/ActivitySplash;->c:Lcom/yingyonghui/market/util/z;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/yingyonghui/market/ActivitySplash;->c:Lcom/yingyonghui/market/util/z;

    invoke-virtual {v0, p1, p2}, Lcom/yingyonghui/market/util/z;->a(ILandroid/app/Dialog;)V

    .line 376
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 331
    invoke-super {p0}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onResume()V

    .line 332
    invoke-static {p0}, Lcom/a/a/c;->b(Landroid/content/Context;)V

    .line 334
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivitySplash;->i:Z

    if-eqz v0, :cond_0

    .line 335
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivitySplash;->b()V

    .line 337
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x0

    return v0
.end method
