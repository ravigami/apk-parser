.class final Lcom/yingyonghui/market/log/p;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AnalyticsProvider.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/log/AnalyticsProvider;


# direct methods
.method public constructor <init>(Lcom/yingyonghui/market/log/AnalyticsProvider;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/yingyonghui/market/log/p;->a:Lcom/yingyonghui/market/log/AnalyticsProvider;

    .line 64
    const-string v0, "analytics.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 65
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    invoke-static {p1}, Lcom/yingyonghui/market/log/AnalyticsProvider;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 76
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upgrading database from version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", which will destroy all old data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    invoke-static {p1}, Lcom/yingyonghui/market/log/AnalyticsProvider;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 83
    invoke-static {p1}, Lcom/yingyonghui/market/log/AnalyticsProvider;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 84
    return-void
.end method
