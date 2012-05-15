.class public final enum Lcom/feedback/b/e;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/feedback/b/e;

.field public static final enum b:Lcom/feedback/b/e;

.field public static final enum c:Lcom/feedback/b/e;

.field private static final synthetic d:[Lcom/feedback/b/e;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/feedback/b/e;

    const-string v1, "Starting"

    invoke-direct {v0, v1, v2}, Lcom/feedback/b/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feedback/b/e;->a:Lcom/feedback/b/e;

    new-instance v0, Lcom/feedback/b/e;

    const-string v1, "UserReply"

    invoke-direct {v0, v1, v3}, Lcom/feedback/b/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feedback/b/e;->b:Lcom/feedback/b/e;

    new-instance v0, Lcom/feedback/b/e;

    const-string v1, "DevReply"

    invoke-direct {v0, v1, v4}, Lcom/feedback/b/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feedback/b/e;->c:Lcom/feedback/b/e;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/feedback/b/e;

    sget-object v1, Lcom/feedback/b/e;->a:Lcom/feedback/b/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/feedback/b/e;->b:Lcom/feedback/b/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/feedback/b/e;->c:Lcom/feedback/b/e;

    aput-object v1, v0, v4

    sput-object v0, Lcom/feedback/b/e;->d:[Lcom/feedback/b/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/feedback/b/e;
    .locals 1

    const-class v0, Lcom/feedback/b/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/feedback/b/e;

    return-object v0
.end method

.method public static values()[Lcom/feedback/b/e;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/feedback/b/e;->d:[Lcom/feedback/b/e;

    array-length v1, v0

    new-array v2, v1, [Lcom/feedback/b/e;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
