.class public final Lcom/yingyonghui/market/util/m;
.super Ljava/lang/Object;
.source "NumberUtil.java"


# static fields
.field private static a:Ljava/lang/Long;

.field private static b:Ljava/lang/Long;

.field private static c:Ljava/lang/Long;

.field private static d:Ljava/lang/Integer;

.field private static e:Ljava/lang/Integer;

.field private static f:Ljava/lang/Integer;

.field private static g:Ljava/lang/Short;

.field private static h:Ljava/lang/Short;

.field private static i:Ljava/lang/Short;

.field private static j:Ljava/lang/Byte;

.field private static k:Ljava/lang/Byte;

.field private static l:Ljava/lang/Byte;

.field private static m:Ljava/lang/Double;

.field private static n:Ljava/lang/Double;

.field private static o:Ljava/lang/Double;

.field private static p:Ljava/lang/Float;

.field private static q:Ljava/lang/Float;

.field private static r:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 25
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lcom/yingyonghui/market/util/m;->a:Ljava/lang/Long;

    .line 27
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lcom/yingyonghui/market/util/m;->b:Ljava/lang/Long;

    .line 29
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lcom/yingyonghui/market/util/m;->c:Ljava/lang/Long;

    .line 31
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/yingyonghui/market/util/m;->d:Ljava/lang/Integer;

    .line 33
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/yingyonghui/market/util/m;->e:Ljava/lang/Integer;

    .line 35
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/yingyonghui/market/util/m;->f:Ljava/lang/Integer;

    .line 37
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, v4}, Ljava/lang/Short;-><init>(S)V

    sput-object v0, Lcom/yingyonghui/market/util/m;->g:Ljava/lang/Short;

    .line 39
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, v5}, Ljava/lang/Short;-><init>(S)V

    sput-object v0, Lcom/yingyonghui/market/util/m;->h:Ljava/lang/Short;

    .line 41
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, v3}, Ljava/lang/Short;-><init>(S)V

    sput-object v0, Lcom/yingyonghui/market/util/m;->i:Ljava/lang/Short;

    .line 43
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v4}, Ljava/lang/Byte;-><init>(B)V

    sput-object v0, Lcom/yingyonghui/market/util/m;->j:Ljava/lang/Byte;

    .line 45
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v5}, Ljava/lang/Byte;-><init>(B)V

    sput-object v0, Lcom/yingyonghui/market/util/m;->k:Ljava/lang/Byte;

    .line 47
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v3}, Ljava/lang/Byte;-><init>(B)V

    sput-object v0, Lcom/yingyonghui/market/util/m;->l:Ljava/lang/Byte;

    .line 49
    new-instance v0, Ljava/lang/Double;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lcom/yingyonghui/market/util/m;->m:Ljava/lang/Double;

    .line 51
    new-instance v0, Ljava/lang/Double;

    const-wide/high16 v1, 0x3ff0

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lcom/yingyonghui/market/util/m;->n:Ljava/lang/Double;

    .line 53
    new-instance v0, Ljava/lang/Double;

    const-wide/high16 v1, -0x4010

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lcom/yingyonghui/market/util/m;->o:Ljava/lang/Double;

    .line 55
    new-instance v0, Ljava/lang/Float;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Lcom/yingyonghui/market/util/m;->p:Ljava/lang/Float;

    .line 57
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Lcom/yingyonghui/market/util/m;->q:Ljava/lang/Float;

    .line 59
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, -0x4080

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Lcom/yingyonghui/market/util/m;->r:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 90
    invoke-static {p0}, Lcom/yingyonghui/market/util/m;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 140
    invoke-static {p0}, Lcom/yingyonghui/market/util/m;->d(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static c(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 112
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 116
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)J
    .locals 3
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 161
    if-nez p0, :cond_0

    .line 167
    :goto_0
    return-wide v0

    .line 165
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v2

    goto :goto_0
.end method
