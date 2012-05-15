.class final Lcom/yingyonghui/market/cp;
.super Ljava/lang/Object;
.source "AbsActivityAppListManager.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/yingyonghui/market/AbsActivityAppListManager;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/AbsActivityAppListManager;)V
    .locals 1
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/yingyonghui/market/cp;->b:Lcom/yingyonghui/market/AbsActivityAppListManager;

    const/4 v0, 0x1

    iput v0, p0, Lcom/yingyonghui/market/cp;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 178
    .line 180
    instance-of v1, p1, Lcom/yingyonghui/market/model/q;

    if-eqz v1, :cond_0

    .line 181
    check-cast p1, Lcom/yingyonghui/market/model/q;

    .line 182
    check-cast p2, Lcom/yingyonghui/market/model/q;

    .line 183
    iget v2, p1, Lcom/yingyonghui/market/model/q;->o:I

    .line 184
    iget v1, p2, Lcom/yingyonghui/market/model/q;->o:I

    .line 196
    :goto_0
    if-ne v2, v1, :cond_2

    :goto_1
    iget v1, p0, Lcom/yingyonghui/market/cp;->a:I

    mul-int/2addr v0, v1

    return v0

    .line 185
    :cond_0
    instance-of v1, p1, Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1

    .line 186
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .line 187
    check-cast p2, Landroid/content/pm/ApplicationInfo;

    .line 188
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v2, v1

    .line 189
    new-instance v1, Ljava/io/File;

    iget-object v3, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v1, v3

    .line 190
    goto :goto_0

    :cond_1
    instance-of v1, p1, Ljava/io/File;

    if-eqz v1, :cond_4

    .line 191
    check-cast p1, Ljava/io/File;

    .line 192
    check-cast p2, Ljava/io/File;

    .line 193
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v2, v1

    .line 194
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v1, v3

    goto :goto_0

    .line 196
    :cond_2
    if-ge v2, v1, :cond_3

    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    move v1, v0

    move v2, v0

    goto :goto_0
.end method
