.class final enum Lcom/yingyonghui/market/widget/f;
.super Ljava/lang/Enum;
.source "AppSecurityPermissions.java"


# static fields
.field public static final enum a:Lcom/yingyonghui/market/widget/f;

.field public static final enum b:Lcom/yingyonghui/market/widget/f;

.field public static final enum c:Lcom/yingyonghui/market/widget/f;

.field public static final enum d:Lcom/yingyonghui/market/widget/f;

.field private static final synthetic e:[Lcom/yingyonghui/market/widget/f;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/yingyonghui/market/widget/f;

    const-string v1, "NO_PERMS"

    invoke-direct {v0, v1, v2}, Lcom/yingyonghui/market/widget/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yingyonghui/market/widget/f;->a:Lcom/yingyonghui/market/widget/f;

    new-instance v0, Lcom/yingyonghui/market/widget/f;

    const-string v1, "DANGEROUS_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/yingyonghui/market/widget/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yingyonghui/market/widget/f;->b:Lcom/yingyonghui/market/widget/f;

    new-instance v0, Lcom/yingyonghui/market/widget/f;

    const-string v1, "NORMAL_ONLY"

    invoke-direct {v0, v1, v4}, Lcom/yingyonghui/market/widget/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yingyonghui/market/widget/f;->c:Lcom/yingyonghui/market/widget/f;

    new-instance v0, Lcom/yingyonghui/market/widget/f;

    const-string v1, "BOTH"

    invoke-direct {v0, v1, v5}, Lcom/yingyonghui/market/widget/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yingyonghui/market/widget/f;->d:Lcom/yingyonghui/market/widget/f;

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yingyonghui/market/widget/f;

    sget-object v1, Lcom/yingyonghui/market/widget/f;->a:Lcom/yingyonghui/market/widget/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yingyonghui/market/widget/f;->b:Lcom/yingyonghui/market/widget/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yingyonghui/market/widget/f;->c:Lcom/yingyonghui/market/widget/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yingyonghui/market/widget/f;->d:Lcom/yingyonghui/market/widget/f;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yingyonghui/market/widget/f;->e:[Lcom/yingyonghui/market/widget/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yingyonghui/market/widget/f;
    .locals 1
    .parameter

    .prologue
    .line 33
    const-class v0, Lcom/yingyonghui/market/widget/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/widget/f;

    return-object v0
.end method

.method public static values()[Lcom/yingyonghui/market/widget/f;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/yingyonghui/market/widget/f;->e:[Lcom/yingyonghui/market/widget/f;

    invoke-virtual {v0}, [Lcom/yingyonghui/market/widget/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yingyonghui/market/widget/f;

    return-object v0
.end method
