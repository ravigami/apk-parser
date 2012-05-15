.class public final Lcom/yingyonghui/market/util/n;
.super Ljava/lang/Object;
.source "PromotionUtil.java"


# static fields
.field private static a:Lcom/yingyonghui/market/util/n;


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Ljava/util/LinkedList;

.field private d:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/yingyonghui/market/util/n;->b:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/util/n;->d:Landroid/content/SharedPreferences;

    .line 31
    invoke-direct {p0}, Lcom/yingyonghui/market/util/n;->a()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/util/n;->c:Ljava/util/LinkedList;

    .line 32
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/yingyonghui/market/util/n;
    .locals 1
    .parameter

    .prologue
    .line 35
    sget-object v0, Lcom/yingyonghui/market/util/n;->a:Lcom/yingyonghui/market/util/n;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/yingyonghui/market/util/n;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/util/n;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yingyonghui/market/util/n;->a:Lcom/yingyonghui/market/util/n;

    .line 38
    :cond_0
    sget-object v0, Lcom/yingyonghui/market/util/n;->a:Lcom/yingyonghui/market/util/n;

    return-object v0
.end method

.method private a()Ljava/util/LinkedList;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lcom/yingyonghui/market/util/n;->d:Landroid/content/SharedPreferences;

    const-string v1, "promotion_list"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 105
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 120
    :cond_0
    return-object v0

    .line 109
    :cond_1
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 111
    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    .line 112
    new-instance v5, Lcom/yingyonghui/market/util/j;

    invoke-direct {v5}, Lcom/yingyonghui/market/util/j;-><init>()V

    .line 113
    aget-object v6, v3, v1

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 114
    aget-object v7, v6, v2

    iput-object v7, v5, Lcom/yingyonghui/market/util/j;->a:Ljava/lang/String;

    .line 115
    const/4 v7, 0x1

    aget-object v7, v6, v7

    iput-object v7, v5, Lcom/yingyonghui/market/util/j;->c:Ljava/lang/String;

    .line 116
    const/4 v7, 0x2

    aget-object v6, v6, v7

    iput-object v6, v5, Lcom/yingyonghui/market/util/j;->b:Ljava/lang/String;

    .line 117
    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/yingyonghui/market/util/j;
    .locals 3
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yingyonghui/market/util/n;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/util/j;

    .line 63
    iget-object v2, v0, Lcom/yingyonghui/market/util/j;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 42
    new-instance v1, Lcom/yingyonghui/market/util/j;

    invoke-direct {v1}, Lcom/yingyonghui/market/util/j;-><init>()V

    .line 43
    iput-object p1, v1, Lcom/yingyonghui/market/util/j;->a:Ljava/lang/String;

    .line 44
    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    iput-object p2, v1, Lcom/yingyonghui/market/util/j;->b:Ljava/lang/String;

    .line 45
    iput-object p3, v1, Lcom/yingyonghui/market/util/j;->c:Ljava/lang/String;

    .line 47
    iget-object v2, p0, Lcom/yingyonghui/market/util/n;->c:Ljava/util/LinkedList;

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 48
    iget-object v1, p0, Lcom/yingyonghui/market/util/n;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x3c

    if-le v1, v2, :cond_1

    .line 50
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/yingyonghui/market/util/n;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x23

    if-le v1, v2, :cond_1

    .line 51
    iget-object v1, p0, Lcom/yingyonghui/market/util/n;->c:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/yingyonghui/market/util/n;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/yingyonghui/market/util/n;->c:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/yingyonghui/market/util/n;->d:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const-string v0, "promotion_list"

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 58
    return-void

    .line 57
    :cond_3
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/util/j;

    if-lez v1, :cond_4

    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v5, v0, Lcom/yingyonghui/market/util/j;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, v0, Lcom/yingyonghui/market/util/j;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v0, v0, Lcom/yingyonghui/market/util/j;->b:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    const-string v0, "promotion_list"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method
