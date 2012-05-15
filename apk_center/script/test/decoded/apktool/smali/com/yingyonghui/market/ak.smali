.class final Lcom/yingyonghui/market/ak;
.super Landroid/os/AsyncTask;
.source "ActivityMain.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityMain;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityMain;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/yingyonghui/market/ak;->a:Lcom/yingyonghui/market/ActivityMain;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/yingyonghui/market/ak;->a:Lcom/yingyonghui/market/ActivityMain;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityMain;->a(Lcom/yingyonghui/market/ActivityMain;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 219
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/yingyonghui/market/ak;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
