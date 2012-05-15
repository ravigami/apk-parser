.class public final Lcom/yingyonghui/market/provider/g;
.super Ljava/lang/Object;
.source "Accounts.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static a:Lcom/yingyonghui/market/provider/g;

.field private static final d:Ljava/util/HashMap;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/content/SharedPreferences;

.field private e:Ljava/lang/String;

.field private f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    sput-object v0, Lcom/yingyonghui/market/provider/g;->d:Ljava/util/HashMap;

    const-string v1, "user_contactInfo"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/yingyonghui/market/provider/h;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/provider/h;-><init>(Lcom/yingyonghui/market/provider/g;)V

    iput-object v0, p0, Lcom/yingyonghui/market/provider/g;->f:Landroid/os/Handler;

    .line 41
    iput-object p1, p0, Lcom/yingyonghui/market/provider/g;->b:Landroid/content/Context;

    .line 42
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/provider/g;->c:Landroid/content/SharedPreferences;

    .line 43
    iget-object v0, p0, Lcom/yingyonghui/market/provider/g;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/yingyonghui/market/provider/g;->c:Landroid/content/SharedPreferences;

    const-string v1, "user_contactInfo"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/provider/g;->e:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/yingyonghui/market/provider/g;
    .locals 1
    .parameter

    .prologue
    .line 47
    sget-object v0, Lcom/yingyonghui/market/provider/g;->a:Lcom/yingyonghui/market/provider/g;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/yingyonghui/market/provider/g;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/provider/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yingyonghui/market/provider/g;->a:Lcom/yingyonghui/market/provider/g;

    .line 50
    :cond_0
    sget-object v0, Lcom/yingyonghui/market/provider/g;->a:Lcom/yingyonghui/market/provider/g;

    return-object v0
.end method

.method static synthetic a(Lcom/yingyonghui/market/provider/g;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/market/provider/g;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_contactInfo"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yingyonghui/market/provider/g;->f:Landroid/os/Handler;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yingyonghui/market/provider/g;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 80
    sget-object v0, Lcom/yingyonghui/market/provider/g;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 81
    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcom/yingyonghui/market/provider/g;->c:Landroid/content/SharedPreferences;

    const-string v1, "user_contactInfo"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/provider/g;->e:Ljava/lang/String;

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
