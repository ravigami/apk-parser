.class public Lcom/yingyonghui/market/model/DialogExPreference;
.super Landroid/preference/DialogPreference;
.source "DialogExPreference.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput-object p1, p0, Lcom/yingyonghui/market/model/DialogExPreference;->a:Landroid/content/Context;

    .line 21
    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/market/model/DialogExPreference;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/yingyonghui/market/model/DialogExPreference;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 25
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 27
    :try_start_0
    new-instance v0, Lcom/yingyonghui/market/model/i;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/model/i;-><init>(Lcom/yingyonghui/market/model/DialogExPreference;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/model/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
