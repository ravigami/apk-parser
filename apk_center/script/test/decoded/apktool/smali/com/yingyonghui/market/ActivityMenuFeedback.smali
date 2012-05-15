.class public Lcom/yingyonghui/market/ActivityMenuFeedback;
.super Landroid/app/Activity;
.source "ActivityMenuFeedback.java"


# static fields
.field private static i:Ljava/lang/String;


# instance fields
.field protected a:Landroid/os/Handler;

.field protected b:Lcom/yingyonghui/market/online/e;

.field c:Landroid/widget/EditText;

.field d:Landroid/widget/EditText;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field private final g:I

.field private h:J

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/yingyonghui/market/ActivityMenuFeedback;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    const/16 v0, 0x66

    iput v0, p0, Lcom/yingyonghui/market/ActivityMenuFeedback;->g:I

    .line 21
    iput-object v1, p0, Lcom/yingyonghui/market/ActivityMenuFeedback;->a:Landroid/os/Handler;

    .line 32
    iput-object v1, p0, Lcom/yingyonghui/market/ActivityMenuFeedback;->e:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/yingyonghui/market/ActivityMenuFeedback;->f:Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/yingyonghui/market/dl;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/dl;-><init>(Lcom/yingyonghui/market/ActivityMenuFeedback;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityMenuFeedback;->l:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityMenuFeedback;)J
    .locals 2
    .parameter

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/yingyonghui/market/ActivityMenuFeedback;->h:J

    return-wide v0
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityMenuFeedback;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/yingyonghui/market/ActivityMenuFeedback;->h:J

    return-wide p1
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter

    .prologue
    .line 14
    sput-object p0, Lcom/yingyonghui/market/ActivityMenuFeedback;->i:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityMenuFeedback;->setContentView(I)V

    .line 42
    invoke-static {p0}, Lcom/yingyonghui/market/online/e;->a(Landroid/content/Context;)Lcom/yingyonghui/market/online/e;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityMenuFeedback;->b:Lcom/yingyonghui/market/online/e;

    .line 44
    const v0, 0x7f0b00b1

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityMenuFeedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityMenuFeedback;->c:Landroid/widget/EditText;

    const v0, 0x7f0b00b2

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityMenuFeedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityMenuFeedback;->d:Landroid/widget/EditText;

    const v0, 0x7f0b00b3

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityMenuFeedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityMenuFeedback;->j:Landroid/widget/Button;

    const v0, 0x7f0b00b4

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityMenuFeedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityMenuFeedback;->k:Landroid/widget/Button;

    .line 45
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityMenuFeedback;->j:Landroid/widget/Button;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityMenuFeedback;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityMenuFeedback;->k:Landroid/widget/Button;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityMenuFeedback;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method
