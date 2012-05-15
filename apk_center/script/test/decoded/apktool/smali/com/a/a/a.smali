.class public final Lcom/a/a/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:Z

.field public static c:Z

.field public static d:Z

.field public static final e:Ljava/lang/Object;

.field public static final f:[Ljava/lang/String;

.field public static final g:[Ljava/lang/String;

.field public static h:Z

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/a/a/a;->a:Z

    sput-boolean v3, Lcom/a/a/a;->b:Z

    sput-boolean v2, Lcom/a/a/a;->c:Z

    sput-boolean v2, Lcom/a/a/a;->d:Z

    const-string v0, "last_send_time"

    sput-object v0, Lcom/a/a/a;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/a/a/a;->e:Ljava/lang/Object;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "http://www.umeng.com/app_logs"

    aput-object v1, v0, v3

    const-string v1, "http://www.umeng.co/app_logs"

    aput-object v1, v0, v2

    sput-object v0, Lcom/a/a/a;->f:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "http://www.umeng.com/api/check_app_update"

    aput-object v1, v0, v3

    const-string v1, "http://www.umeng.co/api/check_app_update"

    aput-object v1, v0, v2

    sput-object v0, Lcom/a/a/a;->g:[Ljava/lang/String;

    sput-boolean v2, Lcom/a/a/a;->h:Z

    const-string v0, "UmengLog"

    sput-object v0, Lcom/a/a/a;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
